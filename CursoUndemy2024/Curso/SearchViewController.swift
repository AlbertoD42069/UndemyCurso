//
//  SearchViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 14/08/24.
//

import UIKit

class SearchViewController: UIViewController {

    private let searchControllesr: UISearchBar = {
        let search : UISearchBar = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    private let labelSearch: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .darkText
        label.font = UIFont(name: "Regular", size: 8)
        label.isHidden = true
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(searchControllesr)
        view.addSubview(labelSearch)
        searchControllesr.delegate = self
        NSLayoutConstraint.activate([
            searchControllesr.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            searchControllesr.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            searchControllesr.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            labelSearch.topAnchor.constraint(equalTo: searchControllesr.bottomAnchor, constant: 5),
            labelSearch.leadingAnchor.constraint(equalTo: searchControllesr.leadingAnchor, constant: 5),
            labelSearch.trailingAnchor.constraint(equalTo: searchControllesr.trailingAnchor, constant: -5),
        ])
    }
}
extension SearchViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        //Cerrar el teclado
        searchControllesr.resignFirstResponder()
        let texSearch = searchControllesr.text
        labelSearch.text = texSearch
        labelSearch.isHidden = false
    }
}
