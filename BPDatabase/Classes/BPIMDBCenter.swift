//
//  IMDBCenter.swift
//  BaseProject
//
//  Created by 沙庭宇 on 2019/9/9.
//  Copyright © 2019 沙庭宇. All rights reserved.
//

import Foundation
import FMDB

public struct BPIMDBCenter: BPDatabaseProtocol {

    public static let `default` = BPIMDBCenter()

    // MARK: ==== Session ====
    /// 获取所有最近会话
    public func fetchAllRecnetSession() -> [BPSessionModel] {
        let modelList = BPIMDBOperator.default.selectAllSession()
        return modelList
    }

    /// 更新最近会话展示信息
    public func updateSessionModel(model: BPSessionModel) {
        // 查询是否存在
        let result = BPIMDBOperator.default.selectSession(friend: model.friendId)
        if result {
            // 更新
            BPIMDBOperator.default.updateSession(model: model)
        } else {
            // 插入
            BPIMDBOperator.default.insertSession(model: model)
        }
    }

    /// 更新最近会话的最后一条显示的时间戳
    public func updateSessionLastShowTime(model: BPSessionModel) {
        // 查询是否存在
        let result = BPIMDBOperator.default.selectSession(friend: model.friendId)
        if result {
            // 更新
            BPIMDBOperator.default.updateSessionLastShowTime(model: model)
        } else {
            // 插入
            BPIMDBOperator.default.insertSession(model: model)
        }
    }

    /// 更新Session置顶状态
    public func updateSessionTop(isTop: Bool, session id: String) -> Bool {
        return BPIMDBOperator.default.updateSessionTop(isTop: isTop, session: id)
    }
    
    /// 删除某条聊天记录
    @discardableResult
    public func deleteSession(session id: String) -> Bool {
        return BPIMDBOperator.default.deleteSession(session: id)
    }
    /// 删除所有最近聊天记录
    @discardableResult
    public func deleteAllSession() -> Bool {
        return BPIMDBOperator.default.deleteAllSession()
    }

    // MARK: ==== Message ====
    public func selectAllMessage(session id: String) -> [BPMessageModel] {
        return BPIMDBOperator.default.selectAllMessage(session: id)
    }

    public func updateMesssage(message model: BPMessageModel) -> Bool {
        return BPIMDBOperator.default.updateMessage(message: model)
    }

    @discardableResult
    public func insertMessage(message model: BPMessageModel) -> Bool {
        return BPIMDBOperator.default.insertMessage(message: model)
    }

    @discardableResult
    public func deleteAllMessage(session id: String) -> Bool {
        return BPIMDBOperator.default.deleteAllMessage(session: id)
    }
}
