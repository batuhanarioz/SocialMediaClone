import SwiftUI

struct Step1View: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtFirstName: String = ""
    @State var txtLastName: String = ""
    
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
                
                Text("What's your name?")
                    .font(.customfont(.bold, fontSize: 25))
                
                RoundedTextField(placeholder: "First Name", txt: $txtFirstName, keyboardType: .default)
                
                RoundedTextField(placeholder: "Last Name", txt: $txtLastName, keyboardType: .default)
                    .padding(.bottom, 15)
                
                NavigationLink {
                    Step2View()
                } label: {
                        
                        Text("Next")
                            .font(.customfont(.regular, fontSize: 15))
                            .foregroundColor(Color.primaryTextW)
                    
                    }
                .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
                .background(Color.primaryApp)
                .cornerRadius(25)

                
                Spacer()

                
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
    Step1View()
}
