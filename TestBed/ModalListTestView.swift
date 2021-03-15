//
//  ModalListTestView.swift
//  TestBed
//
//  Created by Ian Dundas on 12/03/2021.
//

import SwiftUI

struct CellView: View {
    let text: String
    @State private var pushed = false

    var body: some View {
        HStack {
            NavigationLink(
                destination:
                    EditCollectionView(isAdding: false, name: text),
                isActive: $pushed,
                label: {
                    Text(text).font(.title3)
                })

            Spacer()


            Button(action: {
                print("Apply \(text)")
            }, label: {
                Image(systemName: "checkmark.circle")
            }).buttonStyle(PlainButtonStyle())
        }
    }
}

struct BlueAddButtonView: View {

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.blue)
                .shadow(color: Color.white.opacity(0.3), radius: 3, x: 1, y: 1)
                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 1, y: 1)

            Image(systemName: "plus")
                .foregroundColor(Color.white)
                .font(.system(size: 30, weight: .regular))
        }
        .frame(width: 55, height: 55)
    }
}

struct CollectionListView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ZStack {
                List {
                    Section {
                        Text("Show all Tacks")
                    }
//                    Section(header: Text("Filter by a single collection:")) {
//                        ForEach(1..<51) { i in
//                            CellView(text: "Amsterdam")
//                        }.onDelete(perform: { x in
//                        })
//                    }
                }
                .listStyle(GroupedListStyle())

                if true {

                    Text("Collections are a handy way to group your Tacks. \n\ne.g. Amsterdam, New York, etc")
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                        .padding(.vertical, 50)
                        .background(
                            ZStack {
                                Rectangle()
                                    .fill(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: .black.opacity(0.05), radius: 4, x: 2, y: 2)

                            }
                            .padding(16)
                        )


                }

                VStack(alignment: .trailing) {
                    Spacer()
                    HStack() {
                        Spacer()
                        NavigationLink (
                            destination: EditCollectionView(isAdding: true, name: "")) {
                                BlueAddButtonView()
                            }
                            .padding(.trailing, 16)
                    }
                }
            }
            .navigationTitle("Collections")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button (action: {
                        print("Help tapped!")
                    }, label: {
                        Text("Close")
                    })
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
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

func ??<T>(lhs: Binding<Optional<T>>, rhs: T) -> Binding<T> {
    Binding(
        get: { lhs.wrappedValue ?? rhs },
        set: { lhs.wrappedValue = $0 }
    )
}
