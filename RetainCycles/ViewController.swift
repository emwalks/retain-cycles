import UIKit

class ViewController: UIViewController {
    let buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.spacing = 40
        return stackView
    }()
    
    lazy var presentCaseOneButton: UIButton = {
        let button = UIButton(configuration: .filled(), primaryAction: UIAction(handler: { _ in
            let presenter = CaseOnePresenter(presentingViewController: self)
            let vc = CaseOneViewController(delegate: presenter)
            presenter.present(vc)
        }))
        
        button.setTitle("Present Case One", for: .normal)
        return button
    }()
    
    lazy var presentCaseTwoButton: UIButton = {
        let button = UIButton(configuration: .filled(), primaryAction: UIAction(handler: { _ in
            self.present(CaseTwoViewController(), animated: true)
        }))
        
        button.setTitle("Present Case Two", for: .normal)
        return button
    }()
    
    lazy var presentCaseThreeButton: UIButton = {
        let button = UIButton(configuration: .filled(), primaryAction: UIAction(handler: { _ in
            self.present(CaseThreeViewController(), animated: true)
        }))
        
        button.setTitle("Present Case Three", for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout()
    }
    
    private func layout() {
        view.addSubview(buttonsStackView)
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        [presentCaseOneButton, presentCaseTwoButton, presentCaseThreeButton].forEach { buttonsStackView.addArrangedSubview($0) }
        
        NSLayoutConstraint.activate([
            buttonsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

