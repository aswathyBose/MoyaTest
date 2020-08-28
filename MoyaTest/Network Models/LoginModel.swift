//
//  LoginModel.swift
//  MoyaTest
//
//  Created by Aswathy Bose on 28/08/20.
//  Copyright © 2020 Aswathy Bose. All rights reserved.
//

import Foundation

class LoginResponseModel: Codable {
    var result: LoginResponseObject
    
}
class LoginResponseObject: Codable {
    var status_message: String?
    var status: String
    var data: [String]
    var action: String
    var api_version: String
}
