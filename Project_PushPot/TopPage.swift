//
//  ViewController.swift
//  PushPod
//
//  Created by 橋場賢弥 on 2015/02/03.
//  Copyright (c) 2015年 橋場賢弥. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UINavigationControllerDelegate{
    
    var SignUpButton: UIButton = UIButton()
    var LoginButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.title = "Welcome!"
        
        //変更しました　てすと
        
        
 
/////////////////////////////////////////////////////////////////
        // ここから画像の記述
/////////////////////////////////////////////////////////////////
        // UIImageViewを作成する.
        let TopBackgroundImage: UIImageView = UIImageView(frame: CGRectMake(800,800,800,700))
        
        // 表示する画像を設定する.
        let Image = UIImage(named: "pot.jpg")
        
        // 画像をUIImageViewに設定する.
        TopBackgroundImage.image = Image
        
        // 画像の表示する座標を指定する.
        TopBackgroundImage.layer.position = CGPoint(x:190, y:340)
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(TopBackgroundImage)
        
        
/////////////////////////////////////////////////////////////////
        // ここからボタンの記述
/////////////////////////////////////////////////////////////////
        // サイズを設定する.
        SignUpButton.frame = CGRectMake(0,0,120,60)
        LoginButton.frame = CGRectMake(0,0,120,60)
        
        // 背景色を設定する.
        SignUpButton.backgroundColor = UIColor.blueColor()
        LoginButton.backgroundColor = UIColor.grayColor()
        
        // 枠を丸くする.
        SignUpButton.layer.masksToBounds = true
        LoginButton.layer.masksToBounds = true

        // タイトルを設定する
        SignUpButton.setTitle("登録", forState: UIControlState.Normal)
        SignUpButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        LoginButton.setTitle("ログイン >", forState: UIControlState.Normal)
        LoginButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
       // コーナーの半径を設定する.
        SignUpButton.layer.cornerRadius = 15.0
        LoginButton.layer.cornerRadius = 15.0

        // ボタンの位置を指定する.
        SignUpButton.layer.position = CGPoint(x: 100, y:600)
        LoginButton.layer.position = CGPoint(x: 290, y:600)

        // タグを設定する.
        SignUpButton.tag = 1
        LoginButton.tag = 2
        
        // イベントを追加する.
        SignUpButton.addTarget(self, action: "onClickSignUp:", forControlEvents: .TouchUpInside)
        LoginButton.addTarget(self, action: "onClickLogin:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.view.addSubview(SignUpButton)
        self.view.addSubview(LoginButton)
        
        
/////////////////////////////////////////////////////////////////
        // ここから文字の記述
////////////////////////////////////////////////////////////////
        // Labelを作成.
        let WelcomeLavel: UILabel = UILabel(frame: CGRectMake(100,0,500,100))
        let HelloLabel: UILabel = UILabel(frame: CGRectMake(100,0,500,100))
        
        // 枠を丸くする.
        WelcomeLavel.layer.masksToBounds = true
        HelloLabel.layer.masksToBounds = true
        
        // コーナーの半径.
        WelcomeLavel.layer.cornerRadius = 20.0
        HelloLabel.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        WelcomeLavel.text = "PushPotへようこそ"
        HelloLabel.text = "こんにちは"
        
        //サイズの変更
        WelcomeLavel.font = UIFont.boldSystemFontOfSize(22)
        HelloLabel.font = UIFont.boldSystemFontOfSize(50)
        
        // 文字の色を白にする.
        WelcomeLavel.textColor = UIColor.whiteColor()
        HelloLabel.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        WelcomeLavel.shadowColor = UIColor.grayColor()
        HelloLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        WelcomeLavel.textAlignment = NSTextAlignment.Center
        HelloLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        WelcomeLavel.layer.position = CGPoint(x: 130,y: 200)
        HelloLabel.layer.position = CGPoint(x: 130,y: 160)
        
        // ViewにLabelを追加.
        self.view.addSubview(WelcomeLavel)
        self.view.addSubview(HelloLabel)
    }
    
/////////////////////////////////////////////////////////////////////
    //ボタンイベント
////////////////////////////////////////////////////////////////////
    func onClickSignUp(sender: UIButton){
        
        println("SignUpページへ")
        
        let SignUpViewController = SignUp()
        self.navigationController?.pushViewController(SignUpViewController, animated: true)
    }
    
    func onClickLogin(sender: UIButton){
        
        println("Loginページへ")
        
        let LoginViewController = Login()
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
   }



