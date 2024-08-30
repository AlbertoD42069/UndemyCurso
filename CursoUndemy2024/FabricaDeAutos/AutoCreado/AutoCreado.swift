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
        stack.axis = .vertical
        stack.distribution = .fillEqually
        return stack
    }()
    private let colorLbl: UILabel = {
        let lbl : UILabel = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .left
        return lbl
    }()
    private let numeroLlantaLbl: UILabel = {
        let lbl : UILabel = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .left
        return lbl
    }()
    private let precioLbl: UILabel = {
        let lbl : UILabel = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .left
        return lbl
    }()
    private let añoModeloLbl: UILabel = {
        let lbl : UILabel = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .left
        return lbl
    }()
    private let marcaLbl: UILabel = {
        let lbl : UILabel = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .left
        return lbl
    }()
    var btnAcelerar: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Acelerar", for: .normal)
       btn.addTarget(self, action: #selector(autoCaminando), for: .touchUpInside)
        btn.tag = 1
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        btn.setTitleColor(.black, for: .normal)
       return btn
    }()
    var btnFrenar: UIButton = {
       let btn : UIButton = UIButton(type: .system)
       btn.setTitle("Frenar", for: .normal)
       btn.addTarget(self, action: #selector(autoParado), for: .touchUpInside)
       btn.tag = 2
       btn.translatesAutoresizingMaskIntoConstraints = false
       btn.backgroundColor = .lightGray
       btn.layer.borderWidth = 1
       btn.layer.cornerRadius = 8
        btn.setTitleColor(.black, for: .normal)
       return btn
    }()
    private let contentBtnEncendido: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()
    private let statusAutoEncendido: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "auto apagado"
        return label
    }()
    private let statusAutoCaminando: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "el auto esta detenido"
        label.textAlignment = .center
        label.isHidden = true
        
        return label
    }()
    //var delegate : AutoCreadoProtocol?
    var autoData = Automovil()
    var statusAuto: Bool?
    
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
        
        contentViewAuto.addSubview(stackDetalles)
        
        stackDetalles.addArrangedSubview(colorLbl)
        stackDetalles.addArrangedSubview(numeroLlantaLbl)
        stackDetalles.addArrangedSubview(precioLbl)
        stackDetalles.addArrangedSubview(añoModeloLbl)
        stackDetalles.addArrangedSubview(marcaLbl)
        
        contentViewAuto.addSubview(statusAutoEncendido)
        
        contentViewAuto.addSubview(contentBtnEncendido)
        contentBtnEncendido.addSubview(btnAcelerar)
        contentBtnEncendido.addSubview(btnFrenar)
        
        contentViewAuto.addSubview(statusAutoCaminando)


    }
    func setupAutoView(titleAuto: String){
        //let tituloAuto = delegate?.setupComp(titleAuto: titleAuto)
        //if let titleFinish = titleLabels.text {
        
            switch titleAuto {
            case "Tsuru":
                listoLabel.text = "Marca: \(titleAuto)"
                imageAuto.image = UIImage(named: "tsuru")
                autoData.color = "azul"
                autoData.numeroLlantas = "4"
                autoData.precio = "10000"
                autoData.añoModelo = "2024"

                colorLbl.text = "color: \(autoData.color ?? "")"
                numeroLlantaLbl.text = "llantas: \(autoData.numeroLlantas ?? "")"
                precioLbl.text = "precio: $ \(autoData.precio ?? "")"
                añoModeloLbl.text = "año: \(autoData.añoModelo ?? "")"
                marcaLbl.text = "marca: \(titleAuto)"
                
            case "Mazda":
                listoLabel.text = "Marca: \(titleAuto)"
                imageAuto.image = UIImage(named: "mazda")
                
                autoData.color = "blanco"
                autoData.numeroLlantas = "4"
                autoData.precio = "15000"
                autoData.añoModelo = "2022"
                
                colorLbl.text = "color: \(autoData.color ?? "")"
                numeroLlantaLbl.text = "llantas: \(autoData.numeroLlantas ?? "")"
                precioLbl.text = "precio: $ \(autoData.precio ?? "")"
                añoModeloLbl.text = "año: \(autoData.añoModelo ?? "")"
                marcaLbl.text = "marca: \(titleAuto)"
                
            case "Spark":
                listoLabel.text = "Marca: \(titleAuto)"
                imageAuto.image = UIImage(named: "spark")
                
                autoData.color = "rojo"
                autoData.numeroLlantas = "4"
                autoData.precio = "20000"
                autoData.añoModelo = "2023"

                
                colorLbl.text = "color: \(autoData.color ?? "")"
                numeroLlantaLbl.text = "llantas: \(autoData.numeroLlantas ?? "")"
                precioLbl.text = "precio: $ \(autoData.precio ?? "")"
                añoModeloLbl.text = "año: \(autoData.añoModelo ?? "")"
                marcaLbl.text = "marca: \(titleAuto)"
                
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
            imageAuto.widthAnchor.constraint(equalToConstant: 150),
            imageAuto.heightAnchor.constraint(equalToConstant: 150),
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
            
            stackDetalles.topAnchor.constraint(equalTo: lineViewDescripcion.bottomAnchor, constant:  5),
            stackDetalles.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -5),
            stackDetalles.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 5),
            stackDetalles.heightAnchor.constraint(equalToConstant: 150),
            
            statusAutoEncendido.topAnchor.constraint(equalTo: stackDetalles.bottomAnchor, constant:  5),
            statusAutoEncendido.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -5),
            statusAutoEncendido.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 5),
            
            contentBtnEncendido.topAnchor.constraint(equalTo: statusAutoEncendido.bottomAnchor, constant:  5),
            contentBtnEncendido.trailingAnchor.constraint(equalTo: contentViewAuto.trailingAnchor, constant: -50),
            contentBtnEncendido.leadingAnchor.constraint(equalTo: contentViewAuto.leadingAnchor, constant: 50),
            contentBtnEncendido.heightAnchor.constraint(equalToConstant: 70),
            
            btnAcelerar.topAnchor.constraint(equalTo: contentBtnEncendido.topAnchor, constant: 10),
            btnAcelerar.leadingAnchor.constraint(equalTo: contentBtnEncendido.leadingAnchor, constant: 5),
            btnAcelerar.widthAnchor.constraint(equalToConstant: 125),
            btnAcelerar.heightAnchor.constraint(equalToConstant: 50),
            
            btnFrenar.topAnchor.constraint(equalTo: contentBtnEncendido.topAnchor, constant: 10),
            btnFrenar.trailingAnchor.constraint(equalTo: contentBtnEncendido.trailingAnchor, constant: -5),
            btnFrenar.widthAnchor.constraint(equalToConstant: 125),
            btnFrenar.heightAnchor.constraint(equalToConstant: 50),
            
            statusAutoCaminando.topAnchor.constraint(equalTo: contentBtnEncendido.bottomAnchor, constant: 5),
            statusAutoCaminando.leadingAnchor.constraint(equalTo: contentBtnEncendido.leadingAnchor, constant: 5),
            statusAutoCaminando.trailingAnchor.constraint(equalTo: contentBtnEncendido.trailingAnchor, constant: -5),

            
        ])
        //stackDetalles.setCustomSpacing(50, after: colorLbl)
    }
    
    @objc func encenderAuto(){
        statusAuto = autoData.encender()
        statusAuto(status: statusAuto ?? false)
        statusAutoCaminando.isHidden = false

    }
    @objc func apagarAuto(){
        statusAuto = autoData.apagar()
        statusAuto(status: statusAuto ?? false)
        statusAutoCaminando.isHidden = true

    }
    
    @objc func autoCaminando(){
        let puchButton = btnAcelerar.tag
        elAutoEstaCaminando(statusButton: puchButton)
    }
    @objc func autoParado(){
        let puchButton = btnFrenar.tag
        elAutoEstaCaminando(statusButton: puchButton)

    }
    
    
    func statusAuto(status: Bool){
        if status {
            contentBtnEncendido.isHidden = false
            btnEncender.backgroundColor = .green
            btnApagar.backgroundColor = .lightGray
            statusAutoEncendido.text = "auto encendido correctamente"

        }else {
            contentBtnEncendido.isHidden = true
            btnEncender.backgroundColor = .lightGray
            btnApagar.backgroundColor = .red
            statusAutoEncendido.text = "auto apagado correctamente"

        }
    }
    func elAutoEstaCaminando(statusButton tag: Int){
        switch tag {
        case 1:
            statusAutoCaminando.text = "el auto esta caminando"
        case 2:
            statusAutoCaminando.text = "el auto se dettuvo"
        default:
            "error de movimiento"
        }
    }
}
