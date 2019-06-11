

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var window: UIWindow?
    var textField : UITextField!
    var label : UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="QUIZ"
        setupViews()
        view.backgroundColor = UIColor.white
        
        let placeholder = NSAttributedString(string: "ENTER YOUR NAME", attributes: [NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        
        textField = UITextField(frame: CGRect(x: 70, y: 280, width: 250, height: 80))
        
        textField.attributedPlaceholder = placeholder
        textField.textColor = UIColor.black
        textField.delegate = self
        textField.borderStyle = UITextBorderStyle.roundedRect
        textField.clearsOnBeginEditing = true
        view.addSubview(textField)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @objc func btnGetStartedAction() {
        if textField.text != "" {
        let v = QuizVC()
            self.navigationController?.pushViewController(v, animated: true)}
        else {
                let alert = UIAlertController(title: "ERROR", message: "FILL OUT YOUR NAME", preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true)
        }
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        self.view.addSubview(btnGetStarted)
        btnGetStarted.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnGetStarted.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnGetStarted.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnGetStarted.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive=true
        
    }

    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="ARE WE REAL-FRIENDS?"
        lbl.textColor=UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 32)
        lbl.numberOfLines = 3
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnGetStarted: UIButton = {
        let btn=UIButton()
        btn.setTitle("START", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.red
        btn.layer.cornerRadius=5
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnGetStartedAction), for: .touchUpInside)
        return btn
    }()
    
}









