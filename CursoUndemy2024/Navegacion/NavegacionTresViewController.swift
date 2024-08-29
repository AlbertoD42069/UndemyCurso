//
//  NavegacionTresViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 20/08/24.
//

import UIKit

class NavegacionTresViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let butonLeft = UIBarButtonItem(title: "blanco", style: .plain, target: self, action: #selector((goWhite)))
        //navigationItem.rightBarButtonItem = butonLeft

        view.backgroundColor = .red
       //view.addSubview(button)
        //title = "rojo"
/*
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
        */
    }
   @objc func goWhite(){
        print("presionado")
        let vc =  NavegacionCuatroViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
