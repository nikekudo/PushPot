//
//  SecondViewController.swift
//  UIKit031
//

import UIKit

class NewsPush: UIViewController , UITextFieldDelegate {
    
    let TitleTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))
    let MainNewsTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,350))
    var flag : Bool = false
    var NewsPushButton: UIButton = UIButton()
    var LoginInformationButton: UIButton = UIButton()
    var PushButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        super.viewDidLoad()
        
        // Controllerのタイトルを設定する.
        self.title = "News作成"
        
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
        CreateNewsLabel.text = "News作成"
        
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
        
        // 表示する文字を代入する.
        TitleTextField.text = "件名"
        MainNewsTextField.text = "内容"
        
        //文字の色
        TitleTextField.textColor = UIColor.grayColor()
        MainNewsTextField.textColor = UIColor.grayColor()
        
        // Delegateを設定する.
        TitleTextField.delegate = self
        MainNewsTextField.delegate = self
        // 枠を表示する.
        TitleTextField.borderStyle = UITextBorderStyle.RoundedRect
        MainNewsTextField.borderStyle = UITextBorderStyle.RoundedRect
        // UITextFieldの表示する位置を設定する.
        TitleTextField.layer.position = CGPoint(x:180,y:180);
        MainNewsTextField.layer.position = CGPoint(x:180,y:380);
        // Viewに追加する.
        self.view.addSubview(TitleTextField)
        self.view.addSubview(MainNewsTextField)
        
/////////////////////////////////////////////////////////////////////
        //ボタンの記述
////////////////////////////////////////////////////////////////////
        PushButton.frame = CGRectMake(0,0,220,45)
        PushButton.backgroundColor = UIColor.orangeColor()
        PushButton.layer.masksToBounds = true
        PushButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        PushButton.setTitle("投稿する", forState: UIControlState.Normal)
        PushButton.layer.cornerRadius = 15.0
        PushButton.layer.position = CGPoint(x: 185, y:600)
        PushButton.titleLabel!.font = UIFont.boldSystemFontOfSize(28)
        PushButton.addTarget(self, action: "onClickAllNews:", forControlEvents: .TouchUpInside)
        self.view.addSubview(PushButton)
    }
    
    /*
    UITextFieldが編集された直後に呼ばれる.
    */
    
    
    func textFieldDidBeginEditing(textField: UITextField){
        println("textFieldDidBeginEditing:" + PassWordTextField.text)
    }
    
    /*
    UITextFieldが編集終了する直前に呼ばれる.
    */
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        println("textFieldShouldEndEditing:" + PassWordTextField.text)
        
        return true
    }
    
    /*
    改行ボタンが押された際に呼ばれる.
    */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    func textFieldShouldBeginEditing(textFiled: UITextField) ->Bool{
        if flag == false {
            flag = true
            println("flag switched")
            TitleTextField.text = ""
            MainNewsTextField.text = ""
        }
        return true
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
