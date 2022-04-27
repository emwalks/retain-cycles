class CaseTwoPresenter {
    var handler: ((Result<String, Error>) -> Void)?
    
    func fetch() {
        handler?(.success("Hello"))
    }
}
