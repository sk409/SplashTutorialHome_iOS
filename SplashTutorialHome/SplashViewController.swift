import UIKit

open class SplashViewController: UIViewController {
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: {_ in 
            self.transitionToNextViewController()
        })
    }
    
    private func transitionToNextViewController() {
        let isFirstBoot = UserDefaults.standard.object(forKey: UserDefaults.keyIsFirstBoot) == nil
            ? true
            : UserDefaults.standard.bool(forKey: UserDefaults.keyIsFirstBoot)
        let nextViewController = isFirstBoot
            ? TutorialViewController(
                nibName: TutorialViewController.nibName,
                bundle: nil
              )
            : HomeViewController(
                nibName: HomeViewController.nibName,
                bundle: nil
              )
        nextViewController.modalPresentationStyle = .fullScreen
        present(nextViewController, animated: true, completion: nil)
    }
}
