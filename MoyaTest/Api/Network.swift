//
//  Network.swift
//  MoyaTest
//
//  Created by Aswathy Bose on 26/08/20.
//  Copyright © 2020 Aswathy Bose. All rights reserved.
//

import Foundation


class Network {
    
    static let shared: Network = Network()
    var baseURL: URL = {
        var url: URL!
        #if PIADEBUG
        url = URL(string: "http://app.reachout.fingent.net/app/server/public/V8/")
        #elseif Debug
        url = URL(string: "http://app.reachout.fingent.net/app/server/public/V8/")
        #elseif Staging
        url = URL(string: "http://app.reachout.fingent.net/app/server/public/V8/")
        #elseif Alpha
        url = URL(string: "http://app.reachout.fingent.net/app/server/public/V8/")
        #elseif Release
        url = URL(string: "http://app.reachout.fingent.net/app/server/public/V8/")
        #else
        url = URL(string: "http://app.reachout.fingent.net/app/server/public/V8/")
        #endif
        return url
    }()
}
