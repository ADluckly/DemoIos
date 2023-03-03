//
//  RegisterViewViewController.swift
//  DemoIos
//
//  Created by guanbing.lai on 2023/3/2.
//

import UIKit

class RegisterViewViewController: UIViewController {
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var usenameInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="success",
           let distination=segue.destination as? SuccessViewController{
            distination.text="注册成功"
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(#function)
        if identifier == "success"{
            var usename = usenameInput.text ?? ""
            if usename.isEmpty{
                errorLabel.text="请输入登录名"
                return false
            }
            var password = passwordInput.text ?? ""
            if password.isEmpty{
                errorLabel.text="请输入密码"
                return false
            }
        }
        return true
    }
    

    @IBAction func loginClickButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
