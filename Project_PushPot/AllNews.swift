//
//  SecondViewController.swift
//  UIKit031
//

import UIKit

class AllNews: UIViewController , UITextFieldDelegate , UINavigationControllerDelegate {
   
    var button : UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Controllerのタイトルを設定する.
        self.title = "News一覧"
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        button = UIBarButtonItem(title: "Top", style: .Plain, target: self, action: "onClick:")
        self.navigationItem.leftBarButtonItem = button
        
        
    }
    
    func onClick(button : UIButton){
        
        println("TOPに画面繊維")
        let topPage = FirstViewController()
        self.navigationController?.pushViewController(topPage, animated: false)
        
        
    }
    
}