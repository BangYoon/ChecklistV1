//
//  ContentView.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/05/27.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import SwiftUI

struct ChecklistView: View {
    @ObservedObject var checklist = Checklist()
    @State var newChecklistItemViewIsVisible = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(checklist.items) {
                    checklistItem in
                        RowView(checklistItem: checklistItem)
                }  //End of ForEach
                .onDelete(perform: checklist.deleteListItem)
                .onMove(perform: checklist.moveListItem)
            }  //End of List
            .navigationBarItems(
                leading: Button(action: {self.newChecklistItemViewIsVisible = true}) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add item")
                    }
                },
                trailing: EditButton())
                .navigationBarTitle("Ckecklist", displayMode: .inline)
            .onAppear() { self.checklist.printChecklistContents() }
        }  //End of Navigation View
            .sheet(isPresented: $newChecklistItemViewIsVisible ) {
                //Text("New item screen coming soon!")
                NewChecklistItemView(checklist: self.checklist)
        }
    }  //End of body
}  //End of ChecklistView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistView()
    }
}
