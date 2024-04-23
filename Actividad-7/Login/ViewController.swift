
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        }else if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }

    
    @IBAction func forgotUseenameBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotUsername)
    }
    
    
    @IBAction func forgotPasswordBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPassword)
    }
    
    
    
}


