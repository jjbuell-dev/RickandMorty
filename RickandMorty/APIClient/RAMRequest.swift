//
//
// RickandMorty
// 
// RAMRequest.swift
//
// Created by Royal Blue Software
// 


import Foundation

/// Object that represents a single API call
final class RAMRequest {
    // Base URL
    // Endpoint
    // Path component
    // Query parameters (optional)
//    https://rickandmortyapi.com/api/character/1
    
    // MARK: - Properties
    
    // constructed url for the API in string format
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RAMEndpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    private var urlString: String {
        var urlString = Constants.baseUrl
        urlString += "/"
        urlString += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            urlString += "/"
            pathComponents.forEach({urlString += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            urlString += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            urlString += argumentString
        }
        return urlString
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    // MARK: - Initializers
    
    public init(endpoint: RAMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

// MARK: - Extension

extension RAMRequest {
    static let listCharactersRequest = RAMRequest(endpoint: .character)
}
