import UIKit

class NotificationController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
}
