//
//  ViewApiREST.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 10/09/24.
//

import UIKit

class ViewApiREST: UIView {
    
    private let viewApiRest : UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    var apiRESTBtn: UIButton = {
       let btn : UIButton = UIButton(type: .system)
       btn.setTitle("Negro", for: .normal)
       btn.addTarget(self, action: #selector(getDataPeliculas), for: .touchUpInside)
       btn.translatesAutoresizingMaskIntoConstraints = false
       btn.backgroundColor = .lightGray
       btn.layer.borderWidth = 1
       btn.layer.cornerRadius = 8
       return btn
   }()
    private let titlePeliculaLabels: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        //label.text = "0"
        label.numberOfLines = 0
        return label
    }()
    private let titleAdultLabels: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "0"
        label.numberOfLines = 0
        return label
    }()
    private let titleIdiomaLabels: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "0"
        return label
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponesView()
        setupSetAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addComponesView(){
        addSubview(viewApiRest)
        viewApiRest.addSubview(apiRESTBtn)
        viewApiRest.addSubview(titlePeliculaLabels)
        //viewApiRest.addSubview(titleAdultLabels)
        //viewApiRest.addSubview(titleIdiomaLabels)
    }
    func setupSetAutoLayout(){
        NSLayoutConstraint.activate([
            
            viewApiRest.topAnchor.constraint(equalTo: topAnchor),
            viewApiRest.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewApiRest.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewApiRest.bottomAnchor.constraint(equalTo: bottomAnchor),

            
            apiRESTBtn.centerXAnchor.constraint(equalTo: viewApiRest.centerXAnchor),
            apiRESTBtn.widthAnchor.constraint(equalToConstant: 100),
            apiRESTBtn.topAnchor.constraint(equalTo: viewApiRest.topAnchor, constant: 10),
            
            titlePeliculaLabels.topAnchor.constraint(equalTo: apiRESTBtn.bottomAnchor, constant: 20),
            titlePeliculaLabels.leadingAnchor.constraint(equalTo: viewApiRest.leadingAnchor, constant: 20),
            titlePeliculaLabels.trailingAnchor.constraint(equalTo: viewApiRest.trailingAnchor, constant: -10),
            
            //titleAdultLabels.topAnchor.constraint(equalTo: titlePeliculaLabels.bottomAnchor, constant: 20),
            //titleAdultLabels.leadingAnchor.constraint(equalTo: viewApiRest.leadingAnchor, constant: 20),
            //titleAdultLabels.trailingAnchor.constraint(equalTo: viewApiRest.trailingAnchor, constant: -20),
            //
            //titleIdiomaLabels.topAnchor.constraint(equalTo: titleAdultLabels.bottomAnchor, constant: 20),
            //titleIdiomaLabels.leadingAnchor.constraint(equalTo: viewApiRest.leadingAnchor, constant: 20),
            //titleIdiomaLabels.trailingAnchor.constraint(equalTo: viewApiRest.trailingAnchor, constant: -20),
        ])
    }
    
    @objc func getDataPeliculas() {
        print("-----")
        RestAPIAlamofire.shared.getPopular(urlPopularPelicula: Urls.urlPopular) { pelicula in
            self.titlePeliculaLabels.text = pelicula[0].title
        } failed: { error in
            
            self.titlePeliculaLabels.text = error.debugDescription
            print(error.debugDescription)
            
        }

            //self.titlePeliculaLabels.text = restoAlamoFire[0].
            //         self.titleIdiomaLabels.text = pelicula[1].original_language
            //         self.titleAdultLabels.text = pelicula[1].overview        } failed: { error in
            //TODO
        

    }
}
