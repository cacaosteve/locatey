//
//  NetworkManager.swift
//  Locatey
//
//  Created by steve on 11/14/20.
//

import Foundation

enum LCError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

//final class NetworkManager {
//    static let shared = NetworkManager()
//    
//    static let baseURL = "http://localhost:8080/users/login"
//    private let appetizerURL = baseURL + "appetizers"
//    
//    private init() {}
//    
//    func getAppetizers(completed: @escaping (Result<[String], LCError>)) -> Void {
//        guard let url = URL(string: appetizerURL) else {
//            completed(.failure(.invalidURL))
//            return
//        }
//    }
//}
