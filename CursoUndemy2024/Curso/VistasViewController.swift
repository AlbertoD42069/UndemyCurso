//
//  VistasViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 02/08/24.
//

import UIKit

class VistasViewController: UIViewController {

    private let viewCurso: VistasCurso = {
        let view : VistasCurso = VistasCurso()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        view.addSubview(viewCurso)
        NSLayoutConstraint.activate([
            viewCurso.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewCurso.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viewCurso.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            viewCurso.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)

        ])
        // Do any additional setup after loading the view.
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
