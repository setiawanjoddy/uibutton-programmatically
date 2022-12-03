//
//  ViewController.swift
//  Programmatic-UIButton
//
//  Created by Setiawan Joddy on 03/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton()
        button.setTitle("Click Me", for: .normal)
        button.backgroundColor = .systemBlue
        view.addSubview(button)
        button.frame = CGRect(x: 100, y: 100, width: 210, height: 50)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        let label = UILabel(frame: CGRect(x: 100, y: 170, width: 210, height: 50))
        label.textAlignment = .center
        label.text = "Hello, Just Click It!"
        view.addSubview(label)
        
    }
    
    @objc func buttonTapped() {
        if self.view.backgroundColor == .systemCyan {
            self.view.backgroundColor = .white
            print("Background Color is now White")
            
        }
        else {
            self.view.backgroundColor = .systemCyan
            print("Background Color is now Cyan")
        }
        //print("Button Tapped")
    }
   
    
}
