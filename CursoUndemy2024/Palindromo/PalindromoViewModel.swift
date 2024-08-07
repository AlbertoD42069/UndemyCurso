//
//  MVVM.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 06/08/24.
//

import Foundation

class PalindromoViewModel {
    
    func isItPalindrome (texto: String) -> Bool{
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
}
