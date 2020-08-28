//
//  UserApi.swift
//  MoyaTest
//
//  Created by Aswathy Bose on 26/08/20.
//  Copyright © 2020 Aswathy Bose. All rights reserved.
//

import Foundation
import Moya

enum ReachoutApi {
    case login(email: String, password: String)
    case changePassword(oldPassword: String, newPassword: String)
    case anotherApi
}

extension ReachoutApi: Moya.TargetType {
    var baseURL: URL {
        return Network.shared.baseURL
    }
    
    var path: String {
        switch self {
        case .login:
            return "login"
        case .changePassword:
            return "changePassword"
        default:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .login, .changePassword:
            return .post
        default:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .login(email: let email, password: let password):
            return .requestParameters(parameters: ["email": email, "password": password],
                                      encoding: JSONEncoding.default)
        default:
            return .requestParameters(parameters: ["": ""], encoding: JSONEncoding.default)

        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
    
    
}
