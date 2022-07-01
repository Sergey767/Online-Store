//
//  RegistrationRequestFactory.swift
//  Online Store
//
//  Created by Сергей Горячев on 01.07.2022.
//

import Foundation
import Alamofire

protocol RegistrationRequestFactory {
    func registration(
        idUser: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        bio: String,
        completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void
    )
}
