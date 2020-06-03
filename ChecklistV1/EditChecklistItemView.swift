//
//  EditChecklistItemView.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/06/02.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import SwiftUI

struct EditChecklistItemView: View {
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        Form {
            TextField("Name", text: $checklistItem.name)
            Toggle("Completed", isOn: $checklistItem.isChecked)
        }  //End of Form
    }  //End of body
}  //End of struct

struct EditChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditChecklistItemView(checklistItem: .constant(ChecklistItem(name:"Sample item")))
    }
}
