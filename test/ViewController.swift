

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var maskView: UIView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonAction(_ sender: UIButton) {
        maskView.isHidden = false
        let share = ShareViewController(nibName: "ShareViewController", bundle: nil)
        share.modalPresentationStyle = .overFullScreen
        share.superController = self
        self.present(share, animated: false, completion: nil)
    }
    
    
    
}

