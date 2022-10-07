//
//  CurrencyEntity.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

protocol Currency: Hashable {
    var name: String { get }
    var symbol: String { get }
}

struct CurrencyEntity: Currency {
    let name: String
    let symbol: String
}
