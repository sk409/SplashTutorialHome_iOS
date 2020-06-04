import UIKit

open class TutorialViewController: UIViewController {
    
    public static let nibName = "TutorialViewController"

    open override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGestureRecognizer(UITapGestureRecognizer(
            target: self,
            action: #selector(transitionToHomeViewController)
        ))
    }
    
    @objc
    private func transitionToHomeViewController(sender: UITapGestureRecognizer) {
        UserDefaults.standard.set(false, forKey: UserDefaults.keyIsFirstBoot)
        let homeViewController = HomeViewController(nibName: HomeViewController.nibName, bundle: nil)
        homeViewController.modalPresentationStyle = .fullScreen
        present(homeViewController, animated: true, completion: nil)
    }
    
    

}
