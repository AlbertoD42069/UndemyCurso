//
//  ViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 01/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let coreDataTable: UITableView = {
        let table : UITableView = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        //table.register(CellCustomTableViewCell.self, forCellReuseIdentifier: "cellCursoTable")
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .clear

        return table
    }()
    private let CursoUdemyView: UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContent.viewContext
    private var myPais: [Pais]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateTableView()
        addcomponets()
        setupViewContainter()
        addbuttonLeft()
        recuperarDatos()
    }
    func addbuttonLeft(){
        let butonLeft = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector((addDataCoreData)))
        navigationItem.rightBarButtonItem = butonLeft
    }
    func delegateTableView(){
        coreDataTable.dataSource = self
        coreDataTable.delegate = self
    }
    func addcomponets(){
        view.addSubview(CursoUdemyView)
        CursoUdemyView.addSubview(coreDataTable)
    }
    func setupViewContainter(){
        NSLayoutConstraint.activate([
            CursoUdemyView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            CursoUdemyView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            CursoUdemyView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            CursoUdemyView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            coreDataTable.topAnchor.constraint(equalTo: CursoUdemyView.topAnchor),
            coreDataTable.leadingAnchor.constraint(equalTo: CursoUdemyView.leadingAnchor),
            coreDataTable.trailingAnchor.constraint(equalTo: CursoUdemyView.trailingAnchor),
            coreDataTable.bottomAnchor.constraint(equalTo: CursoUdemyView.bottomAnchor),
        ])
    }
    func recuperarDatos(){
        do {
            self.myPais = try context.fetch(Pais.fetchRequest())
            DispatchQueue.main.async {
                self.coreDataTable.reloadData()
            }
        }catch {
            print("Error de recuperacion de datos")
        }
    }
    
    //Agregar datos en coredata
    @objc func addDataCoreData(){
        let alertController = UIAlertController(title: "Agregar un dato", message: nil, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Añadir", style: .default) { action in
            let textField = alertController.textFields![0]
            let nuevoPais = Pais(context: self.context)
            nuevoPais.nombre = textField.text
            try! self.context.save()
            self.recuperarDatos()
        }
        alertController.addTextField()
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)    }
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPais!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = myPais![indexPath.row].nombre
        
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate {
    
    //modificar datos de core data
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let editarPais = myPais![indexPath.row]
        
        let alertController = UIAlertController(title: "Editar un dato", message: nil, preferredStyle: .alert)
       
        alertController.addTextField()
        let textField = alertController.textFields![0]
        textField.text = editarPais.nombre
        
        
        let okAction = UIAlertAction(title: "Editar", style: .default) { action in
            let textField = alertController.textFields![0]
            editarPais.nombre = textField.text
            try! self.context.save()
            self.recuperarDatos()
        }
        
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    //Eliminar Datos de tabla con dezlisar el dedo de coredata
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let eliminarPais = UIContextualAction(style: .destructive, title: "Eliminar") { action, view, completionHandler in
            let paisEliminado = self.myPais![indexPath.row]
            self.context.delete(paisEliminado)
            try! self.context.save()
            self.recuperarDatos()
        }
        return UISwipeActionsConfiguration(actions: [eliminarPais])
    }
    
}
    /*
    private let viewNavegacion : CollectionViewCurso = {
        let viewCollection: CollectionViewCurso = CollectionViewCurso()
        viewCollection.translatesAutoresizingMaskIntoConstraints = false
        return viewCollection
    }()
    
    //la vista a sido cargado en memoria
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
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
    
        /* //title = "morado"
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
 */
    /*
extension ViewController: ViewNavegacionProtocol {
    
    func goNextViewController(titleButton: String) {
       let vc = NavegacionCuatroViewController()
        vc.titleLabels.text = titleButton
        self.navigationController?.present(vc, animated: true)
    }
}
    */
    
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

