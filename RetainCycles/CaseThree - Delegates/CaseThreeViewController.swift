import UIKit

class CaseThreeViewController: UIViewController {
    var picker: ImagePicker!
    let button: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Pick Photo", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        button.addAction(UIAction(handler: { _ in
            self.didTapButton()
        }), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    func didTapButton() {
        picker = ImagePicker(viewController: self)
        picker.pickPhoto()
    }
}
