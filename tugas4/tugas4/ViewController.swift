//
//  ViewController.swift
//  tugas4
//
//  Created by Naufal Fachreza on 05/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var loginbutton: UIButton!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tologin(_ sender: Any) {
        let Username: String = username.text ?? ""
                let Password: String = password.text ?? ""
                if(!Username.isEmpty && !Password.isEmpty) {
                    loginbutton.isEnabled = true
                    performSegue(withIdentifier: "profil", sender: Username)
                }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "profil" {
                let vc = segue.destination as! ProfilViewController
                vc.Username = sender as? String
            }
        }
}

