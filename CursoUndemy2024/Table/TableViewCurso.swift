//
//  TableViewCurso.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 24/08/24.
//

import UIKit

class TableViewCurso: UIView {
    private let tableCurso: UITableView = {
        let table : UITableView = UITableView()
        table.register(CellViewCurso.self, forCellReuseIdentifier: "cellCurso")
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

    let continenteAmericano = ["mexico", "Estados Unidos", "guatemala", "peru", "brazil", "argentina","colombia", "venezuela","puerto rico", "belice"]
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
        tableCurso.dataSource = self
        tableCurso.delegate = self
    }
    func addcomponets(){
        addSubview(CursoUdemyView)
        CursoUdemyView.addSubview(tableCurso)
    }
    func setupViewContainter(){
        NSLayoutConstraint.activate([
            CursoUdemyView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            CursoUdemyView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            CursoUdemyView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            CursoUdemyView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            tableCurso.topAnchor.constraint(equalTo: CursoUdemyView.topAnchor),
            tableCurso.leadingAnchor.constraint(equalTo: CursoUdemyView.leadingAnchor),
            tableCurso.trailingAnchor.constraint(equalTo: CursoUdemyView.trailingAnchor),
            tableCurso.bottomAnchor.constraint(equalTo: CursoUdemyView.bottomAnchor),
        ])
    }
}
extension TableViewCurso: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
extension TableViewCurso: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return continenteAmericano.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableCurso.dequeueReusableCell(withIdentifier: "cellCurso", for: indexPath) as! CellViewCurso
        
        let model = continenteAmericano[indexPath.row]
        cell.sugerenciaTxt.text = model.lowercased()
        return cell
    }
    
    
}
