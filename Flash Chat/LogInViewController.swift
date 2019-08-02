//  Login view
import UIKit
import Firebase
import SVProgressHUD


class LogInViewController: UIViewController {

    //IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        SVProgressHUD.show()// showing load action
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!){(user, error) in
            
            if error != nil{
                print("error")
            }
            else{
                print("login succes")
                SVProgressHUD.dismiss()// dismissing load action after data parsed
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
}  
