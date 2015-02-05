//
//  SecondViewController.swift
//  UIKit031
//

import UIKit

class Login: UIViewController , UITextFieldDelegate {
    
    var LoginButton: UIButton = UIButton()
    var flag : Bool = false
    // UITextFieldを作成する.
    //let PassWordTextField: UITextField = UITextField(frame: CGRectMake(0,0,240,30))
    //let IDWordTextField: UITextField = UITextField(frame: CGRectMake(0,0,240,30))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Controllerのタイトルを設定する.
        self.title = "ログイン画面"
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
/////////////////////////////////////////////////////////////////
        // ここからテキストフィールドの記述
////////////////////////////////////////////////////////////////
        
       
        // 表示する文字を代入する.
        PassWordTextField.text = "パスワードを入力してください"
        IDTextField.text = "IDを入力してください"
        
        //文字の色
        PassWordTextField.textColor = UIColor.grayColor()
        IDTextField.textColor = UIColor.grayColor()
        
        // Delegateを設定する.
        PassWordTextField.delegate = self
        IDTextField.delegate = self
        // 枠を表示する.
        PassWordTextField.borderStyle = UITextBorderStyle.RoundedRect
        IDTextField.borderStyle = UITextBorderStyle.RoundedRect
        // UITextFieldの表示する位置を設定する.
        PassWordTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:200);
        IDTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:260);
        // Viewに追加する.
        self.view.addSubview(PassWordTextField)
        self.view.addSubview(IDTextField)
        
        /////////////////////////////////////////////////////////////////////
        //ボタンの記述
        ////////////////////////////////////////////////////////////////////
        LoginButton.frame = CGRectMake(0,0,220,45)
        LoginButton.backgroundColor = UIColor.grayColor()
        LoginButton.layer.masksToBounds = true
        LoginButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        LoginButton.setTitle("ログイン", forState: UIControlState.Normal)
        LoginButton.layer.cornerRadius = 15.0
        LoginButton.layer.position = CGPoint(x: 185, y:350)
        LoginButton.titleLabel!.font = UIFont.boldSystemFontOfSize(28)
        LoginButton.addTarget(self, action: "onClickAllNews:", forControlEvents: .TouchUpInside)
        self.view.addSubview(LoginButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    UITextFieldが編集された直後に呼ばれる.
    */
    
    
    func textFieldDidBeginEditing(textField: UITextField){
        //println("textFieldDidBeginEditing:" + PassWordTextField.text)
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
            PassWordTextField.text = ""
            IDTextField.text = ""
        }
        return true
    }
    
    func onClickAllNews(sender: UIButton){
        
        println("AllNewsページへ")
        
        let AllNewsViewController = AllNews()
        self.navigationController?.pushViewController(AllNewsViewController, animated: true)
    }
    
    
}
