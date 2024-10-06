import SwiftUI

struct LargeTextScreen: View {
    let str: () async -> String
    @State var texts: [String] = []
    
    var body: some View {
        ScrollView {
            LargeText(texts: texts)
        }
        .task {
            texts = await str().split(separator: "\n").map(String.init)
        }
    }
}

struct LargeText: View {
    let texts: [String]
    var e: [(offset: Int, element: String)] {
        Array(texts.enumerated())
    }
    
    var body: some View {
        LazyVStack(alignment: .leading) {
            ForEach(e, id: \.offset) { p in
                Text(p.element)
            }
        }
    }
}
