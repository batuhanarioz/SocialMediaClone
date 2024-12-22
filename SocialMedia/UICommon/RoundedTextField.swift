import SwiftUI

struct RoundedTextField: View {
    
    @State var placeholder: String = ""
    @Binding var txt: String
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        
        TextField(placeholder, text: $txt)
            .keyboardType(.default)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .frame(height: 50)
            .padding(.horizontal, 20)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.secondaryText, lineWidth: 2))
            .cornerRadius(25)    }
}

struct RoundedTextField_Previews: PreviewProvider {
    @State static var txt = ""
    static var previews: some View {
        RoundedTextField(txt: $txt)
    }
}



struct RoundedSecureField: View {
    
    @State var placeholder: String = ""
    @Binding var txt: String
    @State var isShowPassword: Bool
    
    var body: some View {
        
        HStack {
            if(isShowPassword) {
                TextField(placeholder, text: $txt)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .frame(maxWidth: .infinity, minHeight: 50, alignment: .leading)

            } else {
                SecureField(placeholder, text: $txt)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity, minHeight: 50, alignment: .leading)

            }
            
            Button {
                isShowPassword.toggle()
            } label: {
                Image("show")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
            }
            
        }
        .frame(height: 50)
        .padding(.horizontal, 20)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.secondaryText, lineWidth: 2))
        .cornerRadius(25)

    }
}

struct RoundedSecureField_Previews: PreviewProvider {
    @State static var txt = ""
    @State static var isShow = false
    static var previews: some View {
        RoundedSecureField(txt: $txt, isShowPassword: isShow)
    }
}
