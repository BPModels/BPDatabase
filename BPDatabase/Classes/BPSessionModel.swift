//
//  BPChatModel.swift
//  BaseProject
//
//  Created by 沙庭宇 on 2020/11/13.
//  Copyright © 2020 沙庭宇. All rights reserved.
//

import ObjectMapper

public enum BPSessionType: Int {
    case normal = 0
    case system = 1
    case group  = 2
}

public struct BPSessionModel: Mappable {

    public var id: String         = ""
    /// 会话类型
    public var type               = BPSessionType.normal
    /// 是否置顶
    public var isTop: Bool        = false
    /// 好友ID
    public var friendId: String   = ""
    /// 好友名称
    public var friendName: String = ""
    /// 好友头像地址
    public var friendAvatarPath: String?
    /// 最后一条消息内容
    public var lastMessage: String?
    /// 最后一条消息时间
    public var lastMessageTime: Date?
    /// 最后一条消息类型
    public var lastMessageType: BPMessageType = .text
    /// 最后一条消息状态
    public var lastMessageStatus: BPMessageStatus = .success
    /// 最后一条时间戳消息的时间，用于判断发送消息是否需要显示时间在消息列表中
    public var lastTimestamp: Date?
    /// 未读消息数
    public var unreadCount: Int = 0
    /// 创建时间
    public var createTime: Date?

    public init() {}
    public init?(map: Map) {}

    public mutating func mapping(map: Map) {}
}
