//
//  ScrollViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 08/08/24.
//

import UIKit

class ScrollViewController: UIViewController {

    private let scrollViewCustom: UIScrollView = {
        let scroll : UIScrollView = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scroll.backgroundColor = .white
        return scroll
    }()
    private let viewScrollCustom: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let labelList1: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .gray
        label.text = "hola que tal"
        return label
    }()
    private let labelList2: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        label.text = "hola que tal"

        return label
    }()
    private let labelList3: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .blue
        label.text = "hola que tal"

        return label
    }()
    private let labelList4: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .brown
        label.text = "hola que tal"

        return label
    }()
    private let labelList5: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .cyan
        label.text = "hola que tal"

        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setAutoLayout()
        scrollViewCustom.frame = view.bounds
        scrollViewCustom.contentSize = view.frame.size
        // Do any additional setup after loading the view.
    }
    func addViews(){
        view.addSubview(scrollViewCustom)
        scrollViewCustom.addSubview(viewScrollCustom)
        viewScrollCustom.addSubview(labelList1)
        viewScrollCustom.addSubview(labelList2)
        viewScrollCustom.addSubview(labelList3)
        viewScrollCustom.addSubview(labelList4)
        viewScrollCustom.addSubview(labelList5)
    }
    func setAutoLayout(){
        NSLayoutConstraint.activate([
            scrollViewCustom.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollViewCustom.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollViewCustom.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollViewCustom.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            viewScrollCustom.topAnchor.constraint(equalTo: scrollViewCustom.topAnchor),
            viewScrollCustom.trailingAnchor.constraint(equalTo: scrollViewCustom.trailingAnchor),
            viewScrollCustom.leadingAnchor.constraint(equalTo: scrollViewCustom.leadingAnchor),
            viewScrollCustom.bottomAnchor.constraint(equalTo: scrollViewCustom.bottomAnchor),
            
            labelList1.topAnchor.constraint(equalTo: viewScrollCustom.topAnchor, constant: 5),
            labelList1.leadingAnchor.constraint(equalTo: viewScrollCustom.leadingAnchor, constant: 5),
            labelList1.trailingAnchor.constraint(equalTo: viewScrollCustom.trailingAnchor, constant: -5),
            labelList1.heightAnchor.constraint(equalToConstant: 200),

            labelList2.topAnchor.constraint(equalTo: labelList1.bottomAnchor, constant: 5),
            labelList2.leadingAnchor.constraint(equalTo: viewScrollCustom.leadingAnchor, constant: 5),
            labelList2.trailingAnchor.constraint(equalTo: viewScrollCustom.trailingAnchor, constant: -5),
            labelList2.heightAnchor.constraint(equalToConstant: 200),


            labelList3.topAnchor.constraint(equalTo: labelList2.bottomAnchor, constant: 5),
            labelList3.leadingAnchor.constraint(equalTo: viewScrollCustom.leadingAnchor, constant: 5),
            labelList3.trailingAnchor.constraint(equalTo: viewScrollCustom.trailingAnchor, constant: -5),
            labelList3.heightAnchor.constraint(equalToConstant: 200),


            labelList4.topAnchor.constraint(equalTo: labelList3.bottomAnchor, constant: 5),
            labelList4.leadingAnchor.constraint(equalTo: viewScrollCustom.leadingAnchor, constant: 5),
            labelList4.trailingAnchor.constraint(equalTo: viewScrollCustom.trailingAnchor, constant: -5),
            labelList4.heightAnchor.constraint(equalToConstant: 200),


            labelList5.topAnchor.constraint(equalTo: labelList4.bottomAnchor, constant: 5),
            labelList5.leadingAnchor.constraint(equalTo: viewScrollCustom.leadingAnchor, constant: 5),
            labelList5.trailingAnchor.constraint(equalTo: viewScrollCustom.trailingAnchor, constant: -5),
            labelList5.heightAnchor.constraint(equalToConstant: 200),
        ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
