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
    let vcWebView = WebViewController()
    let vcMapView = MapViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        
        vcControlsAndViews.navigationItem.largeTitleDisplayMode = .automatic
        vcVistasCurso.navigationItem.largeTitleDisplayMode = .automatic
        vcPalindromo.navigationItem.largeTitleDisplayMode = .automatic
        vcScrollView.navigationItem.largeTitleDisplayMode = .automatic
        vcWebView.navigationItem.largeTitleDisplayMode = .automatic
        vcMapView.navigationItem.largeTitleDisplayMode = .automatic
        
        let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
        let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
        let vcPalindromoNav = UINavigationController(rootViewController: vcPalindromo)
        let vcScrollNav = UINavigationController(rootViewController: vcScrollView)
        let vcWebNav = UINavigationController(rootViewController: vcWebView)
        let vcMapNav = UINavigationController(rootViewController: vcMapView)
        
        let vcImage = UIImage(systemName: "menucard.fill")
        let vcVistaImagen = UIImage(systemName: "location.circle.fill")
        let vcImagenPalindromo = UIImage(systemName: "circle.fill")
        let vcScrollImagen = UIImage(systemName: "circle.fill")
        let vcWebImage = UIImage(systemName: "person")
        let vcMapImage = UIImage(systemName: "location.fill")
        
        vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
        vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
        vcScrollNav.tabBarItem = UITabBarItem(title: "Scroll", image: vcScrollImagen, tag: 3)
        vcWebNav.tabBarItem = UITabBarItem(title: "Web", image: vcWebImage, tag: 4)
        vcMapNav.tabBarItem = UITabBarItem(title: "Map", image: vcMapImage, tag: 5)
        vcPalindromoNav.tabBarItem = UITabBarItem(title: "Palindromo", image: vcImagenPalindromo, tag: 6)
        
        
        let items = [vcMapNav, vcWebNav, vcScrollNav, vcVistasNav, vcControlNav, vcPalindromoNav]
        
        for nav in items {
            tabBar.barTintColor = .darkGray
        }
        setViewControllers(items, animated: true)
    }
}
