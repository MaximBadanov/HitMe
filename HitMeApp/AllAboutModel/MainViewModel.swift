class MainViewModel: MainViewModelProtocol {
    var flags = ["🇷🇺", "🇯🇵", "🇧🇷", "🇨🇦", "🇸🇮", "🇩🇪", "🇮🇹", "🇰🇷"]
    
    func nextFlag(flagIndex: Int) -> Int {
      flagIndex + 1
    }
}
