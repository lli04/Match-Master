//
//  easyGame.swift
//  Match Master
//
//  Created by  on 10/16/17.
//  Copyright © 2017 Lin Li. All rights reserved.
//

import UIKit

class easyGame: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    func assignButtons(){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        button1.backgroundColor = UIColor.blue
        button2.backgroundColor = UIColor.blue
        button3.backgroundColor = UIColor.blue
        button4.backgroundColor = UIColor.blue
        button5.backgroundColor = UIColor.blue
        button6.backgroundColor = UIColor.blue
        button7.backgroundColor = UIColor.blue
        button8.backgroundColor = UIColor.blue
        button9.backgroundColor = UIColor.blue
        button0.backgroundColor = UIColor.blue
       
    }
    @IBAction func button1(_ sender: UIButton) {
        button1.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
        button1.backgroundColor = UIColor.clear
    }
    @IBAction func button2(_ sender: UIButton) {
        button2.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
        button2.backgroundColor = UIColor.clear
        
    }
    @IBAction func button3(_ sender: UIButton) {
        button3.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
        button3.backgroundColor = UIColor.clear
    }
    @IBAction func button4(_ sender: UIButton) {
        button4.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
        button4.backgroundColor = UIColor.clear
    }
    @IBAction func button5(_ sender: UIButton) {
        button5.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
        button5.backgroundColor = UIColor.clear
    }
    
    @IBAction func button6(_ sender: UIButton) {
        button6.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
        button6.backgroundColor = UIColor.clear
    }
    @IBAction func button7(_ sender: UIButton) {
        button7.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
        button7.backgroundColor = UIColor.clear
    }
    @IBAction func button8(_ sender: UIButton) {
        button8.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
        button8.backgroundColor = UIColor.clear
    }
    @IBAction func button9(_ sender: UIButton) {
        button9.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
        button9.backgroundColor = UIColor.clear
    }
    @IBAction func button10(_ sender: UIButton) {
        button0.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
        button0.backgroundColor = UIColor.clear
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
