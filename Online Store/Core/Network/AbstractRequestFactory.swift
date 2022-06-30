//
//  AbstractRequestFactory.swift
//  Online Store
//
//  Created by Сергей Горячев on 30.06.2022.
//

import Foundation
import Alamofire

protocol AbstractRequestFactory {
    var errorParser: AbstractErrorParser { get }
    var sessionManager: Session { get }
    var queue: DispatchQueue { get }
    
    @discardableResult
    func request<T: Decodable>(request: URLRequestConvertible, completionHandler: @escaping (AFDataResponse<T>) -> Void) -> DataRequest
}

extension AbstractRequestFactory {
    @discardableResult
    public func request<T: Decodable>(request: URLRequestConvertible, completionHandler: @escaping (AFDataResponse<T>) -> Void) -> DataRequest {
        
        return sessionManager
            .request(request)
            .responseCodable(errorParser: errorParser, queue: queue, completionHandler: completionHandler)
    }
}
