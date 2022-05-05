import UIKit

class CaseTwoViewController: UIViewController {
    let presenter: CaseTwoPresenter
    let label = UILabel()
    
    init(presenter: CaseTwoPresenter) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
        
        presenter.handler = { [weak self] result in
            switch result {
            case let .success(successString): self?.label.text = successString
            default: self?.label.text = "Something went wrong!"
            }
        }
        
        view.backgroundColor = .white
        
        layout()
        
        presenter.fetch()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
