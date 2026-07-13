//
//  URLRequestBuilderProtocol.swift
//  ArtGalaryExplorer_SwiftUI
//
//  Created by Varshitha VRaj on 13/07/26.
//


import Foundation

protocol URLRequestBuilderProtocol {
    func buildRequest(from endpoint: Endpoint) throws -> URLRequest
}



struct URLRequestBuilder: URLRequestBuilderProtocol {
    
    func buildRequest(from endpoint: any Endpoint) throws -> URLRequest {
        
        guard var components = URLComponents(string: APIConstants.baseURL + endpoint.path) else { throw NetworkError.invalidURL }
        
        components.queryItems = endpoint.queryItems
        
        guard let url = components.url else {
            throw NetworkError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.httpBody = endpoint.body
        
        
        endpoint.headers?.forEach {
            request.setValue($0.value, forHTTPHeaderField: $0.key)
        }
        
        return request
    }
    
}


enum NetworkError: Error {
    case invalidURL
}
