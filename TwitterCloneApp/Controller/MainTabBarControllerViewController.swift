import UIKit

class MainTabBarControllerViewController: UITabBarController {
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .blue
        button.setImage(UIImage(named: "newTweet"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        configureUI()
    }
    
    func configureUI() {
        view.addSubview(actionButton)
        
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56/2
    }
    
    func configureViewControllers() {
        let nav = templateNavigationController(image: UIImage(named: "home_unselected") ?? UIImage(), rootViewController: FeedController())
        
        let explorer = templateNavigationController(image: UIImage(named: "search_unselected") ?? UIImage(), rootViewController: ExplorerController())
        
        let notifification = templateNavigationController(image: UIImage(named: "like_unselected") ?? UIImage(), rootViewController: NotificationController())
        
        let conversation = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1") ?? UIImage(), rootViewController: ConversationController())
        
        viewControllers = [
            nav,
            explorer,
            notifification,
            conversation
        ]
    }
    
    func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
}
