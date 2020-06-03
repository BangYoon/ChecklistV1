//
//  NewChecklistItemView.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/06/03.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import SwiftUI

struct NewChecklistItemView: View {
    var body: some View {
        VStack {
            Text("Add new item")
            Form {
                Text("Enter item name")
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add new item")
                    }  //End of HStack
                }  //End of Button
            }  //End of Form
            Text("Swipe down to cancel.")
        }  //End of VStack
    }  //End of body
}  //End of View

struct NewChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewChecklistItemView()
    }
}
