import UIKit
import Foundation

class ImagePicker: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private weak var viewController: UIViewController?
    var picker: UIImagePickerController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
        picker = UIImagePickerController()
        
        super.init()
        
        picker.delegate = self
    }
    
    func pickPhoto() {
        viewController?.present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true) {
            self.viewController?.dismiss(animated: true)
            // When the VC was made weak, it had to become optional
            // So you could also set the view controller to nil here and the test would pass
            // BUT... tbf weak is what you would expect in Apple Land
        }
        
    }
}
