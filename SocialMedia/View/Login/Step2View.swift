import SwiftUI

struct Step2View: View {

    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtEmail: String = ""
    
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
                
                Text("What's your email?")
                    .font(.customfont(.bold, fontSize: 25))
                
                RoundedTextField(placeholder: "yourname@reel.com", txt: $txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, 15)

                
                NavigationLink {
                    Step3View()
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
    Step2View()
}
