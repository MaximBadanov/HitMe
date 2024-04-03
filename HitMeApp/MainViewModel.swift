import SwiftUI

protocol MainViewModelProtocol {
    var flags: [String]  { get }
    func nextFlag(flagIndex: Int) -> Int
}

class MainViewModel: MainViewModelProtocol {
    var flags = ["🇷🇺", "🇯🇵", "🇧🇷", "🇨🇦", "🇸🇮", "🇩🇪", "🇮🇹", "🇰🇷"]
    
    func nextFlag(flagIndex: Int) -> Int {
      flagIndex + 1
    }
}
