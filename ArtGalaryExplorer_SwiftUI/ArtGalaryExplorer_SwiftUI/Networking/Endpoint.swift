//
//  Endpoint.swift
//  ArtGalaryExplorer_SwiftUI
//
//  Created by Varshitha VRaj on 12/07/26.
//

import SwiftUI

protocol Endpoint {

    var path: String { get }

    var method: HTTPMethod { get }

    var headers: [String: String]? { get }

    var queryItems: [URLQueryItem]? { get }

    var body: Data? { get }

}
