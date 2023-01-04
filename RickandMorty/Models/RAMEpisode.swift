//
//
// RickandMorty
// 
// RAMEpisode.swift
//
// Created by Royal Blue Software
// 


import Foundation

struct RAMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
