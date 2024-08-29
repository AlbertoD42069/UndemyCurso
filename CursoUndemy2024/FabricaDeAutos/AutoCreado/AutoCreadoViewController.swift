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
        viewNavegacion.delegate = self
        title = "Auto Creado"
        view.addSubview(viewNavegacion)
        view.backgroundColor = .white

        NSLayoutConstraint.activate([
            viewNavegacion.topAnchor.constraint(equalTo: view.topAnchor),
            viewNavegacion.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewNavegacion.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewNavegacion.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
extension AutoCreadoViewController : AutoCreadoProtocol {
    func setupComponentes() {
        viewNavegacion.backgroundColor = .red
        
    }
    
    
}
