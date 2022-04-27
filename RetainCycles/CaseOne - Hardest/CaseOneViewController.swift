import UIKit

class CaseOneViewController: UIViewController {
    let delegate: CaseOneDelegate
    
    init(delegate: CaseOneDelegate) {
        self.delegate = delegate
        
        super.init(nibName: nil, bundle: nil)
        
        view.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
