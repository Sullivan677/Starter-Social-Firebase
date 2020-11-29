import UIKit
import FirebaseAuth

class ProfilVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutFirebase))
       
    }
    
    @objc func logoutFirebase() {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
          print("user logout")
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
          let alert = UIAlertController(title: "Error", message: "We were not able to sign you out, check your internet connection.", preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
          self.present(alert, animated: true)
        }
    }
    


}
