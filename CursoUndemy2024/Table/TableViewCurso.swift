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
        table.register(CellCustomTableViewCell.self, forCellReuseIdentifier: "cellCursoTable")
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
    let continenteEuropero = ["España", "francia", "rusia", "inglaterra", "suiza", "alemania", "italia", "africa"]
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
        print(continenteAmericano[indexPath.row].lowercased())
    }
}
extension TableViewCurso: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return continenteAmericano.count
        }
        else {
            return continenteEuropero.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableCurso.dequeueReusableCell(withIdentifier: "cellCurso", for: indexPath) as! CellViewCurso
            let model = continenteAmericano[indexPath.row]
            cell.sugerenciaTxt.text = model.lowercased()
            cell.accessoryType = .disclosureIndicator
            return cell
        case 1:
            let cell = tableCurso.dequeueReusableCell(withIdentifier: "cellCursoTable", for: indexPath) as! CellCustomTableViewCell
            let model = continenteEuropero[indexPath.row]
            cell.titleCurso.text = model.lowercased()
            cell.titleCurso.font = UIFont(name: "Body", size: 20)
            cell.titleCurso.textColor = .blue
            cell.accessoryType = .disclosureIndicator
            
            cell.descripcionCurso.text = continenteEuropero[indexPath.row]
            cell.descripcionCurso.font = UIFont(name: "Body", size: 20)
            cell.imageCurso.image = UIImage(systemName: "circle.fill")
            if indexPath.row == 2 {
                cell.descripcionCurso.text = "aslkdnaslkdnasldnlaskdmlmfafgn oñfjaeofkjdfjadalfñsdlksds"
            }
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        }
                
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        else {
            return UITableView.automaticDimension
        }
    }
}
