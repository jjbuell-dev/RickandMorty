//
//
// RickandMorty
// 
// RAMCharacter.swift
//
// Created by Royal Blue Software
// 


import Foundation


struct RAMCharacter: Codable {
          let id: Int
          let name: String
          let status: RAMCharacterStatus
          let species: String
          let type: String
          let gender: RAMCharacterGender
          let origin: RAMOrigin
          let location: RAMSingleLocation
          let image: String
          let episode: [String]
          let url: String
          let created: String
}


