//
//  NavegacionTresViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 20/08/24.
//

import UIKit

class NavegacionTresViewController: UIViewController {
    /*
    private let button: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("blanco", for: .normal)
        btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
       /* view.addSubview(button)
        title = "rojo"

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
        */
    }
   /* @objc func pushNav(){
        print("presionado")
        let vc =  NavegacionCuatroViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }*/

}
