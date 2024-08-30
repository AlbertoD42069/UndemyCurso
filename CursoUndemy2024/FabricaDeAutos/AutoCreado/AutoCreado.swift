//
//  AutoCreado.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 29/08/24.
//

import Foundation
import UIKit

protocol AutoCreadoProtocol: AnyObject {
    func setupComp(titleAuto: String) -> String
}

class AutoCreado: UIView {
    
    private let contentViewAuto: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private let listoLabel: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    private let lineView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    private let imageAuto: UIImageView = {
        let image :UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.image = UIImage(systemName: "circle.fill")
        return image
    }()
    private let descripcionLabel: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Descripcion"
        return label
    }()
    private let lineViewDescripcion: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    var btnEncender: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Encendido", for: .normal)
       btn.addTarget(self, action: #selector(encenderAuto), for: .touchUpInside)
        btn.tag = 1
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        btn.setTitleColor(.black, for: .normal)
       return btn
    }()
    var btnApagar: UIButton = {
       let btn : UIButton = UIButton(type: .system)
       btn.setTitle("Apagado", for: .normal)
       btn.addTarget(self, action: #selector(apagarAuto), for: .touchUpInside)
       btn.tag = 1
       btn.translatesAutoresizingMaskIntoConstraints = false
       btn.backgroundColor = .lightGray
       btn.layer.borderWidth = 1
       btn.layer.cornerRadius = 8
        btn.setTitleColor(.black, for: .normal)
       return btn
    }()
    private let contentBtn: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let stackDetalles: UIStackView = {
        let stack : UIStackView = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    var delegate : AutoCreadoProtocol?

    override init (frame : CGRect) {
        super.init(frame : frame)
        addComponentes()
        //setupNavegation()
        setupAutoLayout()
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func addComponentes(){
        addSubview(contentViewAuto)
        
        contentViewAuto.addSubview(listoLabel)
        contentViewAuto.addSubview(lineView)
        contentViewAuto.addSubview(imageAuto)
        
        contentViewAuto.addSubview(contentBtn)
        
        contentBtn.addSubview(btnApagar)
        contentBtn.addSubview(btnEncender)
        
        contentViewAuto.addSubview(descripcionLabel)
        contentViewAuto.addSubview(lineViewDescripcion)

        
    }
    func setupAutoView(titleAuto: String){
        //let tituloAuto = delegate?.setupComp(titleAuto: titleAuto)
        //if let titleFinish = titleLabels.text {
            switch titleAuto {
            case "Tsuru":
                listoLabel.text = "Marca: \(titleAuto)"
                print("auto creado \(titleAuto) --")
            case "Mazda":
                listoLabel.text = "Marca: \(titleAuto)"
                print("auto creado \(titleAuto) --")
            case "Spark":
                listoLabel.text = "Marca: \(titleAuto)"
                print("auto creado \(titleAuto) --")
            default:
                print("error")
            //}
        }
    }
    func setupAutoLayout(){
        
        NSLayoutConstraint.activate([
            contentViewAuto.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            contentViewAuto.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            contentViewAuto.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            contentViewAuto.bottomAnchor.constraint(equalTo: bottomAnchor),

            listoLabel.topAnchor.constraint(equalTo: contentViewAuto.topAnchor, constant:  5),
            listoLabel.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -5),
            listoLabel.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 5),
            
            lineView.topAnchor.constraint(equalTo: listoLabel.bottomAnchor, constant:  15),
            lineView.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -5),
            lineView.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 5),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            imageAuto.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant:  5),
            imageAuto.widthAnchor.constraint(equalToConstant: 100),
            imageAuto.heightAnchor.constraint(equalToConstant: 100),
            imageAuto.centerXAnchor.constraint(equalTo: centerXAnchor),

            contentBtn.topAnchor.constraint(equalTo: imageAuto.bottomAnchor, constant:  5),
            contentBtn.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -50),
            contentBtn.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 50),
            contentBtn.heightAnchor.constraint(equalToConstant: 70),

            btnEncender.topAnchor.constraint(equalTo: contentBtn.topAnchor, constant: 10),
            btnEncender.leadingAnchor.constraint(equalTo: contentBtn.leadingAnchor, constant: 5),
            btnEncender.widthAnchor.constraint(equalToConstant: 125),
            btnEncender.heightAnchor.constraint(equalToConstant: 50),
            
            btnApagar.topAnchor.constraint(equalTo: contentBtn.topAnchor, constant: 10),
            btnApagar.trailingAnchor.constraint(equalTo: contentBtn.trailingAnchor, constant: -5),
            btnApagar.widthAnchor.constraint(equalToConstant: 125),
            btnApagar.heightAnchor.constraint(equalToConstant: 50),
            
            descripcionLabel.topAnchor.constraint(equalTo: contentBtn.bottomAnchor, constant:  5),
            descripcionLabel.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -5),
            descripcionLabel.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 5),
           
            lineViewDescripcion.topAnchor.constraint(equalTo: descripcionLabel.bottomAnchor, constant:  15),
            lineViewDescripcion.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -5),
            lineViewDescripcion.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 5),
            lineViewDescripcion.heightAnchor.constraint(equalToConstant: 1),
            
            
         ])
    }
    
    @objc func encenderAuto(){
        btnEncender.backgroundColor = .green
        btnApagar.backgroundColor = .lightGray
    }
    @objc func apagarAuto(){
        btnEncender.backgroundColor = .lightGray
        btnApagar.backgroundColor = .red
    }
}
