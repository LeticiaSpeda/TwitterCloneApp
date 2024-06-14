import UIKit

class Utilities {
    
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        let imagView = UIImageView()
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imagView.image = image
        imagView.tintColor = .white
        view.addSubview(imagView)
        
        imagView.anchor(
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            paddingLeft: 8,
            paddingBottom: 8
        )
        
        imagView.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: imagView.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)
        return view
    }
    
    
    func textField(withPlaceHolder placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.tintColor = .white
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }
    
}
