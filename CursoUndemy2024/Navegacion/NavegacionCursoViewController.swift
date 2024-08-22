//
//  NavegacionCursoViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 16/08/24.
//

import UIKit

class NavegacionCursoViewController: UIViewController {
    let nav = UINavigationController()
    private let button: UIButton = {
        let btn : UIButton = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Hacer Push", for: .normal)
        btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    @objc func pushNav(){
        let vcNav = NavegacionDosViewController()
        nav.pushViewController(vcNav, animated: true)
    }

    /*
     let navDos = NavegacionDosViewController()
     let nav = UINavigationController()
     
     view.backgroundColor = .white
     let button = UIButton()
     button.backgroundColor = .green
     button.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
