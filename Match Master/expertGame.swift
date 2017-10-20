

import UIKit

class expertGame: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
        // Do any additional setup after loading the view.
    }

    var goButton = UIButton()
    
    func createButton() {
//        goButton.setTitle("", for: .normal)
//        goButton.setTitleColor(UIColor.clear, for: .normal)
        goButton.setBackgroundImage(#imageLiteral(resourceName: "Blue"), for: .normal)
        goButton.frame = CGRect(x: view.frame.width/2, y: view.frame.height/2, width: 20, height: 15)
        
        view.addSubview(goButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
