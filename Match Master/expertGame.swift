

import UIKit

class expertGame: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton(type: .custom) as UIButton
        btn.backgroundColor = .blue
        btn.setTitle("Button", for: .normal)
        btn.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    @objc func clickMe(sender:UIButton!) {
            print("Button Clicked")
        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
