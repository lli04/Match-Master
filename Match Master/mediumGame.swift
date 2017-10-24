

import UIKit

class mediumGame: UIViewController {
    
    var buttonArray:[UIButton] = []
    
    var screenWidth: CGFloat = 0.0
    var screenHeight: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = UIScreen.main.bounds.width
        screenHeight = UIScreen.main.bounds.height
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
        let c = Int((screenWidth - 100.0) / 4.0)
        let h = Int((screenHeight - 300.0) / 5.0)
        
        for i in 0..<4 {
            for j in 0..<5 {
                let btn = UIButton(type: .custom) as UIButton
                btn.backgroundColor = .blue
                btn.setTitle(nil, for: .normal)
                btn.frame = CGRect(x: (c + 20) * i + 25, y: (h + 20) * j + 69, width: c, height: h)
                btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
                self.view.addSubview(btn)
                buttonArray.append(btn)
            }
            
        }
        //        for i in 0..<8 {
        //            let btn = UIButton(type: .custom) as UIButton
        //            btn.backgroundColor = .blue
        //            btn.setTitle(nil, for: .normal)
        //            btn.frame = CGRect(x: 61 * i + 5, y: 100, width: 65, height: 50)
        //            btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        //            self.view.addSubview(btn)
        //            buttonArray.append(btn)
        //        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

