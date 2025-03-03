//
//  HexaCore.swift
//  HexaCommunity
//
//  Created by Djavan Bertrand on 20/12/2024.
//

import KeychainAccess

/// HexaCore
public class HexaCore {
    /// The keychain
    let keychain = Keychain(service: "com.hexa.community")

    /// Constructor
    public init() {}
}
