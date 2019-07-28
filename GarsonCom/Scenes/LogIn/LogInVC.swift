//
//  LogInVC.swift
//  GarsonCom
//
//  Created by karim metawea on 7/28/19.
//  Copyright © 2019 KarimMetawea. All rights reserved.
//

import UIKit

class LogInVC: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginWithGoogle(_ sender: Any) {
    }
    @IBAction func loginWithFacebook(_ sender: Any) {
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
