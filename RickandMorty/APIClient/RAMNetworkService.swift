//
//
// RickandMorty
// 
// RAMNetworkService.swift
//
// Created by Royal Blue Software
// 


import Foundation

/// Primary API Service object to get Rick and Morty Data
final class RAMNetworkService {
    
    // MARK: - Singleton
    
    static let sharedInstance = RAMNetworkService()
    
    // MARK: - Initializers
    // privatized constructor
    private init() {}
    
    // MARK: - Helper Functions
    
    // Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RAMRequest, completion: @escaping () -> Void) {
        
    }
}
