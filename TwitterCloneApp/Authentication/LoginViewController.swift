import UIKit

class LoginViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage.twitterLogo
        return image
    }()
    
    private lazy var emailContainerView = {
        let view = UIView()
        let emailIcon = UIImageView()
        emailIcon.image = UIImage.mail
        emailIcon.tintColor = .white
        view.addSubview(emailIcon)
        emailIcon.anchor(
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            paddingLeft: 8,
            paddingBottom: 8
        )
        emailIcon.setDimensions(width: 24, height: 24)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    
    private lazy var passwordContainerView = {
        let view = UIView()
        let passwordIcon = UIImageView()
        passwordIcon.image = UIImage.password
        passwordIcon.tintColor = .white
        view.addSubview(passwordIcon)
        passwordIcon.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        passwordIcon.setDimensions(width: 24, height: 24)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
        
    }
}
