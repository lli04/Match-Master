//
//  easyGame.swift
//  Match Master
//
//  Created by  on 10/16/17.
//  Copyright © 2017 Lin Li. All rights reserved.
//

import UIKit

extension MutableCollection where Indices.Iterator.Element == Index {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled , unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            guard d != 0 else { continue }
            let i = index(firstUnshuffled, offsetBy: d)
            self.swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

extension Sequence where Iterator.Element : Equatable {
    /// Return `true` iff `element` is in `self`.
//    @warn_unused_result
    public func contains(element: Self.Iterator.Element) -> Bool{
        return true
    }
}

extension Sequence {
    /// Return `true` iff an element in `self` satisfies `predicate`.
//    @warn_unused_result
    public func contains( predicate: (Self.Iterator.Element) throws -> Bool) rethrows -> Bool{
        return true
    }
}

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
//        button1.backgroundColor = UIColor.blue
//        button2.backgroundColor = UIColor.blue
//        button3.backgroundColor = UIColor.blue
//        button4.backgroundColor = UIColor.blue
//        button5.backgroundColor = UIColor.blue
//        button6.backgroundColor = UIColor.blue
//        button7.backgroundColor = UIColor.blue
//        button8.backgroundColor = UIColor.blue
//        button9.backgroundColor = UIColor.blue
//        button0.backgroundColor = UIColor.blue
//
    }
    lazy var buttonArray: Array = [button1,button2,button3,button4,button5,button6,button7,button8,button9,button0].shuffled()
    
    lazy var thinkingArray: Array = [buttonArray[0],buttonArray[1]]
    lazy var dabArray: Array = [buttonArray[2],buttonArray[3]]
    lazy var okArray: Array = [buttonArray[4],buttonArray[5]]
    lazy var laughingArray: Array = [buttonArray[6],buttonArray[7]]
    lazy var scaredArray: Array = [buttonArray[8],buttonArray[9]]
    
    var imagesShown: Int = 0
    var correctGuess: Int = 0
    var guesses: Int = 0
    
    func restart() {
        buttonArray.shuffle()
        for i in 0 ... buttonArray.count {
            buttonArray[i]?.setImage(#imageLiteral(resourceName: "Blue"), for: .normal)
        }
        thinkingArray = [buttonArray[0],buttonArray[1]]
        dabArray = [buttonArray[2],buttonArray[3]]
        okArray = [buttonArray[4],buttonArray[5]]
        laughingArray = [buttonArray[6],buttonArray[7]]
        scaredArray = [buttonArray[8],buttonArray[9]]
        
        imagesShown = 0
        correctGuess = 0
        guesses = 0
    }
    
   @IBOutlet weak var compButton1: UIButton!
   @IBOutlet weak var compButton2: UIButton!
    
    func changeButton(button: UIButton){
        if button.image(for: .normal) == #imageLiteral(resourceName: "Blue"){
            if imagesShown == 0{
                if thinkingArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if dabArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if okArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if laughingArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if scaredArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                
                }
            }else if imagesShown == 1{
                if thinkingArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if dabArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if okArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if laughingArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if scaredArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }
            }
        }else{
            
        }
        
        if imagesShown == 2{
            
            if compButton1.image(for: .normal) == compButton2.image(for: .normal){
                correctGuess += 1
                
            }else if compButton1.image(for: .normal) != compButton2.image(for: .normal){
                compButton1.setImage(#imageLiteral(resourceName: "Blue"), for: .normal)
                compButton2.setImage(#imageLiteral(resourceName: "Blue"), for: .normal)
            }
            imagesShown = 0
            guesses += 1
            
            if correctGuess == 5{
                
                let alert = UIAlertController(title: "Game Over", message: "You won in \(guesses) guesses!", preferredStyle: UIAlertControllerStyle.alert)
                
                let restartAction = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.default, handler: { (restartAction) in
                    self.restart()
                })
                
                alert.addAction(restartAction)
                
                self.present(alert, animated: true, completion: nil)
            }
        }
        
    }
    
    @IBAction func button1(_ sender: UIButton) {
        changeButton(button: button1)
    }
    @IBAction func button2(_ sender: UIButton) {
        changeButton(button: button2)
        
    }
    @IBAction func button3(_ sender: UIButton) {
        changeButton(button: button3)
    }
    @IBAction func button4(_ sender: UIButton) {
        changeButton(button: button4)
    }
    @IBAction func button5(_ sender: UIButton) {
        changeButton(button: button5)
    }
    
    @IBAction func button6(_ sender: UIButton) {
        changeButton(button: button6)
    }
    @IBAction func button7(_ sender: UIButton) {
        changeButton(button: button7)
    }
    @IBAction func button8(_ sender: UIButton) {
        changeButton(button: button8)
    }
    @IBAction func button9(_ sender: UIButton) {
        changeButton(button: button9)
    }
    @IBAction func button10(_ sender: UIButton) {
        changeButton(button: button0)
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
