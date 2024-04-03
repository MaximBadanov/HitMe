import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding(.vertical, UISize.size16)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(UISize.size16)
            .padding(.horizontal, UISize.size32)
    }
}
