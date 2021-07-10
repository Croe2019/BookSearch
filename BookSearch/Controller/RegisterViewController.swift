//
//  RegisterViewController.swift
//  BookSearch
//
//  Created by 濱田広毅 on 2021/07/10.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func Login(){
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { resutl, error in
            
            if let error = error{
                
                print(error)
                return
            }
            
            let viewVC = self.storyboard?.instantiateViewController(identifier: "Home") as! HomeViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        }
    }
    
    @IBAction func done(_ sender: Any) {
       Login()
    }
}
