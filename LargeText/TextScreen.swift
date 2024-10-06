import SwiftUI

struct TextScreen: View {
    let str: String

    var body: some View {
        ScrollView {
            Text(str)
        }
    }
}
