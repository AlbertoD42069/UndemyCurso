//
//  NavegacionDosViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 16/08/24.
//

import UIKit

class NavegacionDosViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .green
        //let butonLeft = UIBarButtonItem(title: "rojo", style: .plain, target: self, action: #selector((goRojo)))
        //navigationItem.rightBarButtonItem = butonLeft
        
        //title = "verde"

        /*view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])*/
    }
   @objc func goRojo(){
        print("presionado")
        let vc =  NavegacionTresViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}
