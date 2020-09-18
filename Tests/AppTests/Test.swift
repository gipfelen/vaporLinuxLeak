//
//  File.swift
//  
//
//  Created by jakob on 9/11/20.
//

import Foundation
@testable import App
import XCTVapor


final class BankAccountTest: XCTestCase {
    var app: Application!
    
    static let allTests = [
        ("testGetBankAccountFromAPI", testGetBankAccountFromAPI),

    ]
    

    func testGetBankAccountFromAPI() throws{
        XCTAssert(true)
    }

}
    
