//
//  ViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 01/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    /*
    private let button: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Verde", for: .normal)
        btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Azul"
        let butonLeft = UIBarButtonItem(title: "verde", style: .plain, target: self, action: #selector((pushNav)))
        navigationItem.rightBarButtonItem = butonLeft
        /*view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])*/
    }
    @objc func pushNav(){
        print("presionado")
        let vc =  NavegacionDosViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
}

/*
class ViewController: UITabBarController {
    
    let vcControlsAndViews = ControlsAndViewsViewController()
    let vcVistasCurso = VistasViewController()
    let vcNavController = NavegacionCursoViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        
        vcControlsAndViews.navigationItem.largeTitleDisplayMode = .automatic
        vcVistasCurso.navigationItem.largeTitleDisplayMode = .automatic
        
        let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
        let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
        let vcNav = UINavigationController(rootViewController: vcNavController)
        
        
        
        let vcImage = UIImage(systemName: "menucard.fill")
        let vcVistaImagen = UIImage(systemName: "location.circle.fill")
        let vcNavImagen = UIImage(systemName: "circle")
        
        vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
        vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
        vcNav.tabBarItem = UITabBarItem(title: "Navegacion", image: vcNavImagen, tag: 3)
        
        let items = [vcNav, vcVistasNav, vcControlNav]
        
        for nav in items {
            tabBar.barTintColor = .darkGray
        }
        setViewControllers(items, animated: true)
    }
}
*/
