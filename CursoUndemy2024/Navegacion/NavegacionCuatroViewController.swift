//
//  NavegacionCuatroViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 20/08/24.
//

import UIKit

class NavegacionCuatroViewController: UIViewController {
    
    private let listoLabel: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Listo"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(listoLabel)
        title = "Blanco"

       NSLayoutConstraint.activate([
            listoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            listoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
}
