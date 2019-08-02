// New User Registration
import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    //IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func registerPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        //MARK: Firebase auth
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                print(error!)
            }
            else{
                //success
                SVProgressHUD.dismiss()
            }
            self.performSegue(withIdentifier: "goToChat", sender: self)
        }
    }
}
