//
//  NormalDBCenter.swift
//  BaseProject
//
//  Created by 沙庭宇 on 2019/9/9.
//  Copyright © 2019 沙庭宇. All rights reserved.
//

import Foundation
import FMDB

public struct BPNormalDBCenter: BPDatabaseProtocol {

    public static let `default` = BPNormalDBCenter()

    public var db: FMDatabase { return self.normalRunner }

    // MARK: 查询
    public func getUserInfo() {}
    // MARK: 更新
}
