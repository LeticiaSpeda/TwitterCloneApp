import UIKit

class MainTabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    func configureViewControllers() {
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        
        let explorer = ExplorerController()
        explorer.tabBarItem.image = UIImage(named: "search_unselected")
        
        
        let notifification = NotificationController()
        notifification.tabBarItem.image = UIImage(named: "search_unselected")
        
        let conversation = ConversationController()
        conversation.tabBarItem.image = UIImage(named: "search_unselected")
        
        viewControllers = [
            feed,
            explorer,
            notifification,
            conversation
        ]
    }
    
}
