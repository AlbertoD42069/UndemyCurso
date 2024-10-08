//
//  NavegacionCuatroViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 20/08/24.
//

import UIKit

class NavegacionCuatroViewController: UIViewController {
    
    let titleLabels: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    private let listoLabel: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Listo"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(listoLabel)
        view.addSubview(titleLabels)
        
        if let titleFinish = titleLabels.text {
            self.title = titleFinish
            
            switch self.title {
            case "Negro":
                view.backgroundColor = .black
                listoLabel.textColor = .white
                titleLabels.textColor = .white
            case "Rojo":
                view.backgroundColor = .red
            case "Blanco":
                view.backgroundColor = .white
            default:
                "error"
            }
        }

       NSLayoutConstraint.activate([
        titleLabels.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
        titleLabels.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        listoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        listoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
}
