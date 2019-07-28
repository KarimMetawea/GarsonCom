//
//  SignUpVC.swift
//  GarsonCom
//
//  Created by karim metawea on 7/28/19.
//  Copyright © 2019 KarimMetawea. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func signUp(_ sender: Any) {
    }
    
    @IBAction func haveAccountPressed(_ sender: Any) {
    }
    
}
