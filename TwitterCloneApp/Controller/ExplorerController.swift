import UIKit

class ExplorerController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}
