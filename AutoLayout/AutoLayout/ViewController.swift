//
//  ViewController.swift
//  AutoLayout
//
//  Created by Loris on 06/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // here's our entry point into our app
//        view.backgroundColor = .yellow
        
        let imageView = UIImageView(image: UIImage(named: "bear_first"))
        view.addSubview(imageView)
//        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        // this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
    }


}

