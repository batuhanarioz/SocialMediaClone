import SwiftUI

@main
struct SocialMediaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                WelcomeView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
