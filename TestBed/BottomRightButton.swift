//
//  BottomRightButton.swift
//  TestBed
//
//  Created by Ian Dundas on 12/03/2021.
//

import SwiftUI




struct BottomRightButton: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                List {
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
                VStack(alignment: .trailing) {
                    Spacer()
                    HStack() {
                        Spacer()
                        NavigationLink (
                            destination: EditCollectionView(isAdding: true, name: ""),
                            label: {
                                ZStack {
                                    Circle()
                                        .fill(Color.blue)
                                        .shadow(color: .white.opacity(0.3), radius: 3, x: 1, y: 1)
                                        .shadow(color: .blue.opacity(0.3), radius: 10, x: 1, y: 1)
                                    
                                    Image(systemName: "plus")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 30, weight: .regular))
                                }
                                .frame(width: 55, height: 55)
                            }).padding(.trailing, 16)
                    }
                }
            }
        }
    }
}

struct BottomRightButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomRightButton()
    }
}
