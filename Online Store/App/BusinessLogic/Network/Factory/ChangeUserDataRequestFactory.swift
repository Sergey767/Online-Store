//
//  ChangeUserDataRequestFactory.swift
//  Online Store
//
//  Created by Сергей Горячев on 02.07.2022.
//

import Foundation
import Alamofire

protocol ChangeUserDataRequestFactory {
    func changeUserData(
        idUser: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        bio: String,
        completionHandler: @escaping (AFDataResponse<ChangeUserDataResult>) -> Void
    )
}
