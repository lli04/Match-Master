

import UIKit

class expertGame: UIViewController {

    var buttonArray:[UIButton] = []
    override func viewDidLoad() {
        super.viewDidLoad()
//        let btn = UIButton(type: .custom) as UIButton
//        btn.backgroundColor = .blue
//        btn.setTitle(nil, for: .normal)
//        btn.frame = CGRect(x: 100, y: 100, width: 65, height: 50)
//        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
//        self.view.addSubview(btn)
        createButtons()
    }
    @objc func clickMe(sender:UIButton!) {
            print("Button Clicked")
        }
    
    func createButtons() {
        for i in 0..<6 {
            let btn = UIButton(type: .custom) as UIButton
        btn.backgroundColor = .blue
        btn.setTitle(nil, for: .normal)
        btn.frame = CGRect(x: 61 * i + 5, y: 100, width: 65, height: 50)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        self.view.addSubview(btn)
            buttonArray.append(btn)
        }
        for i in 0..<6 {
            let btn = UIButton(type: .custom) as UIButton
            btn.backgroundColor = .blue
            btn.setTitle(nil, for: .normal)
            btn.frame = CGRect(x: 61 * i + 5, y: 100, width: 65, height: 50)
            btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
            self.view.addSubview(btn)
            buttonArray.append(btn)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
