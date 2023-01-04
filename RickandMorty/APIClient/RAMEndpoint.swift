//
//
// RickandMorty
// 
// RAMEndpoint.swift
//
// Created by Royal Blue Software
// 


import Foundation

/// Represents unique API cases
@frozen enum RAMEndpoint: String {
    /// Endpoint to get character info
    case character // "character"
    
    /// Endpoint to get location info
    case location
    
    /// Endpoint to get episode info
    case episode
}
