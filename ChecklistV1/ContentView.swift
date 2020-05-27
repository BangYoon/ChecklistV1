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
                Text("Walk the dog")
                Text("Brush my teeth")
                Text("Learn iOS development")
                Text("Soccer practice")
                Text("Eat ice cream")
            }  //End of List
            .navigationBarTitle("Ckecklist")
        }  //End of Navigation View
    }  //End of body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
