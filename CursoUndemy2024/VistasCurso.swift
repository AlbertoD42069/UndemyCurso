//
//  VistasCurso.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 02/08/24.
//

import UIKit

class VistasCurso: UIView {
    
    private let vista: UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private let lineaDivision : UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    private let imagen : UIImageView = {
        let img : UIImageView = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .systemTeal
        img.image = UIImage(named: "random.svg")
        return img
    }()
    private let labelText : UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hola Mundo"
        return label
    }()
    private let button : UIButton = {
        let btn : UIButton = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 8
        btn.setTitle("Presionar", for: .normal)
        btn.addTarget(self, action: (#selector(puchButton)), for: .touchUpInside)
        return btn
    }()
    private let stackView : UIStackView = {
        let stack : UIStackView = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        return stack
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setAutoLayout()
        setupViewCustom()
        setupViewAutoLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addViews(){
        addSubview(stackView)
        //stackView.addSubview(vista)
        //stackView.addSubview(lineaDivision)
        //stackView.addSubview(imagen)
        stackView.addArrangedSubview(vista)
        stackView.addArrangedSubview(lineaDivision)
        stackView.addArrangedSubview(imagen)
        
    }
    func setAutoLayout(){
        NSLayoutConstraint.activate([
            
            stackView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            stackView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            stackView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            stackView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            vista.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 5),
            vista.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            vista.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            vista.heightAnchor.constraint(equalToConstant: 100),
            
            lineaDivision.topAnchor.constraint(equalTo: vista.bottomAnchor, constant: 10),
            lineaDivision.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            lineaDivision.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            lineaDivision.heightAnchor.constraint(equalToConstant: 1),
            
            imagen.topAnchor.constraint(equalTo: lineaDivision.bottomAnchor, constant: 10),
            imagen.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            imagen.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            imagen.heightAnchor.constraint(equalToConstant: 150),
        ])
        
    }
    func setupViewCustom(){
        vista.addSubview(labelText)
        vista.addSubview(button)
    }
    func setupViewAutoLayout(){
        NSLayoutConstraint.activate([
            labelText.topAnchor.constraint(equalTo: vista.topAnchor, constant: 5),
            labelText.trailingAnchor.constraint(equalTo: vista.trailingAnchor, constant: -5),
            labelText.leadingAnchor.constraint(equalTo: vista.leadingAnchor, constant: 5),
            
            button.topAnchor.constraint(equalTo: labelText.bottomAnchor, constant: 5),
            button.trailingAnchor.constraint(equalTo: vista.trailingAnchor, constant: -5),
            button.leadingAnchor.constraint(equalTo: vista.leadingAnchor, constant: 5),
            
        ])
    }
    @objc func puchButton(){
        vista.isHidden = true
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
