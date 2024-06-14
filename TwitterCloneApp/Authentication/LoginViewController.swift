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
    
     private lazy var loginButton: UIButton = {
        let button = UIButton()
         button.setTitle("Log in", for: .normal)
         button.setTitleColor(.twitterBlue, for: .normal)
         button.backgroundColor = .white
         button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
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
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView, loginButton])
        stack.axis = .vertical
        stack.spacing = 20
        view.addSubview(stack)
        stack.anchor(
            top: logoImageView.bottomAnchor,
            left: view.leftAnchor, right: view.rightAnchor,
            paddingLeft: 32,
            paddingRight: 32
        )
        
    }
}
