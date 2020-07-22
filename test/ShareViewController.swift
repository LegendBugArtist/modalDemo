

import UIKit

class ShareViewController: UIViewController {
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    weak var superController:ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: UIButton) {

        UIView.animate(withDuration: 0.2) { [weak self] in
            guard let `self` = self else { return }
            var n:CGFloat = 0
            if self.heightConstraint.constant > 420 {
                self.heightConstraint.constant = 420
                n = 1
                self.superController?.contentView.layer.cornerRadius = 0
            }else{
                self.heightConstraint.constant = self.view.bounds.height - 100
                n = 0.9
                self.superController?.contentView.layer.cornerRadius = 13
            }
            self.view.layoutIfNeeded()
            self.superController?.contentView.transform = CGAffineTransform(scaleX: n, y: n)
        }

    }
    
    @IBAction func closeAction(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
        superController?.maskView.isHidden = true
        superController?.contentView.transform          = CGAffineTransform(scaleX: 1, y: 1)
        superController?.contentView.layer.cornerRadius = 0
    }

}
