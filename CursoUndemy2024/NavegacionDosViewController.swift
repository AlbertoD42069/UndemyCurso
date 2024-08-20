//
//  NavegacionDosViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 16/08/24.
//

import UIKit

class NavegacionDosViewController: UIViewController {
    
    private let button: UIButton = {
        let btn : UIButton = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Hacer Push", for: .normal)
        btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    @objc func pushNav(){
        let nav = UINavigationController()
        let vcNav = NavegacionDosViewController()
        nav.pushViewController(vcNav, animated: true)
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
