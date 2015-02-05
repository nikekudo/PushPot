//
//  SecondViewController.swift
//  UIKit031
//

import UIKit

class AllNews: UIViewController , UITextFieldDelegate , UINavigationControllerDelegate{
    
    var NewsPushButton: UIButton = UIButton()
    var LoginInformationButton: UIButton = UIButton()
    var button : UIBarButtonItem!
    
    override func viewDidLoad() {
        
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        super.viewDidLoad()
        
        // Controllerのタイトルを設定する.
        self.title = "News一覧"
        
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
        FinishSignUpLabel.text = "News"
        
        //サイズの変更
        FinishSignUpLabel.font = UIFont.boldSystemFontOfSize(35)
        
        // 文字の色を白にする.
        FinishSignUpLabel.textColor = UIColor.blackColor()
        
        // Textを中央寄せにする.
        FinishSignUpLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        FinishSignUpLabel.layer.position = CGPoint(x: 180,y: 100)
        
        // ViewにLabelを追加.
        self.view.addSubview(FinishSignUpLabel)
        /////////////////////////////////////////////////////////////////////
        //ボタンの記述
        ////////////////////////////////////////////////////////////////////
        NewsPushButton.frame = CGRectMake(0,0,180,25)
        LoginInformationButton.frame = CGRectMake(0,0,180,25)
        
        NewsPushButton.layer.masksToBounds = true
        LoginInformationButton.layer.masksToBounds = true
        
        NewsPushButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        LoginInformationButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        NewsPushButton.setTitle("News投稿", forState: UIControlState.Normal)
        LoginInformationButton.setTitle("登録情報編集", forState: UIControlState.Normal)
        
        NewsPushButton.layer.cornerRadius = 15.0
        LoginInformationButton.layer.cornerRadius = 15.0
        
        NewsPushButton.layer.position = CGPoint(x: 310, y:130)
        LoginInformationButton.layer.position = CGPoint(x: 310, y:155)
        
        NewsPushButton.titleLabel!.font = UIFont.boldSystemFontOfSize(18)
        LoginInformationButton.titleLabel!.font = UIFont.boldSystemFontOfSize(18)
        
        NewsPushButton.addTarget(self, action: "onClickNewsPush:", forControlEvents: .TouchUpInside)
        LoginInformationButton.addTarget(self, action: "onClickLoginInformation:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(NewsPushButton)
        self.view.addSubview(LoginInformationButton)
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        button = UIBarButtonItem(title: "＜Top", style: .Plain, target: self, action: "onClick:")
        self.navigationItem.leftBarButtonItem = button
    }
    
    func onClick(button : UIButton){
        
        println("TOPに画面繊維")
        let topPage = FirstViewController()
        self.navigationController?.pushViewController(topPage, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func onClickNewsPush(sender: UIButton){
        
        println("NewsPushページへ")
        
        let NewsPushViewController = NewsPush()
        self.navigationController?.pushViewController(NewsPushViewController, animated: true)
    }
    
    func onClickLoginInformation(sender: UIButton){
        
        println("LoginInformationhページへ")
        
        let LoginInformationViewController = LoginInformation()
        self.navigationController?.pushViewController(LoginInformationViewController, animated: true)
    }
}