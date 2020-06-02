//
//  Checklist.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/06/02.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import Foundation

class Checklist: ObservableObject {
    @Published var items = [
        ChecklistItem(name: "Walk the dog", isChecked: false),
        ChecklistItem(name: "Brush my teeth", isChecked: false),
        ChecklistItem(name: "Walk the dog", isChecked: true),
        ChecklistItem(name: "Soccer practice", isChecked: false),
        ChecklistItem(name: "Walk the dog", isChecked: true)
    ]
    
    //Method
    func printChecklistContents() {
        for item in items {
            print(item)
        }
    }
    func deleteListItem(whichElement: IndexSet) {
        items.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    func moveListItem(whichElement: IndexSet, destination: Int) {
        items.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
}
