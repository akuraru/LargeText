import SwiftUI

struct TextScreen: View {
    let str: () async -> String
    @State var text: String = ""

    var body: some View {
        ScrollView {
            Text(text)
        }
        .task {
            text = await str()
        }
    }
}
