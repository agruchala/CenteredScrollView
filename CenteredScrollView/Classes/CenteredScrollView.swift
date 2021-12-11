import SwiftUI

public struct CenteredScrollView<Content: View>: View {
    var content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    public var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .center, content: content)
                    .frame(width: geometry.size.width)
                    .frame(minHeight: geometry.size.height)
            }
        }
    }
}

struct CenteredScrollView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CenteredScrollView(){
                Text("test")
            }
            CenteredScrollView(){
                ForEach(1..<20) {
                    Text("Test \($0)")
                        .font(.largeTitle)
                }
            }
        }
    }
}
