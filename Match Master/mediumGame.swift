

import UIKit

class mediumGame: UIViewController {
    
    lazy var buttonArray: [UIButton] = []
    var blockArray:[Block] = []
    
    var screenWidth: CGFloat = 0.0
    var screenHeight: CGFloat = 0.0
    var imagesShown: Int = 0
    var correctGuess: Int = 0
    var guesses: Int = 0
    
    @IBOutlet weak var compButton1: UIButton!
    @IBOutlet weak var compButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = UIScreen.main.bounds.width
        screenHeight = UIScreen.main.bounds.height
       
        createButtons()
        buttonArray.shuffle()
    }
    @objc func clickMe(sender:UIButton!) {
        let myIndex = buttonArray.index(of: sender)
        let selectedBlock = blockArray[myIndex!]
        
        changeButton(button: sender)
    }
    
    func restart() {
        buttonArray.shuffle()
        for i in 0 ... (buttonArray.count - 1) {
            buttonArray[i].setImage(#imageLiteral(resourceName: "Blue"), for: .normal)
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
    
    func createButtons() {
        let c = Int((screenWidth - 100.0) / 4.0)
        let h = Int((screenHeight - 300.0) / 5.0)
        
        for i in 0..<4 {
            for j in 0..<5 {
                let btn = UIButton(type: .custom) as UIButton
                btn.setImage(#imageLiteral(resourceName: "Blue"), for: .normal)
                btn.setTitle(nil, for: .normal)
                btn.frame = CGRect(x: (c + 20) * i + 25, y: (h + 20) * j + 69, width: c, height: h)
                btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
                self.view.addSubview(btn)
                
                // do some image logic
                let newBlock = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji1"))
                let newBlock2 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji2"))
                let newBlock3 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji3"))
                let newBlock4 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji4"))
                let newBlock5 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji5"))
                let newBlock6 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji6"))
                let newBlock7 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji7"))
                let newBlock8 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji8"))
                let newBlock9 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji9"))
                let newBlock10 = Block(myBUtton: btn, myImage: #imageLiteral(resourceName: "emoji17"))


                
                
                blockArray.append(newBlock)
                blockArray.append(newBlock2)
                blockArray.append(newBlock3)
                blockArray.append(newBlock3)
                blockArray.append(newBlock4)
                blockArray.append(newBlock5)
                blockArray.append(newBlock6)
                blockArray.append(newBlock7)
                blockArray.append(newBlock8)
                blockArray.append(newBlock9)
                blockArray.append(newBlock10)

                buttonArray.append(btn)
            }
            
        }
    }
    
    lazy var thinkingArray: Array = [buttonArray[0],buttonArray[1]]
    lazy var dabArray: Array = [buttonArray[2],buttonArray[3]]
    lazy var okArray: Array = [buttonArray[4],buttonArray[5]]
    lazy var laughingArray: Array = [buttonArray[6],buttonArray[7]]
    lazy var scaredArray: Array = [buttonArray[8],buttonArray[9]]
    lazy var kissArray: Array = [buttonArray[10],buttonArray[11]]
    lazy var nerdArray: Array = [buttonArray[12],buttonArray[13]]
    lazy var tongueArray: Array = [buttonArray[14],buttonArray[15]]
    lazy var glassesArray: Array = [buttonArray[16],buttonArray[17]]
    lazy var moneyArray: Array = [buttonArray[18],buttonArray[19]]
    
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
                    
                }else if kissArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji6"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if nerdArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji7"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if tongueArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji8"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if glassesArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji9"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }else if moneyArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji17"), for: .normal)
                    imagesShown += 1
                    compButton1 = button
                    
                }
            }else if imagesShown == 1{
                if blockArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji2"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if blockArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji1"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if blockArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji4"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if blockArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji5"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if blockArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji3"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if kissArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji6"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if nerdArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji7"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if tongueArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji8"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if glassesArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji9"), for: .normal)
                    imagesShown += 1
                    compButton2 = button
                    
                }else if moneyArray.contains(where: {$0 === button}){
                    button.setImage(#imageLiteral(resourceName: "emoji17"), for: .normal)
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
            
            if correctGuess == 10{
                
                let alert = UIAlertController(title: "Game Over", message: "You won in \(guesses) guesses!", preferredStyle: UIAlertControllerStyle.alert)
                
                let restartAction = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.default, handler: { (restartAction) in
                    self.restart()
                })
                
                alert.addAction(restartAction)
                
                self.present(alert, animated: true, completion: nil)
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

