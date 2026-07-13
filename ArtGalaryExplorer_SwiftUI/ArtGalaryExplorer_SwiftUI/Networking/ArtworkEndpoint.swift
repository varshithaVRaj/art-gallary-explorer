//
//  ArtworkEndpoint.swift
//  ArtGalaryExplorer_SwiftUI
//
//  Created by Varshitha VRaj on 12/07/26.
//

import SwiftUI

enum ArtworkEndpoint: Endpoint {
    
    case fetchArtworks
    
    var path: String {
        switch self {
        case .fetchArtworks:
            return APIConstants.apiVersion + ArtworkRoute.completeArtList
        }
    }
    
    var method: HTTPMethod {
        .get
    }
    
    var headers: [String : String]? {
        nil
    }
    
    var queryItems: [URLQueryItem]? {
        nil
    }
    
    var body: Data? {
        nil
    }
    
    
}
