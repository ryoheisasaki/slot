/*要件定義
 1.コインを3枚入れてレバーを叩くと抽選開始
 2.抽選時に選ばれる役はハズレ、ベル、リプレイ、スイカ、チェリー、大当たり
 3.確率 ハズレ(33/50),ベル(10/50),リブレイ(6/50),大当たり(1/50)
 4.ハズレは0枚、ベルは8枚払出し、リプレイはコインを使わず再プレイ(+3枚)、大当たりは100枚払出し
*/

class slotMachine {
    //手持ちコインの量
    var amountOfCoins = 0
    //ハズレ払出し枚数
    var hazure = 0
    //ベル払出し枚数
    var bell = 8
    //リプレイ払出し枚数
    var replay = 3
    //大当たり払出し枚数
    var bonus = 100
    
    
    func koyaku() {
        //ベットボタンを押す
        let randomNumber = Int.random(in: 1...50)
        //コインが枚以上の時のみ動作
        if amountOfCoins < 3 {
            print("コインが足りません")
            return
            
        }
        //賭けコインマイナス
        amountOfCoins -= 3
        
        
        switch randomNumber {
        case 1...10:
            amountOfCoins += bell
            print("ベル")
            print("BETボタンを押してください")
            
        case 11..<17:
            amountOfCoins += replay
            print("リプレイ")
            print("賭けコイン無しでレバーを叩けます")
            
        case 17:
            amountOfCoins += bonus
            print("大当たり")
            print("BETボタンを押してください")
            
        default:
            amountOfCoins += hazure
            print("ハズレ")
            print("BETボタンを押してください")
            
        }
        
    }
    
}

let slot = slotMachine()
slot.amountOfCoins = 100

slot.koyaku()

//print("引いた役は\()")
print("手持ちコインは\(slot.amountOfCoins)枚です。")
