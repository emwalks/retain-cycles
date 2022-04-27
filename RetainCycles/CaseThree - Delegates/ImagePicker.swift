import UIKit
import Foundation

class ImagePicker: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private var viewController: UIViewController
    private var picker: UIImagePickerController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
        picker = UIImagePickerController()
        
        super.init()
        
        picker.delegate = self
    }
    
    func pickPhoto() {
        viewController.present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true) {
            self.viewController.dismiss(animated: true)
        }
        
    }
}
