//
//  DetailViewController.swift
//  P1(Code)
//
//  Created by Erni Iun on 2021/08/07.
//

import UIKit

class DetailViewController: UIViewController {

    let imageView = UIImageView()
    
    var selectedImg: String?
    
    var imgCount = 0
    var imgPos = 0
    
    override func loadView() {
        super.loadView()
        setupImageView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupNavController()
        
        if let imgToLoad = selectedImg {
            imageView.image = UIImage(named: imgToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.hidesBarsOnTap = false
    }
    
    func setupNavController() {
        title = "Pic \(imgPos) of \(imgCount)"
        navigationItem.largeTitleDisplayMode = .never
    }
    
    func setupImageView() {
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor),
        ])
        
        imageView.contentMode = .scaleAspectFit
    }

}
