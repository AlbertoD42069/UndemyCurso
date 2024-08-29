//
//  AutoCreadoViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 29/08/24.
//

import UIKit

class AutoCreadoViewController: UIViewController {
    
    private let viewNavegacion : AutoCreado = {
        let viewCollection: AutoCreado = AutoCreado()
        viewCollection.translatesAutoresizingMaskIntoConstraints = false
        return viewCollection
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "Auto Creado"
        view.addSubview(viewNavegacion)

        NSLayoutConstraint.activate([
            viewNavegacion.topAnchor.constraint(equalTo: view.topAnchor),
            viewNavegacion.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewNavegacion.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewNavegacion.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
