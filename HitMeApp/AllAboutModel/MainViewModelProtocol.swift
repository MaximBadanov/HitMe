protocol MainViewModelProtocol {
    var flags: [String]  { get }
    func nextFlag(flagIndex: Int) -> Int
}
