//
//  BPDatabaseConfig.swift
//  BPDatabase
//
//  Created by samsha on 2021/6/23.
//

import Foundation

public protocol BPDatabaseConfigDelegate: NSObjectProtocol {
    func printLog(log: String)
}

public struct BPDatabaseConfig {
    public static var share = BPDatabaseConfig()
    
    public weak var delegate: BPDatabaseConfigDelegate?
}
