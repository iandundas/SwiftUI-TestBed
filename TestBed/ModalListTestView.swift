//
//  ModalListTestView.swift
//  TestBed
//
//  Created by Ian Dundas on 12/03/2021.
//

import SwiftUI

struct CollectionListView: View {
    @Environment(\.presentationMode) var presentationMode

    @State private var refresh = UUID() // https://stackoverflow.com/questions/65126986/swiftui-bottombar-toolbar-disappears-when-going-back/65127277#65127277

    var body: some View {
        NavigationView {

            List {
                ForEach(1..<300) { i in
                    NavigationLink(
                        destination: EditCollectionView(isAdding: false, name: "Amsterdam").onDisappear { refresh = UUID() },
                        label: {
                            Text("Amsterdam")
                                .font(.title3)
                        })

                }.onDelete(perform: { x in
                })
            }.navigationTitle("Collections")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button (action: {
                        print("Help tapped!")
                    }, label: {
                        Text("Close")
                    })
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.bottomBar) {
                    EditButton()
                    Spacer()
                    Button (action: {
                        print("Help tapped!")
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }.id(refresh)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ModalListTestView: View {
    @State private var showingSheet = true

    var body: some View {
        ZStack {
            Color.offWhite

            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                CollectionListView()
            }

        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ModalListTestView_Previews: PreviewProvider {
    static var previews: some View {
        ModalListTestView()
    }
}
