//
//  APIClients.swift
//  DaumAPI
//
//  Created by 이수현 on 11/10/24.
//

import Foundation
import Alamofire

final class APIClients {
    static let shared = APIClients()
    
    private let session: Session
    
    private init() {
        let interceptor = AuthorizationInterceptor(kakaoKey: "0cfa67b6e4cdde467de547cb8f62d114")
        session = Session(interceptor: interceptor)
    }
    
    public func request<T: Codable>(
        _ url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        completion: @escaping (Result<T, Error>) -> Void) {
            session.request(url, method: method, parameters: parameters)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let value):
                        completion(.success(value))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
        }
}
