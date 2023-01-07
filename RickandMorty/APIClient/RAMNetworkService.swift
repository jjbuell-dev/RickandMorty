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
    
    // MARK: - Error
    
    enum RAMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    
    // MARK: - Initializers
    // privatized constructor
    private init() {}
    
    // MARK: - Helper Functions
    
    // Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RAMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let urlRequest = self.request(from: request) else { completion(.failure(RAMServiceError.failedToCreateRequest))
            return }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else { completion(.failure(error ?? RAMServiceError.failedToGetData))
                return }
            
            // Decode the response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
                
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    // MARK: -  Private
    
    private func request(from ramRequest: RAMRequest) -> URLRequest? {
        guard let url = ramRequest.url else { return nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = ramRequest.httpMethod
        
        return request
    }
}
