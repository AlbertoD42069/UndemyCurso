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
        
        return paisView?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = paisView![indexPath.row].nombre
        return cell
    }
    
    
}
extension CoreDataTableView: UITableViewDelegate {
    
    //modificar datos de core data
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let editarPais = paisView![indexPath.row]
        delegateCoredata?.editData(index: editarPais)
    }
    
    //Eliminar Datos de tabla con dezlisar el dedo de coredata
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let eliminarPais = UIContextualAction(style: .destructive, title: "Eliminar") { action, view, completionHandler in
            let paisEliminado = self.paisView?[indexPath.row]
            self.context?.delete(paisEliminado!)
            try! self.context?.save()
            self.recuperarDatos()
        }
        return UISwipeActionsConfiguration(actions: [eliminarPais])
    }
    
}

