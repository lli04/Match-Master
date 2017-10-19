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
    @warn_unused_result
    public func contains(element: Self.Iterator.Element) -> Bool{
        return true
    }
}

extension Sequence {
    /// Return `true` iff an element in `self` satisfies `predicate`.
    @warn_unused_result
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
    lazy var buttonArray: Array = [button1,button2,button3,button4,button5,button6,button7,button8,button9,button0].shuffled()
    
    lazy var thinkingArray: Array = [buttonArray[0],buttonArray[1]]
    lazy var dabArray: Array = [buttonArray[2],buttonArray[3]]
    lazy var okArray: Array = [buttonArray[4],buttonArray[5]]
    lazy var laughingArray: Array = [buttonArray[6],buttonArray[7]]
    lazy var scaredArray: Array = [buttonArray[8],buttonArray[9]]
    
    @IBAction func button1(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button1}){
            button1.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button1}){
            button1.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button1}){
            button1.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button1}){
            button1.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button1}){
            button1.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button2}){
            button2.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button2}){
            button2.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button2}){
            button2.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button2}){
            button2.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button2}){
            button2.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
        
    }
    @IBAction func button3(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button3}){
            button3.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button3}){
            button3.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button3}){
            button3.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button3}){
            button3.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button3}){
            button3.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button4(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button4}){
            button4.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button4}){
            button4.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button4}){
            button4.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button4}){
            button4.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button4}){
            button4.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button5(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button5}){
            button5.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button5}){
            button5.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button5}){
            button5.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button5}){
            button5.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button5}){
            button5.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    
    @IBAction func button6(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button6}){
            button6.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button6}){
            button6.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button6}){
            button6.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button6}){
            button6.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button6}){
            button6.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button7(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button7}){
            button7.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button7}){
            button7.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button7}){
            button7.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button7}){
            button7.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button7}){
            button7.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button8(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button8}){
            button8.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button8}){
            button8.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button8}){
            button8.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button8}){
            button8.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button8}){
            button8.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button9(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button9}){
            button9.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button9}){
            button9.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button9}){
            button9.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button9}){
            button9.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button9}){
            button9.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
    }
    @IBAction func button10(_ sender: UIButton) {
        if thinkingArray.contains(where: {$0 === button0}){
            button0.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
            
        }else if dabArray.contains(where: {$0 === button0}){
            button0.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
            
        }else if okArray.contains(where: {$0 === button0}){
            button0.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
            
        }else if laughingArray.contains(where: {$0 === button0}){
            button0.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
            
        }else if scaredArray.contains(where: {$0 === button0}){
            button0.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
            
        }
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
