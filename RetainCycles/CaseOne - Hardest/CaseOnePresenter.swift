import UIKit

class CaseOnePresenter: CaseOneDelegate {
    var navigationController: UINavigationController?
    let presentingViewController: UIViewController
    
    init(presentingViewController: UIViewController) {
        self.presentingViewController = presentingViewController
    }
    
    func present(_ viewController: UIViewController) {
        if let navigationController = navigationController, navigationController.presentingViewController != nil {
            navigationController.pushViewController(viewController, animated: true)
        } else {
            let navigationController = UINavigationController(rootViewController: viewController)
            if UIDevice.current.userInterfaceIdiom == .pad {
                navigationController.modalPresentationStyle = .formSheet
            }
            self.navigationController = navigationController
            presentingViewController.present(navigationController, animated: true)
        }
    }
    
    func somethingHappened() {
        print("Something Happened!")
    }
}
