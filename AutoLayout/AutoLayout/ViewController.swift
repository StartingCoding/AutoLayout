//
//  ViewController.swift
//  AutoLayout
//
//  Created by Loris on 06/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    // let's avoid polluting viewDidLoad
    // {} is referred to as closure, or anon. functions
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bear_first"))
        // this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // here's our entry point into our app
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
        
    }


    private func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

