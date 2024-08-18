//
//  PalindromoViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 05/08/24.
//

import UIKit

class PalindromoViewController: UIViewController {
   
    private let viewPalindromo : UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private let textPalindromo : UITextField = {
        let txt : UITextField = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "  texto"
        txt.layer.borderColor = .some(UIColor.lightGray.cgColor)
        txt.layer.borderWidth = 1
        return txt
    }()
    
    private let buttonPalindromo: UIButton = {
        let btn: UIButton = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Palindromo", for: .normal)
        btn.addTarget(self, action: #selector(palindromo), for: .touchUpInside)
        btn.backgroundColor = .gray
        return btn
    }()
    
    private let labelPalindromo: UILabel = {
        let lbl: UILabel = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    let viewModel = PalindromoViewModel()
    var status : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        addComponesView()
        setupAutolayout()
        //print(palindromo(texto: "anita lava la tina"))
        // Do any additional setup after loading the view.
    }
    @objc func palindromo(){
        let text = textPalindromo.text!
        status = viewModel.isItPalindrome(texto: text)
        if status {
            labelPalindromo.text = "Es palindromo"
        }else {
            labelPalindromo.text = "No es palindromo"
        }
            
    }
    func addComponesView(){
        view.addSubview(viewPalindromo)
        viewPalindromo.addSubview(textPalindromo)
        viewPalindromo.addSubview(buttonPalindromo)
        viewPalindromo.addSubview(labelPalindromo)
    }
    func setupAutolayout(){
        NSLayoutConstraint.activate([
            viewPalindromo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewPalindromo.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viewPalindromo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            viewPalindromo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            textPalindromo.topAnchor.constraint(equalTo: viewPalindromo.topAnchor, constant: 10),
            textPalindromo.trailingAnchor.constraint(equalTo: viewPalindromo.trailingAnchor, constant: -10),
            textPalindromo.leadingAnchor.constraint(equalTo: viewPalindromo.leadingAnchor, constant: 10),
            textPalindromo.heightAnchor.constraint(equalToConstant: 30),
            
            buttonPalindromo.topAnchor.constraint(equalTo: textPalindromo.bottomAnchor, constant: 10),
            buttonPalindromo.trailingAnchor.constraint(equalTo: viewPalindromo.trailingAnchor, constant: -10),
            buttonPalindromo.leadingAnchor.constraint(equalTo: viewPalindromo.leadingAnchor, constant: 10),
            
            labelPalindromo.topAnchor.constraint(equalTo: buttonPalindromo.bottomAnchor, constant: 10),
            labelPalindromo.trailingAnchor.constraint(equalTo: viewPalindromo.trailingAnchor, constant: -10),
            labelPalindromo.leadingAnchor.constraint(equalTo: viewPalindromo.leadingAnchor, constant: 10),


        ])
    }
}
/*
extension PalindromoViewController : UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //textFieldCustom.resignFirstResponder()
}
    public func textFieldDidEndEditing(_ textField: UITextField) {
        //buttonCustom.setTitle(textFieldCustom.text, for: .normal)
        //print(textFieldCustom.text ?? "")
    }
}
*/
