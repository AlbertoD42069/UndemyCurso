//
//  WebViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 09/08/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    private let viewWeb: WKWebView = {
        let web : WKWebView = WKWebView()
        web.translatesAutoresizingMaskIntoConstraints = false
        return web
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewWeb()
        view.addSubview(viewWeb)
        
        NSLayoutConstraint.activate([
            viewWeb.topAnchor.constraint(equalTo: view.topAnchor),
            viewWeb.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewWeb.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewWeb.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            //viewWeb.heightAnchor.constraint(equalToConstant: 100)

        ])

        // Do any additional setup after loading the view.
    }
    func setupViewWeb(){
        let url = "https://google.es"
        let urlWeb = URL(string: url)
        viewWeb.load(URLRequest(url: urlWeb!))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
