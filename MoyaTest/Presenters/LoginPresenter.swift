//
//  LoginPresenter.swift
//  MoyaTest
//
//  Created by Aswathy Bose on 28/08/20.
//  Copyright © 2020 Pm Abi. All rights reserved.
//

import UIKit
import Moya

class LoginPresenter: NSObject {
    var reachoutService:MoyaProvider<ReachoutApi> = MoyaProvider<ReachoutApi>()

    
    public final  class var sharedInstance: LoginPresenter {
           struct Static {
               static var instance: LoginPresenter?
           }
           if Static.instance == nil {
               Static.instance = LoginPresenter()
           }
           return Static.instance!
    }
    func setUpLogin() {
        reachoutService.request(.login(email: "sa@g.com", password: "123456"), completion: { result in
            switch result {
            case .success(let response):
                print(response)
                do {
                    let responseObject = try response.map(LoginResponseModel.self)
                    print(responseObject.result.status_message)
                } catch let parsingError{
                    print(parsingError.localizedDescription)
                }
                break
            case .failure(let error):
                print(error)
                break
            }

        })
    }

}
