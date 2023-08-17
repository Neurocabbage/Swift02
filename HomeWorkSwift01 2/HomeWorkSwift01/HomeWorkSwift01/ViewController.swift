//
//  ViewController.swift
//  HomeWorkSwift01
//
//  Created by Fedot on 8/14/23.
//  Copyright © 2023 Fedot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 2
        imageView.layer.cornerRadius = 15
        return imageView
        
    }()
    
    private var labelView: UILabel = {
        let label = UILabel()
        label.text = "Autorization"
        label.textAlignment = .center
        return label
    }()
    
    private var textFldLoginView: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Логин"
        return textField
    }()
    
    private var textFldPasswordView: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Пароль"
        return textField
    }()
    
    private var buttonView: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
        setupConstraints()
        buttonView.addTarget(self, action: #selector(enterTabViewTap), for: .touchUpInside)
        
    }

    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(labelView)
        view.addSubview(textFldLoginView)
        view.addSubview(textFldPasswordView)
        view.addSubview(buttonView)
    }

    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        labelView.translatesAutoresizingMaskIntoConstraints = false
        textFldLoginView.translatesAutoresizingMaskIntoConstraints = false
        textFldPasswordView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            labelView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            labelView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            labelView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 4),

                
            textFldLoginView.topAnchor.constraint(equalTo: labelView.bottomAnchor, constant: 20),
            textFldLoginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFldLoginView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 5),

            textFldPasswordView.topAnchor.constraint(equalTo: textFldLoginView.bottomAnchor, constant: 20),
            textFldPasswordView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFldPasswordView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 5),

            buttonView.topAnchor.constraint(equalTo: textFldPasswordView.topAnchor, constant: 30),
            buttonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            ])
        }
    }

private extension ViewController {
    @objc func enterTabViewTap() {
        let friendsVC = UINavigationController(rootViewController: FriendsTableViewController())
        friendsVC.tabBarItem.title = "Friends"

        let groupsVC = UINavigationController(rootViewController: GroupsTableViewController())
        groupsVC.tabBarItem.title = "Groups"

        let photosVC = UINavigationController(rootViewController:
            PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()))
        photosVC.tabBarItem.title = "Photos"

        let tabsControllers = [friendsVC, groupsVC, photosVC]
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = tabsControllers

        navigationController?.pushViewController(tabBarVC, animated: true)
    }
}
