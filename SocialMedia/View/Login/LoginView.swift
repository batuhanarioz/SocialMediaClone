import SwiftUI

struct LoginView: View {

    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtEmail: String = ""
    @State var txtPassword: String = ""
    
    @State var isShowPass: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 15) {
                
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer()
                    
                }
                .padding(.top, .topInsets + 15)
                
                Spacer()
                
                Text("Login")
                    .font(.customfont(.bold, fontSize: 25))
                    .padding(.bottom, 15)
                
                RoundedTextField(placeholder: "Email", txt: $txtEmail, keyboardType: .emailAddress)
                
                RoundedSecureField(placeholder: "Password", txt: $txtPassword, isShowPassword: isShowPass)
                
                Button {
                    
                } label: {
                        
                        Text("Forgot password?")
                        .font(.customfont(.medium, fontSize: 15))
                        .foregroundColor(Color.primaryApp)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 15)

                
                Button {
                    
                } label: {
                        
                        Text("Login")
                            .font(.customfont(.regular, fontSize: 15))
                            .foregroundColor(Color.primaryTextW)
                    
                    }
                .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
                .background(Color.primaryApp)
                .cornerRadius(25)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .font(.customfont(.regular, fontSize: 15))
                        .foregroundColor(Color.primaryText)
                    
                    NavigationLink {
                        Step1View()
                    } label: {
                            
                            Text("Sign Up!")
                            .font(.customfont(.regular, fontSize: 15))
                            .foregroundColor(Color.primaryApp)
                        
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, .bottomInsets + 50)
                
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
    
}

#Preview {
    LoginView()
}
