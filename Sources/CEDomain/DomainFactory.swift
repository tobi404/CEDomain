//
//  DomainFactory.swift
//  
//
//  Created by Beka Demuradze on 07.10.22.
//

import Factory
import Foundation

// MARK: - Global injection
public class Dependencies {
    static var core: CoreContainerInterface!

    public static func injectCoreDependencies(container: CoreContainerInterface) {
        self.core = container
    }
}

public protocol CoreContainerInterface {
    // Modules
    var userBalanceDataRepository: Factory<UserBalanceDataInterface> { get }
    var currencyConverterDataRepository: Factory<CurrencyConverterDataInterface> { get }
}

