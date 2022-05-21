//
//  scripts.swift
//  LunchTime
//
//  Created by Eric Messager on 21/05/2022.
//

import Foundation
import SwiftUI

public func sendMessage(numero: String,message: String){
    let sms: String = "sms:\(numero)&body=\(message)"
    let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    UIApplication.shared.open(URL.init(string: strURL)!,options: [:],completionHandler: nil)
}

