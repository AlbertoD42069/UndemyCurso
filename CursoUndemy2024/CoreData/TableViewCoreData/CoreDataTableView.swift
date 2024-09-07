//
//  CoreDataTableView.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 07/09/24.
//

import Foundation
import UIKit
import CoreData

protocol CoreDataTableViewProtocol: AnyObject {
    func editData(index: Pais)
}

class CoreDataTableView: UIView {
    
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
    var context: NSManagedObjectContext?
    var paisView: [Pais]?
    var delegateCoredata: CoreDataTableViewProtocol?
    
    override init (frame: CGRect){
        super.init(frame: frame)
        delegateTableView()
        addcomponets()
        setupViewContainter()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func delegateTableView(){
        coreDataTable.dataSource = self
        coreDataTable.delegate = self
    }
    func addcomponets(){
        addSubview(CursoUdemyView)
        CursoUdemyView.addSubview(coreDataTable)
    }
    func setupViewContainter(){
        NSLayoutConstraint.activate([
            CursoUdemyView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            CursoUdemyView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            CursoUdemyView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            CursoUdemyView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            coreDataTable.topAnchor.constraint(equalTo: CursoUdemyView.topAnchor),
            coreDataTable.leadingAnchor.constraint(equalTo: CursoUdemyView.leadingAnchor),
            coreDataTable.trailingAnchor.constraint(equalTo: CursoUdemyView.trailingAnchor),
            coreDataTable.bottomAnchor.constraint(equalTo: CursoUdemyView.bottomAnchor),
        ])
    }
    func recuperarDatos(){
        do {
            self.paisView = try context?.fetch(Pais.fetchRequest())
            DispatchQueue.main.async {
                self.coreDataTable.reloadData()
            }
        }catch {
            print("Error de recuperacion de datos")
        }
    }
}
