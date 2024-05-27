import UIKit

class FeedController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    
    func configureView() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
