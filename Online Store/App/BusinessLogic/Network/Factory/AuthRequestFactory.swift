//
//  AuthRequestFactory.swift
//  Online Store
//
//  Created by Сергей Горячев on 01.07.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}
