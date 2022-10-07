//
//  BalanceEntityTests.swift
//  CurrencyExchangeTests
//
//  Created by Beka Demuradze on 04.10.22.
//

import XCTest
@testable import CEDomain

final class BalanceEntityTests: XCTestCase {

    var sut: BalanceEntity!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = BalanceEntity(amount: 5498.34, currency: CurrencyEntity.jpyEntity)
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func test_BalanceInitialisation_5498_34JPY() {
        // given
        let amount: Decimal = 5498.34
        let currency = CurrencyEntity.jpyEntity

        // then
        XCTAssertEqual(amount, sut.amount)
        XCTAssertEqual(currency, (sut.currency as? CurrencyEntity))
    }

    func test_UpdateBalanceMethod() {
        // given
        let newAmount: Decimal = 123.43

        // when
        sut.updateAmount(newAmount)

        // then
        XCTAssertEqual(newAmount, sut.amount)
    }
}
