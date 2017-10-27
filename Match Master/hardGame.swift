

import UIKit

class hardGame: UIViewController {
    
    var buttonArray:[UIButton] = []
    
    var screenWidth: CGFloat = 0.0
    var screenHeight: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        screenWidth = UIScreen.main.bounds.width
        screenHeight = UIScreen.main.bounds.height
        
        createButtons()
    }
    @objc func clickMe(sender:UIButton!) {
        print("Button Clicked")
    }
    
    func createButtons() {
        let c = Int((screenWidth - 130.0) / 5.0)
        let h = Int((screenHeight - 244.0) / 8.0)
        
        for i in 0..<5 {
            for j in 0..<6 {
                let btn = UIButton(type: .custom) as UIButton
                btn.setImage(#imageLiteral(resourceName: "Blue"), for: .normal)
                btn.setTitle(nil, for: .normal)
                btn.frame = CGRect(x: (c + 20) * i + 25, y: (h + 20) * j + 94, width: c, height: h)
                btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
                self.view.addSubview(btn)
                buttonArray.append(btn)
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

