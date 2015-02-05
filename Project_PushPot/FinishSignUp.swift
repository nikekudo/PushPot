//
//  SecondViewController.swift
//  UIKit031
//

import UIKit




class FinishSignUp: UIViewController , UITextFieldDelegate,UINavigationControllerDelegate {
    
    var LoginButton: UIButton = UIButton()
    var FinishSignUpButton: UIButton = UIButton()
    
    var flag : Bool = false
    // UITextFieldを作成する
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        // Controllerのタイトルを設定する.
        self.title = "登録完了"
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
/////////////////////////////////////////////////////////////////
        // ここから文字の記述
////////////////////////////////////////////////////////////////
        let FinishSignUpLabel: UILabel = UILabel(frame: CGRectMake(200,0,800,600))
        
        // 枠を丸くする.
        FinishSignUpLabel.layer.masksToBounds = true
        
        // コーナーの半径.
        FinishSignUpLabel.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        FinishSignUpLabel.text = "登録完了しました"
        
        //サイズの変更
        FinishSignUpLabel.font = UIFont.boldSystemFontOfSize(35)
        
        // 文字の色を白にする.
        FinishSignUpLabel.textColor = UIColor.blueColor()
        
        // Textを中央寄せにする.
        FinishSignUpLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        FinishSignUpLabel.layer.position = CGPoint(x: 180,y: 300)
        
        // ViewにLabelを追加.
        self.view.addSubview(FinishSignUpLabel)
        
        /////////////////////////////////////////////////////////////////////
        //ボタンの記述
        ////////////////////////////////////////////////////////////////////
        LoginButton.frame = CGRectMake(0,0,180,45)
        LoginButton.backgroundColor = UIColor.grayColor()
        LoginButton.layer.masksToBounds = true
        LoginButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        LoginButton.setTitle("ログイン >", forState: UIControlState.Normal)
        LoginButton.layer.cornerRadius = 15.0
        LoginButton.layer.position = CGPoint(x: 240, y:580)
        LoginButton.titleLabel!.font = UIFont.boldSystemFontOfSize(28)
        LoginButton.addTarget(self, action: "onClickAllNews:", forControlEvents: .TouchUpInside)
        self.view.addSubview(LoginButton)
    }
    
    func onClickAllNews(sender: UIButton){
        
        println("AllNewsページへ")
        
        let AllNewsViewController = AllNews()
        self.navigationController?.pushViewController(AllNewsViewController, animated: true)
    }
}