
import UIKit

class ViewController: UIViewController {

    //顯示左右點數
    @IBOutlet weak var leftPoint: UILabel!
    @IBOutlet weak var rightPoint: UILabel!
    //宣判誰贏文字
    @IBOutlet weak var showLabel: UILabel!
    
    //左邊骰子
    @IBOutlet weak var leftDice1: UIImageView!
    @IBOutlet weak var leftDice2: UIImageView!
    @IBOutlet weak var leftDice3: UIImageView!
    @IBOutlet weak var leftDice4: UIImageView!
    @IBOutlet weak var leftDice5: UIImageView!
    //右邊骰子
    @IBOutlet weak var rightDice1: UIImageView!
    @IBOutlet weak var rightDice2: UIImageView!
    @IBOutlet weak var rightDice3: UIImageView!
    @IBOutlet weak var rightDice4: UIImageView!
    @IBOutlet weak var rightDice5: UIImageView!
    
    
    
    
    
    
    //宣告左右邊點數給@IBAction func startButton 使用
    var lefSum = 0 //左亂數值
    var rightSum = 0 //右亂數值
    var lefImage = ["l1","l2","l3","l4","l5","l6"]
    var rightImage = ["r1","r2","r3","r4","r5","r6",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//開始按鈕
    @IBAction func startButton(_ sender: Any) {
        //出現左邊點數
        lefSum = Int.random(in: 5...30)
        leftPoint.text = String("\(lefSum)")
        //出現右邊點數
        rightSum = Int.random(in: 5...30)
        rightPoint.text = String("\(rightSum)")
        
        //更改比較後顯示label
        if lefSum > rightSum{
            showLabel.text = String("🎇此局由 『隔壁老王』 獲勝🎇")
        }
        else if lefSum < rightSum{
            showLabel.text = String("🎇此局由 『8號乾妹』 獲勝🎇")
        }
        else if lefSum == rightSum{
            showLabel.text = String("🎇平手再來一次🎇")
        }
        //更改左邊骰子與亂數值相同照片
        if lefSum == 5{
            leftDice1.image = UIImage(named: String(lefImage[0]))
            leftDice2.image = UIImage(named: String(lefImage[0]))
            leftDice3.image = UIImage(named: String(lefImage[0]))
            leftDice4.image = UIImage(named: String(lefImage[0]))
            leftDice5.image = UIImage(named: String(lefImage[0]))
        }
        else if lefSum == 6{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[0]))
            leftDice3.image = UIImage(named: String(lefImage[0]))
            leftDice4.image = UIImage(named: String(lefImage[0]))
            leftDice5.image = UIImage(named: String(lefImage[0]))
        }
        else if lefSum == 7{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[0]))
            leftDice4.image = UIImage(named: String(lefImage[0]))
            leftDice5.image = UIImage(named: String(lefImage[0]))
        }
        else if lefSum == 8{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[1]))
            leftDice4.image = UIImage(named: String(lefImage[0]))
            leftDice5.image = UIImage(named: String(lefImage[0]))
        }
        else if lefSum == 9{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[1]))
            leftDice4.image = UIImage(named: String(lefImage[1]))
            leftDice5.image = UIImage(named: String(lefImage[0]))
        }
        else if lefSum == 10{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[1]))
            leftDice4.image = UIImage(named: String(lefImage[1]))
            leftDice5.image = UIImage(named: String(lefImage[1]))
        }
        else if lefSum == 11{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[1]))
            leftDice4.image = UIImage(named: String(lefImage[1]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 12{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[1]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 13{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[1]))
            leftDice3.image = UIImage(named: String(lefImage[2]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 14{
            leftDice1.image = UIImage(named: String(lefImage[1]))
            leftDice2.image = UIImage(named: String(lefImage[2]))
            leftDice3.image = UIImage(named: String(lefImage[2]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 15{
            leftDice1.image = UIImage(named: String(lefImage[2]))
            leftDice2.image = UIImage(named: String(lefImage[2]))
            leftDice3.image = UIImage(named: String(lefImage[2]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 16{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[2]))
            leftDice3.image = UIImage(named: String(lefImage[2]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 17{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[2]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 18{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[3]))
            leftDice4.image = UIImage(named: String(lefImage[2]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 19{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[3]))
            leftDice4.image = UIImage(named: String(lefImage[3]))
            leftDice5.image = UIImage(named: String(lefImage[2]))
        }
        else if lefSum == 20{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[3]))
            leftDice4.image = UIImage(named: String(lefImage[3]))
            leftDice5.image = UIImage(named: String(lefImage[3]))
        }
        else if lefSum == 21{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[3]))
            leftDice4.image = UIImage(named: String(lefImage[3]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 22{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[3]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 23{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[3]))
            leftDice3.image = UIImage(named: String(lefImage[4]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 24{
            leftDice1.image = UIImage(named: String(lefImage[3]))
            leftDice2.image = UIImage(named: String(lefImage[4]))
            leftDice3.image = UIImage(named: String(lefImage[4]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 25{
            leftDice1.image = UIImage(named: String(lefImage[4]))
            leftDice2.image = UIImage(named: String(lefImage[4]))
            leftDice3.image = UIImage(named: String(lefImage[4]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 26{
            leftDice1.image = UIImage(named: String(lefImage[5]))
            leftDice2.image = UIImage(named: String(lefImage[4]))
            leftDice3.image = UIImage(named: String(lefImage[4]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 27{
            leftDice1.image = UIImage(named: String(lefImage[5]))
            leftDice2.image = UIImage(named: String(lefImage[5]))
            leftDice3.image = UIImage(named: String(lefImage[4]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 28{
            leftDice1.image = UIImage(named: String(lefImage[5]))
            leftDice2.image = UIImage(named: String(lefImage[5]))
            leftDice3.image = UIImage(named: String(lefImage[5]))
            leftDice4.image = UIImage(named: String(lefImage[4]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 29{
            leftDice1.image = UIImage(named: String(lefImage[5]))
            leftDice2.image = UIImage(named: String(lefImage[5]))
            leftDice3.image = UIImage(named: String(lefImage[5]))
            leftDice4.image = UIImage(named: String(lefImage[5]))
            leftDice5.image = UIImage(named: String(lefImage[4]))
        }
        else if lefSum == 30{
            leftDice1.image = UIImage(named: String(lefImage[5]))
            leftDice2.image = UIImage(named: String(lefImage[5]))
            leftDice3.image = UIImage(named: String(lefImage[5]))
            leftDice4.image = UIImage(named: String(lefImage[5]))
            leftDice5.image = UIImage(named: String(lefImage[5]))
        }
        //更改右邊骰子與亂數值相同相片
        if rightSum == 5{
            rightDice1.image = UIImage(named: String(rightImage[0]))
            rightDice2.image = UIImage(named: String(rightImage[0]))
            rightDice3.image = UIImage(named: String(rightImage[0]))
            rightDice4.image = UIImage(named: String(rightImage[0]))
            rightDice5.image = UIImage(named: String(rightImage[0]))
        }
        else if rightSum == 6{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[0]))
            rightDice3.image = UIImage(named: String(rightImage[0]))
            rightDice4.image = UIImage(named: String(rightImage[0]))
            rightDice5.image = UIImage(named: String(rightImage[0]))
        }
        else if rightSum == 7{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[0]))
            rightDice4.image = UIImage(named: String(rightImage[0]))
            rightDice5.image = UIImage(named: String(rightImage[0]))
        }
        else if rightSum == 8{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[1]))
            rightDice4.image = UIImage(named: String(rightImage[0]))
            rightDice5.image = UIImage(named: String(rightImage[0]))
        }
        else if rightSum == 9{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[1]))
            rightDice4.image = UIImage(named: String(rightImage[1]))
            rightDice5.image = UIImage(named: String(rightImage[0]))
        }
        else if rightSum == 10{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[1]))
            rightDice4.image = UIImage(named: String(rightImage[1]))
            rightDice5.image = UIImage(named: String(rightImage[1]))
        }
        else if rightSum == 11{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[1]))
            rightDice4.image = UIImage(named: String(rightImage[1]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 12{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[1]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 13{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[1]))
            rightDice3.image = UIImage(named: String(rightImage[2]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 14{
            rightDice1.image = UIImage(named: String(rightImage[1]))
            rightDice2.image = UIImage(named: String(rightImage[2]))
            rightDice3.image = UIImage(named: String(rightImage[2]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 15{
            rightDice1.image = UIImage(named: String(rightImage[2]))
            rightDice2.image = UIImage(named: String(rightImage[2]))
            rightDice3.image = UIImage(named: String(rightImage[2]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 16{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[2]))
            rightDice3.image = UIImage(named: String(rightImage[2]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 17{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[2]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 18{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[3]))
            rightDice4.image = UIImage(named: String(rightImage[2]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 19{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[3]))
            rightDice4.image = UIImage(named: String(rightImage[3]))
            rightDice5.image = UIImage(named: String(rightImage[2]))
        }
        else if rightSum == 20{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[3]))
            rightDice4.image = UIImage(named: String(rightImage[3]))
            rightDice5.image = UIImage(named: String(rightImage[3]))
        }
        else if rightSum == 21{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[3]))
            rightDice4.image = UIImage(named: String(rightImage[3]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 22{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[3]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 23{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[3]))
            rightDice3.image = UIImage(named: String(rightImage[4]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 24{
            rightDice1.image = UIImage(named: String(rightImage[3]))
            rightDice2.image = UIImage(named: String(rightImage[4]))
            rightDice3.image = UIImage(named: String(rightImage[4]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 25{
            rightDice1.image = UIImage(named: String(rightImage[4]))
            rightDice2.image = UIImage(named: String(rightImage[4]))
            rightDice3.image = UIImage(named: String(rightImage[4]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 26{
            rightDice1.image = UIImage(named: String(rightImage[5]))
            rightDice2.image = UIImage(named: String(rightImage[4]))
            rightDice3.image = UIImage(named: String(rightImage[4]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 27{
            rightDice1.image = UIImage(named: String(rightImage[5]))
            rightDice2.image = UIImage(named: String(rightImage[5]))
            rightDice3.image = UIImage(named: String(rightImage[4]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 28{
            rightDice1.image = UIImage(named: String(rightImage[5]))
            rightDice2.image = UIImage(named: String(rightImage[5]))
            rightDice3.image = UIImage(named: String(rightImage[5]))
            rightDice4.image = UIImage(named: String(rightImage[4]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 29{
            rightDice1.image = UIImage(named: String(rightImage[5]))
            rightDice2.image = UIImage(named: String(rightImage[5]))
            rightDice3.image = UIImage(named: String(rightImage[5]))
            rightDice4.image = UIImage(named: String(rightImage[5]))
            rightDice5.image = UIImage(named: String(rightImage[4]))
        }
        else if rightSum == 30{
            rightDice1.image = UIImage(named: String(rightImage[5]))
            rightDice2.image = UIImage(named: String(rightImage[5]))
            rightDice3.image = UIImage(named: String(rightImage[5]))
            rightDice4.image = UIImage(named: String(rightImage[5]))
            rightDice5.image = UIImage(named: String(rightImage[5]))
        }
        
    }
    
}

