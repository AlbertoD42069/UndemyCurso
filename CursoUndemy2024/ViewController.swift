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
    let vcPalindromo = PalindromoViewController()
    let vcScrollView = ScrollViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        
        vcControlsAndViews.navigationItem.largeTitleDisplayMode = .automatic
        vcVistasCurso.navigationItem.largeTitleDisplayMode = .automatic
        vcPalindromo.navigationItem.largeTitleDisplayMode = .automatic
        
        let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
        let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
        let vcPalindromoNav = UINavigationController(rootViewController: vcPalindromo)
        vcScrollView.navigationItem.largeTitleDisplayMode = .automatic
        
        let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
        let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
        let vcScrollNav = UINavigationController(rootViewController: vcScrollView)
        
        
        let vcImage = UIImage(systemName: "menucard.fill")
        let vcVistaImagen = UIImage(systemName: "location.circle.fill")
        let vcImagenPalindromo = UIImage(systemName: "circle.fill")
        
        vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
        vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
        vcPalindromoNav.tabBarItem = UITabBarItem(title: "Palindormo", image: vcImagenPalindromo, tag: 3)
        
        let items = [vcPalindromoNav, vcVistasNav, vcControlNav]
        let vcScrollImagen = UIImage(systemName: "circle.fill")
        
        vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
        vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
        vcScrollView.tabBarItem = UITabBarItem(title: "Scroll", image: vcScrollImagen, tag: 3)
        
        let items = [vcScrollNav, vcVistasNav, vcControlNav]
        
        for nav in items {
            tabBar.barTintColor = .darkGray
        }
        setViewControllers(items, animated: true)
    }
}
