//
//  AddCollectionView.swift
//  TestBed
//
//  Created by Ian Dundas on 12/03/2021.
//

import SwiftUI

struct EditCollectionView: View {
    @State var isAdding: Bool
    @State var name: String
    @State private var hasFilledCredentials = true

    var body: some View {
        Form {
            Text("A collection is a named group of Tacks. For example, for a city, or for a holiday.")
            Section() {
                TextField("Name", text: $name)
            }

            Section {
                Button("Save changes") {
                    // activate theme!
                }
            }
        }.navigationTitle( (isAdding ? "Add" : "Edit") + " Collection" )
    }
}

struct AddCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EditCollectionView(isAdding: true, name: "")
        }
        NavigationView {
            EditCollectionView(isAdding: false, name: "Amsterdam")
        }
    }
}
