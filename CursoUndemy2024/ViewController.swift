//
//  ViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 01/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let viewNavegacion : ViewNavegacion = {
        let view: ViewNavegacion = ViewNavegacion()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "morado"
        view.addSubview(viewNavegacion)
        viewNavegacion.delegate = self

        NSLayoutConstraint.activate([
            viewNavegacion.topAnchor.constraint(equalTo: view.topAnchor),
            viewNavegacion.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewNavegacion.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewNavegacion.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
   
}
extension ViewController: ViewNavegacionProtocol {
    func goNegro() {
        let vc = NavegacionDosViewController()
        vc.title = "verde"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func goRojo() {
        let vc = NavegacionTresViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func goAzul() {
        let vc = NavegacionCuatroViewController()
        vc.titleLabels.text = "Blanco"
        vc.titleLabels.textColor = .black
        self.navigationController?.present(vc, animated: true)
    }
    
    
}






/*
 //let butonLeft = UIBarButtonItem(title: "verde", style: .plain, target: self, action: #selector((pushNav)))
 //navigationItem.rightBarButtonItem = butonLeft
 /*@objc func pushNav(){
    print("presionado")
    let vc =  NavegacionDosViewController()
    self.navigationController?.pushViewController(vc, animated: true)
    
    
}*/
 /*
 class ViewController: UITabBarController {
     
     let vcControlsAndViews = ControlsAndViewsViewController()
     let vcVistasCurso = VistasViewController()
     let vcPalindromo = PalindromoViewController()
     let vcScrollView = ScrollViewController()
     let vcWebView = WebViewController()
     let vcMapView = MapViewController()
     let vcPageViewController = PageViewController()
     let vcSearch = SearchViewController()
     let vcNavController = NavegacionCursoViewController()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         tabBar.backgroundColor = .white
         
         vcControlsAndViews.navigationItem.largeTitleDisplayMode = .automatic
         vcVistasCurso.navigationItem.largeTitleDisplayMode = .automatic
         vcPalindromo.navigationItem.largeTitleDisplayMode = .automatic
         vcScrollView.navigationItem.largeTitleDisplayMode = .automatic
         vcWebView.navigationItem.largeTitleDisplayMode = .automatic
         vcMapView.navigationItem.largeTitleDisplayMode = .automatic
         vcPageViewController.navigationItem.largeTitleDisplayMode = .automatic
         vcSearch.navigationItem.largeTitleDisplayMode = .automatic

         
         let vcControlNav = UINavigationController(rootViewController: vcControlsAndViews)
         let vcVistasNav = UINavigationController(rootViewController: vcVistasCurso)
         let vcPalindromoNav = UINavigationController(rootViewController: vcPalindromo)
         let vcScrollNav = UINavigationController(rootViewController: vcScrollView)
         let vcWebNav = UINavigationController(rootViewController: vcWebView)
         let vcMapNav = UINavigationController(rootViewController: vcMapView)
         let vcPageNAv = UINavigationController(rootViewController: vcPageViewController)
         let vcSearchNav = UINavigationController(rootViewController: vcSearch)


         
         let vcImage = UIImage(systemName: "menucard.fill")
         let vcVistaImagen = UIImage(systemName: "location.circle.fill")
         let vcImagenPalindromo = UIImage(systemName: "circle.fill")
         let vcScrollImagen = UIImage(systemName: "circle.fill")
         let vcWebImage = UIImage(systemName: "person")
         let vcMapImage = UIImage(systemName: "location.fill")
         let vcImagePAge = UIImage(systemName: "circle.fill")
         let vcSearchImage = UIImage(systemName: "circle.fill")


         
         vcControlNav.tabBarItem  = UITabBarItem(title: "Controles", image: vcImage, tag: 1)
         vcVistasNav.tabBarItem = UITabBarItem(title: "Vistas", image: vcVistaImagen, tag: 2)
         vcScrollNav.tabBarItem = UITabBarItem(title: "Scroll", image: vcScrollImagen, tag: 3)
         vcWebNav.tabBarItem = UITabBarItem(title: "Web", image: vcWebImage, tag: 4)
         vcMapNav.tabBarItem = UITabBarItem(title: "Map", image: vcMapImage, tag: 5)
         vcPalindromoNav.tabBarItem = UITabBarItem(title: "Palindromo", image: vcImagenPalindromo, tag: 6)
         vcPageNAv.tabBarItem = UITabBarItem(title: "page", image: vcImagePAge, tag: 7)
         vcSearchNav.tabBarItem = UITabBarItem(title: "search", image: vcSearchImage, tag: 8)

         
         let items = [vcSearchNav, vcPageNAv, vcMapNav, vcWebNav, vcScrollNav, vcVistasNav, vcControlNav, vcPalindromoNav]
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
 */
