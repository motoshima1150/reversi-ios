//
//  PlayerControl.swift
//  Reversi
//
//  Created by Motonari Nakashima on 2020/04/24.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import Foundation

public enum PlayerControl: String {
    case manual = "0"
    case computer = "1"
}

extension PlayerControl: Hashable {}
