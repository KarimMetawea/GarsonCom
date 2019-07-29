//
//  LogInVC.swift
//  GarsonCom
//
//  Created by karim metawea on 7/28/19.
//  Copyright © 2019 KarimMetawea. All rights reserved.
//

import UIKit
import GoogleSignIn
import FacebookCore
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit

class LogInVC: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTextField.delegate = self
        passwordTextField.delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginWithGoogle(_ sender: Any) {
         GIDSignIn.sharedInstance().signIn()
    }
    @IBAction func loginWithFacebook(_ sender: Any) {
        let loginManager = LoginManager()
        loginManager.logIn(permissions: [.publicProfile,.email,], viewController: self) { (result) in
            switch result {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Logged in!")
            }
        }
        
    }
    @IBAction func loginNowPressed(_ sender: Any) {
    }
    @IBAction func forgotPasswordPressed(_ sender: Any) {
    }
    @IBAction func createNewAccountPressed(_ sender: Any) {
    }
    @IBAction func skipButtonPressed(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LogInVC:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == phoneNumberTextField {
            passwordTextField.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }

        return true
    }


}

extension LogInVC:GIDSignInUIDelegate{
    
}
