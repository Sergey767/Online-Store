//
//  AbstractErrorParser.swift
//  Online Store
//
//  Created by Сергей Горячев on 30.06.2022.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
