import SwiftUI

struct Step3View: View {

    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtPassword: String = ""
    @State var txtReTypePassword: String = ""
    
    @State var isShowPass: Bool = false
    @State var isShowRePass: Bool = false
    
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
                
                Text("Create Password")
                    .font(.customfont(.bold, fontSize: 25))
                
                RoundedSecureField(placeholder: "Password", txt: $txtPassword, isShowPassword: isShowPass)
                
                RoundedSecureField(placeholder: "Re-Type Password", txt: $txtReTypePassword, isShowPassword: isShowRePass)
                    .padding(.bottom, 15)

                
                NavigationLink {
                    Step4View()
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
    Step3View()
}
