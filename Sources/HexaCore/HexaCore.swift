//
//  HexaCore.swift
//  HexaCommunity
//
//  Created by Djavan Bertrand on 20/12/2024.
//

import KeychainAccess
import SwiftProtobuf

/// HexaCore
public class HexaCore {
    /// The keychain
    let keychain = Keychain(service: "com.hexa.community")

    private let test: Com_Hexacommunity_TestResponse
    public var testResponseValue: String {
        test.value
    }

    /// Constructor
    public init() {
        test = .with {
            $0.value = "Hello, World!"
        }
    }
}
