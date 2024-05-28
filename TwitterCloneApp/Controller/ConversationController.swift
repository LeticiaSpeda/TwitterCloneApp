import UIKit

class ConversationController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    
    func configureView() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
