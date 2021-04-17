//
//  ViewController.swift
//  FontApplied
//
//  Created by SIU on 2021/04/17.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: CGFloat(view.center.x), y: CGFloat(view.center.y))
        label.textAlignment = .center
        label.font = UIFont(name:"Roboto-Bold",size:20)
        label.text = "This is Label"
        
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        button.center = CGPoint(x: CGFloat(view.center.x), y: CGFloat(view.center.y + 100))
        button.titleLabel?.font = UIFont(name:"Roboto-Bold",size:20)
        button.setTitle("This is Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        view.addSubview(button)
        
    }

    @objc func buttonAction(sender: UIButton!) {
        print("Button Tapped")
    }

}

