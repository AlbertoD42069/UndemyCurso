//
//  AutoCreado.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 29/08/24.
//

import Foundation
import UIKit

protocol AutoCreadoProtocol: AnyObject {
    func setupComponentes()
}

class AutoCreado: UIView {
    private let listoLabel: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Listo"
        label.textAlignment = .center
        return label
    }()
    
    var delegate : AutoCreadoProtocol?

    override init (frame : CGRect) {
        super.init(frame : frame)
        addComponentes()
        setupNavegation()
        setupAutoLayout()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func addComponentes(){
        addSubview(listoLabel)
    }
    func setupNavegation(){
        delegate?.setupComponentes()
        /*
        if let titleFinish = titleLabels.text {
            switch titleFinish {
            case "Tsuru":
                backgroundColor = .black
                listoLabel.textColor = .white
                titleLabels.textColor = .white
            case "Mazda":
                backgroundColor = .red
            case "Spark":
                backgroundColor = .white
            default:
                print("error")
            }
        }*/
    }
    func setupAutoLayout(){
        
        NSLayoutConstraint.activate([
            listoLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            listoLabel.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -5),
            listoLabel.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 5),

         ])
    }
}
