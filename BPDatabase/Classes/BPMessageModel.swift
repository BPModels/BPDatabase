//
//  BPMessageModel.swift
//  BaseProject
//
//  Created by 沙庭宇 on 2020/11/13.
//  Copyright © 2020 沙庭宇. All rights reserved.
//

import BPCommon

public enum BPMessageType: Int {
    /// 文本
    case text     = 0
    /// 图片
    case image    = 1
    /// 时间
    case time     = 2
    /// 撤回
    case withDraw = 3
    /// 草稿
    case draft    = 99

    /// 获取显示的CellID
    var cellID: String {
        get {
            switch self {
            case .text, .image:
                return "kBPChatRoomCell"
            case .time:
                return "kBPChatRoomLocalTimeCell"
            case .withDraw:
                return "kBPChatRoomWithDrawCell"
            default:
                return ""
            }
        }
    }
}

public enum BPMessageFromType: Int {
    /// 自己
    case me
    /// 对方
    case friend
    /// 系统
    case system
    /// 本地（时间戳等）
    case local
}

public enum BPMessageStatus: Int {
    /// 发送成功
    case success
    /// 发送失败
    case fail
    /// 发送中…
    case sending
    /// 编辑中…
    case editing
}

public struct BPMessageModel {
    public var id: String          = ""
    public var sessionId           = ""
    public var text: String        = ""
    public var time: Date          = Date(timeIntervalSinceNow: 0)
    public var type: BPMessageType = .text
    public var fromType: BPMessageFromType = .me
    public var mediaModel: BPMediaModel? // 多媒体资源
    public var status: BPMessageStatus = .success
    public var unread: Bool        = true

    public init() {}
}
