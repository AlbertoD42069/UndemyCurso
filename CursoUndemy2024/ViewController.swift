//
//  ViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 01/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let viewAPIREST : ViewApiREST = {
        let view: ViewApiREST = ViewApiREST()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private let progressIndicador: UIActivityIndicatorView = {
        let indicator : UIActivityIndicatorView = UIActivityIndicatorView()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    private var restoAlamoFire: Results?

    //la vista a sido cargado en memoria
    override func viewDidLoad() {
        super.viewDidLoad()
        addComponentes()
        setupAutoLayout()
        restoAlamoFire = viewAPIREST.restoAlamoFire
        //progressIndicador.hidesWhenStopped = true
        //progressIndicador.stopAnimating()
        
    }
    func addComponentes(){
        view.addSubview(viewAPIREST)
        //viewAPIREST.addSubview(apiRESTBtn)
        //viewAPIREST.addSubview(titleAdultLabels)
        //viewAPIREST.addSubview(titleIdiomaLabels)
        //viewAPIREST.addSubview(titlePeliculaLabels)
        //viewAPIREST.addSubview(progressIndicador)
    }
    func setupAutoLayout(){
        NSLayoutConstraint.activate([
            viewAPIREST.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewAPIREST.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            viewAPIREST.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viewAPIREST.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            //progressIndicador.centerXAnchor.constraint(equalTo: viewAPIREST.centerXAnchor),
            //progressIndicador.centerYAnchor.constraint(equalTo: viewAPIREST.centerYAnchor),
            
            //apiRESTBtn.topAnchor.constraint(equalTo: viewAPIREST.topAnchor, constant: 10),
            //apiRESTBtn.centerXAnchor.constraint(equalTo: viewAPIREST.centerXAnchor),
            //apiRESTBtn.widthAnchor.constraint(equalToConstant: 150),
            //
            //titlePeliculaLabels.topAnchor.constraint(equalTo: apiRESTBtn.bottomAnchor, constant: 20),
            //titlePeliculaLabels.leadingAnchor.constraint(equalTo: viewAPIREST.leadingAnchor, constant: 10),
            //titlePeliculaLabels.trailingAnchor.constraint(equalTo: viewAPIREST.trailingAnchor, constant: -10),
//
            //titleAdultLabels.topAnchor.constraint(equalTo: titlePeliculaLabels.bottomAnchor, constant: 20),
            //titleAdultLabels.leadingAnchor.constraint(equalTo: viewAPIREST.leadingAnchor, constant: 20),
            //titleAdultLabels.trailingAnchor.constraint(equalTo: viewAPIREST.trailingAnchor, constant: -20),
//
            //titleIdiomaLabels.topAnchor.constraint(equalTo: titleAdultLabels.bottomAnchor, constant: 20),
            //titleIdiomaLabels.leadingAnchor.constraint(equalTo: viewAPIREST.leadingAnchor, constant: 20),
            //titleIdiomaLabels.trailingAnchor.constraint(equalTo: viewAPIREST.trailingAnchor, constant: -20),
            
        ])
    }
    
   // @objc func getDataPeliculas(){
   //     progressIndicador.startAnimating()
   //
   //     RestAPIAlamofire.shared.getPopular(urlPopularPelicula: Urls.urlPopular) { pelicula in
   //         self.progressIndicador.stopAnimating()
   //
   //         self.titlePeliculaLabels.text = pelicula[1].title
   //         self.titleIdiomaLabels.text = pelicula[1].original_language
   //         self.titleAdultLabels.text = pelicula[1].overview
   //     } failed: { error in
   //         self.progressIndicador.stopAnimating()
   //         self.titlePeliculaLabels.text = error.debugDescription
   //         print(error.debugDescription)
   //     }
   // }
        
        

        
        
        /*
         
         //la vista a sido cargado en memoria pero aun no se ve
         override func viewWillAppear(_ animated: Bool) {
             super.viewWillAppear(animated)
             
         }
         // la vista a sido cargado en memoria y ya se ve
         override func viewDidAppear(_ animated: Bool) {
             super.viewDidAppear(animated)
             
         }
         //la vista es lista para desaparecer
         override func viewWillDisappear(_ animated: Bool) {
             super.viewWillDisappear(animated)
             
         }
         // la vista a desaparecido
         override func viewDidDisappear(_ animated: Bool) {
             super.viewDidDisappear(animated)
             
         }
         //title = "morado"
        title = "continente americano"
        //let butonLeft = UIBarButtonItem(title: "verde", style: .plain, target: self, action: #selector((pushNav)))
        //navigationItem.rightBarButtonItem = butonLeft
        view.addSubview(viewNavegacion)
        //viewNavegacion.delegate = self

        NSLayoutConstraint.activate([
            viewNavegacion.topAnchor.constraint(equalTo: view.topAnchor),
            viewNavegacion.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewNavegacion.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewNavegacion.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
     */
    //MARK: ciclo de vida de aplicacion

}
    
extension ViewController: ViewNavegacionProtocol {
    
    func goNextViewController(titleButton: String) {
       let vc = NavegacionCuatroViewController()
        vc.titleLabels.text = titleButton
        self.navigationController?.present(vc, animated: true)
    }
}
    
    
        //vc.title = "verde"
        //self.navigationController?.pushViewController(vc, animated: true)
    /*
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
    */
//}






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
