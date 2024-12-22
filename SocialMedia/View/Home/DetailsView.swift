import SwiftUI

struct DetailsView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var imagesArr = ["d1", "d2", "d3", "d4", "d5", "d6", "d7", "d8", "d9", "d10", "d11", "d12"]
    
    @State var columns = [ GridItem( .flexible(), spacing: 8 ), GridItem( .flexible(), spacing: 8 ), GridItem( .flexible(), spacing: 8 ), ]
    
    var body: some View {

        ZStack(alignment: .top) {
            
            ScrollView {
                ZStack(alignment: .top) {
                    Image("user_profile")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -120)
                    
                    VStack {
                        Spacer()
                            .frame(height: .screenWidth)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("140")
                                    .font(.customfont(.bold, fontSize: 17))
                                    .foregroundColor(.white)
                                
                                Text("posts")
                                    .font(.customfont(.bold, fontSize: 17))
                                    .foregroundColor(.primaryApp)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("4,040")
                                    .font(.customfont(.bold, fontSize: 17))
                                    .foregroundColor(.white)
                                
                                Text("follower")
                                    .font(.customfont(.bold, fontSize: 17))
                                    .foregroundColor(.primaryApp)
                            }

                            
                            VStack(alignment: .leading) {
                                Text("404")
                                    .font(.customfont(.bold, fontSize: 17))
                                    .foregroundColor(.white)
                                
                                Text("following")
                                    .font(.customfont(.bold, fontSize: 17))
                                    .foregroundColor(.primaryApp)
                            }
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Follow")
                                    .font(.customfont(.bold, fontSize: 15))
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            .background(Color.primaryApp)
                            .cornerRadius(15)

                        }
                        .padding(.horizontal, 20)
                        
                        
                        VStack {
                            
                            Text("Batuhan Arıöz")
                                .font(.customfont(.bold, fontSize: 15))
                                .foregroundColor(.primaryText)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            HStack {
                                Text("iOS Developer")
                                    .font(.customfont(.regular, fontSize: 15))
                                    .foregroundColor(.primaryText)
                                
                                Text("@batuhanarioz")
                                    .font(.customfont(.regular, fontSize: 15))
                                    .foregroundColor(.primaryText)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                            }
                            .padding(.bottom, 8)
                            
                            Text("As a passionate Junior iOS Developer, I am dedicated to crafting seamless and intuitive mobile applications.  With a solid foundation in Swift and Objective-C, I have honed my skills through both projects and real-world experience. Aspiring to leverage my skills and passion for iOS development to contribute to innovative mobile solutions that enhance user experiences.")
                                .font(.customfont(.regular, fontSize: 15))
                                .foregroundColor(.primaryText)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("#iosdev #mobileapp #swift")
                                .font(.customfont(.regular, fontSize: 15))
                                .foregroundColor(.primaryApp)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top, 15)

                            LazyVGrid(columns: columns, spacing: 8) {
                                
                                ForEach( 0..<imagesArr.count, id: \.self) { index in
                                    Image( imagesArr[index] )
                                        .resizable()
                                        .scaledToFill()
                                        .aspectRatio( 116 / 100 , contentMode: .fill)
                                        .cornerRadius(14)
                                        .clipped()
                                }
                            }
                            
                            
                        }
                        .padding(25)
                        .background(Rectangle()
                            .fill(Color.white)
                            .cornerRadius(30, corner: [ .topLeft, .topRight ])           .shadow(radius: 50, y: -50)
                        )
                        .frame(maxWidth: .infinity)
                        .padding(.top, 15)
                        
                    }
                }
                .padding(.top, .topInsets + 46)
                
            }
            
            VStack {
                ZStack {
                    HStack {
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Image("back")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                        
                        Text("Logo")
                            .font(.customfont(.bold, fontSize: 26))
                            .foregroundColor(.primaryText)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Button {
                            
                        } label: {
                            Image("user_profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 35, height: 35)
                                .cornerRadius(17.5)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, .topInsets)
                    .padding(.bottom, 15)
                }
                .background(Color.white)
                .shadow(radius: 2, y: 2)
                
                Spacer()
            }
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

#Preview {
    DetailsView()
}
