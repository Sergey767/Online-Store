//
//  LogoutRequestFactory.swift
//  Online Store
//
//  Created by Сергей Горячев on 01.07.2022.
//

import Foundation
import Alamofire

protocol LogoutRequestFactory {
    func logout(idUser: Int, completionHandler: @escaping (AFDataResponse<LogoutResult>) -> Void)
}
