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
    let vcScrollView = ScrollViewController()
    let vcWebView = WebViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        
        vcControlsAndViews.navigationItem.largeTitleDisplayMode = .automatic
        vcVistasCurso.navigationItem.largeTitleDisplayMode = .automatic
        vcScrollView.navigationItem.largeTitleDisplayMode = .automatic
        vcWebView.navigationItem.largeTitleDisplayMode = .automatic
        
        let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
        let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
        let vcScrollNav = UINavigationController(rootViewController: vcScrollView)
        let vcWebNav = UINavigationController(rootViewController: vcWebView)
        
        let vcImage = UIImage(systemName: "menucard.fill")
        let vcVistaImagen = UIImage(systemName: "location.circle.fill")
        let vcScrollImagen = UIImage(systemName: "circle.fill")
        let vcWebImage = UIImage(systemName: "person")
        
        vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
        vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
        vcScrollNav.tabBarItem = UITabBarItem(title: "Scroll", image: vcScrollImagen, tag: 3)
        vcWebNav.tabBarItem = UITabBarItem(title: "Web", image: vcWebImage, tag: 4)
        
        
        let items = [vcWebNav, vcScrollNav, vcVistasNav, vcControlNav]
        
        for nav in items {
            tabBar.barTintColor = .darkGray
        }
        setViewControllers(items, animated: true)
    }
}
