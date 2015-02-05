//
//  SecondViewController.swift
//  UIKit031
//

import UIKit

let NameTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))
let PassWordTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))
let IDTextField: UITextField = UITextField(frame: CGRectMake(0,0,260,40))

class SignUp: UIViewController , UITextFieldDelegate {
    
    var FinishSignUpButton: UIButton = UIButton()
    
    var flag : Bool = false
    // UITextFieldを作成する
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(false, animated: true)

        // Controllerのタイトルを設定する.
        self.title = "登録画面"
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
/////////////////////////////////////////////////////////////////
        // ここからテキストフィールドの記述
////////////////////////////////////////////////////////////////
        
        // 表示する文字を代入する.
        NameTextField.text = "名前を入力してください"
        PassWordTextField.text = "パスワードを入力してください"
        IDTextField.text = "IDを入力してください"
        
        //文字の色
        NameTextField.textColor = UIColor.grayColor()
        PassWordTextField.textColor = UIColor.grayColor()
        IDTextField.textColor = UIColor.grayColor()

        // Delegateを設定する.
        NameTextField.delegate = self
        PassWordTextField.delegate = self
        IDTextField.delegate = self

        // 枠を表示する.
        NameTextField.borderStyle = UITextBorderStyle.RoundedRect
        PassWordTextField.borderStyle = UITextBorderStyle.RoundedRect
        IDTextField.borderStyle = UITextBorderStyle.RoundedRect

        // UITextFieldの表示する位置を設定する.
        NameTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:150);
        PassWordTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:210);
        IDTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:270);

        // Viewに追加する.
        self.view.addSubview(NameTextField)
        self.view.addSubview(PassWordTextField)
        self.view.addSubview(IDTextField)
        
  
/////////////////////////////////////////////////////////////////////
        //ボタンの記述
////////////////////////////////////////////////////////////////////
        FinishSignUpButton.frame = CGRectMake(0,0,280,50)
        FinishSignUpButton.backgroundColor = UIColor.orangeColor()
        FinishSignUpButton.layer.masksToBounds = true
        FinishSignUpButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        FinishSignUpButton.setTitle("登録", forState: UIControlState.Normal)
        FinishSignUpButton.layer.cornerRadius = 15.0
        FinishSignUpButton.layer.position = CGPoint(x: 185, y:350)
        FinishSignUpButton.titleLabel!.font = UIFont.boldSystemFontOfSize(30)
        //FinishSignUpButton.addTarget(self, action: "onClickLogin:", forControlEvents: .TouchUpInside)
        self.view.addSubview(FinishSignUpButton)
        FinishSignUpButton.addTarget(self, action: "onClickFinishSignUp:", forControlEvents: .TouchUpInside)
    }
    
/////////////////////////////////////////////////////////////////
    // テキストフィールド入力したあとにもっかい押したときのfunction
////////////////////////////////////////////////////////////////
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        println("textFieldShouldEndEditing:" + NameTextField.text)
        
        return true
    }
    
    /*
    改行ボタンが押された際に呼ばれる.
    */
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        NameTextField.resignFirstResponder()
        
        return true
    }
    
    func textFieldShouldBeginEditing(textFiled: UITextField) ->Bool{
        if flag == false {
            flag = true
            println("flag switched")
            NameTextField.text = ""
            PassWordTextField.text = ""
            IDTextField.text = ""
            
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/////////////////////////////////////////////////////////////////////
    //ボタンイベント
////////////////////////////////////////////////////////////////////
    func onClickFinishSignUp(sender: UIButton){
        
        println("FinishSignUpページへ")
        
        let FinishSignUpViewController = FinishSignUp()
        self.navigationController?.pushViewController(FinishSignUpViewController, animated: true)
    }
    

    
    
}