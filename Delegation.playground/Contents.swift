//
//  ViewController.swift
//  DeligationExample
//
//  Created by Feihuan Peng on 3/2/24.
//

import UIKit
//====================================parent========================================
// ---------------step 4: conform parent to that protocol
class ViewController: UIViewController, NotificationSettingViewDelegate {
    
    var isTapped: Bool = false
 
    private var tapped: String {
        return isTapped ? "tapped" : "not tapped"
    }
    //-------------------- step6: make instance of child view // could be in button func

    private let notificationsView = NotificationSettingView()
    private var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //-------------------- step7: make sure tell swift the var delegate in notificationview is self
        notificationsView.delegate = self
        view.addSubview(notificationsView)
        
        label.text = tapped
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        notificationsView.frame = CGRect(x: 10, y: view.safeAreaInsets.top, width: view.frame.size.width - 20, height: view.frame.size.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom)
    }
    

        
    
    
    //-------------------- step5: implement function required by protocol
    func didTapEnableButton() {
        let alert = UIAlertController(title: "Notification Enabled", message: "Thank you for understanding how delegate workds", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        
        isTapped.toggle()
        
        label.text = isTapped ? "tapped" : "not tapped"
        
        notificationsView.enabled = isTapped
        
        present(alert, animated: true)
    }
}


//===============================================child================================
// ---------------------------step 1: define protocol require a function
protocol NotificationSettingViewDelegate: AnyObject {
    func didTapEnableButton()
}

class NotificationSettingView: UIView {
    
    var enabled: Bool = false {
        didSet {
            // Update button title whenever the enabled property changes
            button.setTitle(enabled ? "Disable" : "Enable", for: .normal)
        }
    }
    
    //-------------------------step 2: define wear var delegate object witch is delegate protocol Type,means it will have the function implemented in this object, has to be optional
    weak var delegate:NotificationSettingViewDelegate?
    
    @objc func didTapButton () {
        print("tap")
        // notify controller button tapped
        //--------------------------- step 3: call delegatefunction in delegate object
        delegate?.didTapEnableButton()
    }
    
    
    private let imageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "pencil.circle")
        imageView.tintColor = .blue
        return imageView
    }()
    
    private let label:UILabel = {
        let label = UILabel()
        label.text = "To stay up-to-date enable Push Notification"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private lazy var button:UIButton = {
        let button = UIButton()
        button.setTitle(enabled ? "Disabble" : "Enable", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize = bounds.size.width / 2
        imageView.frame = CGRect(x: (bounds.size.width - imageSize) / 2, y: 30, width: imageSize, height: imageSize)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        label.frame = CGRect(x: 10, y: imageSize+50, width: frame.size.width-20, height: 100)
        button.frame = CGRect(x: 40, y: imageSize+160, width: frame.size.width-80, height: 50)
    }

}
