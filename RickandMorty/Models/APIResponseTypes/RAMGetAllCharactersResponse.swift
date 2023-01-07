//
//
// RickandMorty
// 
// RAMGetAllCharactersResponse.swift
//
// Created by Royal Blue Software
// 


import Foundation

struct RAMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RAMCharacter]
}
