import UIKit

class MainTabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
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
