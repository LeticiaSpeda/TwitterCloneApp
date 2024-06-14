import UIKit

class LoginViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage.twitterLogo
        return image
    }()
    
    private lazy var emailContainerView: UIView = {
        let image = #imageLiteral(resourceName: "mail")
        let view = Utilities().inputContainerView(withImage: image, textField: emailTextField)
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let image = #imageLiteral(resourceName: "password")
        let view = Utilities().inputContainerView(withImage: image, textField: passwordTextField)
        return view
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = Utilities().textField(withPlaceHolder: "email")
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = Utilities().textField(withPlaceHolder: "password")
        textField.isSecureTextEntry = true
        return textField
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
        stack.anchor(
            top: logoImageView.bottomAnchor,
            left: view.leftAnchor, right: view.rightAnchor,
            paddingLeft: 16,
            paddingRight: 16
        )
        
    }
}
