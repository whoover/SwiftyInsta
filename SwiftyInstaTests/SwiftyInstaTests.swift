//
//  SwiftyInstaTests.swift
//  SwiftyInstaTests
//
//  Created by Mahdi on 10/24/18.
//  Copyright © 2018 Mahdi. All rights reserved.
//

import XCTest
@testable import SwiftyInsta

class SwiftyInstaTests: XCTestCase {

    func testCalculateSignatureHash() {
        let message =
        """
        {"phone_id":"28484284-e646-4a29-88fc-76c2666d5ab3","username":"testusernameinstaminer","guid":"7f585e77-becf-4137-bf1f-84ab72e35eb4","device_id":"android-271e73ff77f246e7","password":"testpasswordinstaminer","login_attempt_count":"0"}
        """
        XCTAssertEqual("ebde2e05c55f3d41d89201ad75669e493a27408f46ef7f2395bb357456d6db5b", message.hmac(algorithm: .SHA256, key: Headers.HeaderIGSignatureValue))
    }
    
    func testMD5hash() {
        XCTAssertEqual("220cb46b456b848c19b2825db5bd3838", "SwiftyInsta".MD5)
    }
}