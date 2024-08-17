//
//  ViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 01/08/24.
//

import UIKit

class ViewController: UITabBarController {
    
    let vcControlsAndViews = ControlsAndViewsViewController()
    let vcVistasCurso = VistasViewController()
    let vcSearch = SearchViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        
        vcControlsAndViews.navigationItem.largeTitleDisplayMode = .automatic
        vcVistasCurso.navigationItem.largeTitleDisplayMode = .automatic
        vcSearch.navigationItem.largeTitleDisplayMode = .automatic
        
        let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
        let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
        let vcSearchNav = UINavigationController(rootViewController: vcSearch)
        
        
        
        let vcImage = UIImage(systemName: "menucard.fill")
        let vcVistaImagen = UIImage(systemName: "location.circle.fill")
        let vcSearchImage = UIImage(systemName: "circle.fill")
        
        vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
        vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
        vcSearchNav.tabBarItem = UITabBarItem(title: "search", image: vcSearchImage, tag: 3)
        
        let items = [vcSearchNav, vcVistasNav, vcControlNav]
        
        for nav in items {
            tabBar.barTintColor = .darkGray
        }
        setViewControllers(items, animated: true)
    }
}
