import SwiftUI

struct MainView: View {
    @State private var flagIndex = 0
    
    let duration = 1.5
    let width: CGFloat = 2
    let buttonTitle = "Hit me"
    
    private let viewModel = MainViewModel()
    
    var body: some View {
        ScrollViewReader { flag in
            Spacer(minLength: UISize.size8)
            VStack {
                ScrollView(.vertical,
                           showsIndicators: false) {
                    ForEach(0 ..< viewModel.flags.count,
                            id: \.self) { index in
                        Text(viewModel.flags[index])
                            .font(.system(size: UISize.size72))
                    }
                }
            }
            .frame(width: UISize.size96,
                   height: UISize.size96)
            .border(Color.black,
                    width: width)
            Spacer(minLength: UISize.size8)
            Button(buttonTitle) {
                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                    withAnimation {
                        flagIndex = viewModel.nextFlag(flagIndex: flagIndex)
                        if flagIndex == viewModel.flags.endIndex {
                            flagIndex = viewModel.flags.startIndex
                        }
                        flag.scrollTo(flagIndex,
                                      anchor: .center)
                    }
                }
            }
            .buttonStyle(.customStyle)
        }
    }
}

#Preview {
    MainView()
}
