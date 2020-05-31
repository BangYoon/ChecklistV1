//
//  ContentView.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/05/27.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import SwiftUI

struct ChecklistItem: Identifiable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}

struct ContentView: View {
    @State var checklistItems = [
        ChecklistItem(name: "Walk the dog", isChecked: false),
        ChecklistItem(name: "Brush my teeth", isChecked: false),
        ChecklistItem(name: "Walk the dog", isChecked: true),
        ChecklistItem(name: "Soccer practice", isChecked: false),
        ChecklistItem(name: "Walk the dog", isChecked: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(checklistItems) {
                    checklistItem in HStack {
                        Text(checklistItem.name)
                        Spacer()
                        Text(checklistItem.isChecked ? "☑️" : "⬛️")
                    }  //End of HStack
                        .background(Color.white)  //for whole row clickable (dead zone)
                    .onTapGesture {
                        //print("The user tapped a list itme! \(checklistItem.name)")
                        if let matchingIndex = self.checklistItems.firstIndex(where: {
                            $0.id == checklistItem.id
                        }){ self.checklistItems[matchingIndex].isChecked.toggle() }
                        self.printChecklistContents()
                    }
                }  //End of ForEach
                .onDelete(perform: deleteListItem)
                .onMove(perform: moveListItem)
            }  //End of List
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Ckecklist")
            .onAppear() { self.printChecklistContents() }
        }  //End of Navigation View
    }  //End of body
    
    //Method
    func printChecklistContents() {
        for item in checklistItems {
            print(item)
        }
    }
    func deleteListItem(whichElement: IndexSet) {
        checklistItems.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    func moveListItem(whichElement: IndexSet, destination: Int) {
        checklistItems.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
}  //End of ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
