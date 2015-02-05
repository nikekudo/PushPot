//
//  SecondViewController.swift
//  UIKit031
//

import UIKit

class LoginInformation: UIViewController , UITextFieldDelegate {
    
    
    let CastamNameTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))
    let CastamPassWordTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))
    let IDTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))
    var NewsPushButton: UIButton = UIButton()
    var LoginInformationButton: UIButton = UIButton()
    var FinishCastamButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Controllerのタイトルを設定する.
        self.title = "登録情報編集"
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
/////////////////////////////////////////////////////////////////
        // ここから文字の記述
////////////////////////////////////////////////////////////////
        let CreateNewsLabel: UILabel = UILabel(frame: CGRectMake(200,0,800,600))
        
        // 枠を丸くする.
        CreateNewsLabel.layer.masksToBounds = true
        
        // コーナーの半径.
        CreateNewsLabel.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        CreateNewsLabel.text = "登録情報編集"
        
        //サイズの変更
        CreateNewsLabel.font = UIFont.boldSystemFontOfSize(35)
        
        // 文字の色を白にする.
        CreateNewsLabel.textColor = UIColor.blackColor()
        
        // Textを中央寄せにする.
        CreateNewsLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        CreateNewsLabel.layer.position = CGPoint(x: 180,y: 100)
        
        // ViewにLabelを追加.
        self.view.addSubview(CreateNewsLabel)
        
/////////////////////////////////////////////////////////////////
        // ここからテキストフィールドの記述
////////////////////////////////////////////////////////////////
        
        //文字の色
        CastamNameTextField.textColor = UIColor.grayColor()
        CastamPassWordTextField.textColor = UIColor.grayColor()
        IDTextField.textColor = UIColor.grayColor()
        
        // Delegateを設定する.
        CastamNameTextField.delegate = self
        CastamPassWordTextField.delegate = self
        IDTextField.delegate = self
        
        // 枠を表示する.
        CastamNameTextField.borderStyle = UITextBorderStyle.RoundedRect
        CastamPassWordTextField.borderStyle = UITextBorderStyle.RoundedRect
        IDTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // UITextFieldの表示する位置を設定する.
        CastamNameTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:170);
        CastamPassWordTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:230);
        IDTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:290);
        
        // Viewに追加する.
        self.view.addSubview(CastamNameTextField)
        self.view.addSubview(CastamPassWordTextField)
        self.view.addSubview(IDTextField)
        
/////////////////////////////////////////////////////////////////////
        //ボタンの記述
////////////////////////////////////////////////////////////////////
        FinishCastamButton.frame = CGRectMake(0,0,280,50)
        FinishCastamButton.backgroundColor = UIColor.blueColor()
        FinishCastamButton.layer.masksToBounds = true
        FinishCastamButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        FinishCastamButton.setTitle("編集を完了する", forState: UIControlState.Normal)
        FinishCastamButton.layer.cornerRadius = 15.0
        FinishCastamButton.layer.position = CGPoint(x: 185, y:370)
        FinishCastamButton.titleLabel!.font = UIFont.boldSystemFontOfSize(30)
        FinishCastamButton.addTarget(self, action: "onClickAllNews:", forControlEvents: .TouchUpInside)
        self.view.addSubview(FinishCastamButton)
    }

/////////////////////////////////////////////////////////////////////
    //ボタンイベントの記述
////////////////////////////////////////////////////////////////////
    func onClickAllNews(sender: UIButton){
        
        println("AllNewsページへ")
        
        let AllNewsViewController = AllNews()
        self.navigationController?.pushViewController(AllNewsViewController, animated: true)
    }
    
}
