

import UIKit

class mediumGame: UIViewController {
    
    var buttonArray:[UIButton] = []
    var blockArray:[Block] = []
    
    var screenWidth: CGFloat = 0.0
    var screenHeight: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = UIScreen.main.bounds.width
        screenHeight = UIScreen.main.bounds.height
       
        createButtons()
        
    }
    @objc func clickMe(sender:UIButton!) {
        let myIndex = buttonArray.index(of: sender)
        let selectedBlock = blockArray[myIndex!]
        
        sender.setImage(selectedBlock.image, for: [])
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
                
                // do some image logic
                let newBlock = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji3"))
                
                blockArray.append(newBlock)
                buttonArray.append(btn)
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

