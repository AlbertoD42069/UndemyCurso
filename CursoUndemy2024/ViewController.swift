//
//  ViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 01/08/24.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
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
