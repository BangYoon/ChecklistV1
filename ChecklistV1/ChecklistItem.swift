//
//  ChecklistItem.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/06/02.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable, Codable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}
