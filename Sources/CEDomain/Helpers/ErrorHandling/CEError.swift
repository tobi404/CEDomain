//
//  CEError.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

struct CEError: Error {
    let errorCode: Int = 0
    let userMessage: String
    let debugMessage: String
}
