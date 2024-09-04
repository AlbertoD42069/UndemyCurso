//
//  PersistenciaDatosUIView.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 03/09/24.
//

import UIKit
protocol PersistenciaDatosUIViewProtocol: AnyObject {
    func getAction()
    func putAction()
    func deleteAction()
}

class PersistenciaDatosUIView: UIView {

    private let viewPersitenciaDatos: UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let stackViewPersistenciaDAtos : UIStackView = {
        let stack : UIStackView = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    var btnGET: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("GET", for: .normal)
        btn.addTarget(self, action: #selector(getAction), for: .touchUpInside)
        btn.tag = 2
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var btnPUT: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("PUT", for: .normal)
        btn.addTarget(self, action: #selector(putAction), for: .touchUpInside)
        btn.tag = 2
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var btnDELETE: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("DELETE", for: .normal)
        btn.addTarget(self, action: #selector(deleteAction), for: .touchUpInside)
        btn.tag = 2
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    
    var delegatePersistenciaDatos: PersistenciaDatosUIViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(viewPersitenciaDatos)
        viewPersitenciaDatos.addSubview(stackViewPersistenciaDAtos)
        
        stackViewPersistenciaDAtos.addArrangedSubview(btnGET)
        stackViewPersistenciaDAtos.addArrangedSubview(btnPUT)
        stackViewPersistenciaDAtos.addArrangedSubview(btnDELETE)
        
        NSLayoutConstraint.activate([
            viewPersitenciaDatos.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            viewPersitenciaDatos.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 5),
            viewPersitenciaDatos.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -5),
            viewPersitenciaDatos.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -5),
            
            stackViewPersistenciaDAtos.topAnchor.constraint(equalTo: viewPersitenciaDatos.topAnchor, constant: 250),
            stackViewPersistenciaDAtos.leadingAnchor.constraint(equalTo: viewPersitenciaDatos.leadingAnchor, constant: 50),
            stackViewPersistenciaDAtos.trailingAnchor.constraint(equalTo: viewPersitenciaDatos.trailingAnchor, constant: -50),
            stackViewPersistenciaDAtos.bottomAnchor.constraint(equalTo: viewPersitenciaDatos.bottomAnchor, constant: -250),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: object func
    
    //Recuperar las preferencias
    @objc func getAction(){
        delegatePersistenciaDatos?.getAction()
        /*
        if let valuePD = UserDefaults.standard.string(forKey: clavePersitenciaDatos) {
            showAlertView(mensaje: valuePD)
        }else {
            showAlertView(mensaje: "error")
            
        }*/
    }
    //guardar las preferencias
    @objc func putAction(){
        delegatePersistenciaDatos?.putAction()
        /*
        UserDefaults.standard.setValue("Hola Mundo", forKey: clavePersitenciaDatos)
        UserDefaults.standard.synchronize()
        showAlertView(mensaje: "Hemos guardado un valor")*/
    }
    //borrar las preferencias
    @objc func deleteAction(){
        delegatePersistenciaDatos?.deleteAction()
        /*UserDefaults.standard.removeObject(forKey: clavePersitenciaDatos)
        showAlertView(mensaje: "Hemos borrado un valor")*/

    }
    /*func showAlertView(mensaje: String) {
        let viewAlert = UIAlertController(title: "Datos Persistentes", message: mensaje, preferredStyle: .alert)
        
    }*/
}
