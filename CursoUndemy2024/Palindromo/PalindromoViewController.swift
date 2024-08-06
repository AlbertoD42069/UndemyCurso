//
//  PalindromoViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 05/08/24.
//

import UIKit

class PalindromoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        print(palindromo(texto: "anita lava la tina"))
        // Do any additional setup after loading the view.
    }
    func palindromo(texto: String) -> Bool {
        let newTexto = texto.replacingOccurrences(of: " ", with: "")
        
        
        let characters = Array(newTexto.lowercased())
            var initialIndex = 0
            var finalIndex = characters.count - 1
            while initialIndex < finalIndex {
                if characters[initialIndex] != characters[finalIndex] {
                    return false
                    
                }
                initialIndex += 1
                finalIndex -= 1
            }
            return true
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
