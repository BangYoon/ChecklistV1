//
//  ContentView.swift
//  ChecklistV1
//
//  Created by 방윤 on 2020/05/27.
//  Copyright © 2020 BangYoon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("High priority")) {  //The limits of views : 10
                    Group {
                        Text("Walk the dog")
                        Text("Brush my teeth")
                        Text("Learn iOS development")
                        Text("Make dinner")
                        Text("Do laundry")
                        Text("Pay bills")
                    }
                    Group {
                        Text("Finish homework")
                        Text("Change internet provider")
                        Text("Clean the kitchen")
                        Text("Wash the car")
                        Text("Wash the hair")
                    }
                }
                Section(header: Text("Low priority")) {
                    Text("Soccer practice")
                    Text("Eat ice cream")
                    Text("Take vocal lessons")
                    Text("Record hit single")
                    Text("Learn every martial art")
                    Text("Design costume")
                    Text("Design crime-fighting vehicle")
                    Text("Come up with superhero name")
                    Text("Befriend space raccoon")
                    Text("Save the world")
                }
            }  //End of List
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Ckecklist")
        }  //End of Navigation View
    }  //End of body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
