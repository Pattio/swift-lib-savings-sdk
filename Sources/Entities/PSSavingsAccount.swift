//
//  PSSavingsAccount.swift
//  PayseraSavingsSDK
//
//  Created by Vytautas Gimbutas on 7/31/18.
//  Copyright © 2018 Paysera. All rights reserved.
//

import Foundation
import ObjectMapper
import PayseraCommonSDK

public class PSSavingsAccount: Mappable {
    public var type: String!
    public var accountNumber: String!
    public var goal: PSSavingsAccountGoal?
    public var displayUrl: String?
    
    public init() {}
    
    required public init?(map: Map) {   
    }
    
    public func mapping(map: Map) {
        type          <- map["type"]
        accountNumber <- map["account_number"]
        goal          <- map["goal"]
        displayUrl    <- map["display_url"]
    }
}

public class PSSavingsAccountGoal: Mappable {
    public var amount: PSMoney?
    public var dateUntil: Date?
    
    public init() {}
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        amount    <- map["amount"]
        dateUntil <- (map["date_until"], DateTransform())
    }
}
