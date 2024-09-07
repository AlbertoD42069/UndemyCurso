//
//  ExtensionCoreDataTableView.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 07/09/24.
//

import Foundation
import UIKit
extension CoreDataTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2 //myPais!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "hola" //myPais![indexPath.row].nombre
        
        return cell
    }
    
    
}
extension CoreDataTableView: UITableViewDelegate {
    
    //modificar datos de core data
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let editarPais = 1 //myPais![indexPath.row]
        
        let alertController = UIAlertController(title: "Editar un dato", message: nil, preferredStyle: .alert)
       
        alertController.addTextField()
        let textField = alertController.textFields![0]
        //textField.text = editarPais.nombre
        
        
        let okAction = UIAlertAction(title: "Editar", style: .default) { action in
            let textField = alertController.textFields![0]
            //editarPais.nombre = textField.text
            //try! self.context.save()
            self.recuperarDatos()
        }
        
        alertController.addAction(okAction)
        //present(alertController, animated: true, completion: nil)
        
    }
    
    //Eliminar Datos de tabla con dezlisar el dedo de coredata
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let eliminarPais = UIContextualAction(style: .destructive, title: "Eliminar") { action, view, completionHandler in
            let paisEliminado = 1 //self.myPais![indexPath.row]
            //self.context.delete(paisEliminado)
            //try! self.context.save()
            self.recuperarDatos()
        }
        return UISwipeActionsConfiguration(actions: [eliminarPais])
    }
    
}

