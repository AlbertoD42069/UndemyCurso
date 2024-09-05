//
//  TableViewCursoCoreData.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 04/09/24.
//

import UIKit

class TableViewCursoCoreData: UIView {
    
    private let tableCoreData: UITableView = {
        let table : UITableView = UITableView()
        table.register(CellViewCurso.self, forCellReuseIdentifier: "cellCurso")
        //table.register(CellCustomTableViewCell.self, forCellReuseIdentifier: "cellCursoTable")
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .clear

        return table
    }()
    private let contentTableCoreData: UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()

    let continenteAmericano = ["mexico", "Estados Unidos", "guatemala", "peru", "brazil", "argentina","colombia", "venezuela","puerto rico", "belice"]
    //let continenteEuropero = ["España", "francia", "rusia", "inglaterra", "suiza", "alemania", "italia", "africa"]
    override init (frame : CGRect) {
        super.init(frame : frame)
        delegateTableView()
        addcomponets()
        setupViewContainter()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func delegateTableView(){
        tableCoreData.dataSource = self
        tableCoreData.delegate = self
    }
    func addcomponets(){
        addSubview(contentTableCoreData)
        contentTableCoreData.addSubview(tableCoreData)
    }
    func setupViewContainter(){
        NSLayoutConstraint.activate([
            contentTableCoreData.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            contentTableCoreData.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            contentTableCoreData.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            contentTableCoreData.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            tableCoreData.topAnchor.constraint(equalTo: contentTableCoreData.topAnchor),
            tableCoreData.leadingAnchor.constraint(equalTo: contentTableCoreData.leadingAnchor),
            tableCoreData.trailingAnchor.constraint(equalTo: contentTableCoreData.trailingAnchor),
            tableCoreData.bottomAnchor.constraint(equalTo: contentTableCoreData.bottomAnchor),
        ])
    }
    

}
extension TableViewCursoCoreData: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(continenteAmericano[indexPath.row].lowercased())
    }
}
extension TableViewCursoCoreData: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Continente Americano"
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return continenteAmericano.count

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableCoreData.dequeueReusableCell(withIdentifier: "cellCurso", for: indexPath) as! CellViewCurso
        let model = continenteAmericano[indexPath.row]
        cell.sugerenciaTxt.text = model.lowercased()
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
