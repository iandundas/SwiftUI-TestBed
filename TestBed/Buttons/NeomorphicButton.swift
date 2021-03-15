// uncomment in Xcode 12.5! 
////
////  NeomorphicButton.swift
////  TestBed
////
////  Created by Ian Dundas on 12/03/2021.
////
//
import SwiftUI
//
// https://www.hackingwithswift.com/articles/213/how-to-build-neumorphic-designs-with-swiftui
extension Color {
    static let offWhite = Color(red: 225/255, green: 225/255, blue: 235/255)
    static let darkStart = Color(red: 50/255, green: 60/255, blue: 65/255)
    static let darkEnd = Color(red: 25/255, green: 25/255, blue: 30/255)

}
//
//extension LinearGradient {
//    init(_ colors: Color...) {
//        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
//    }
//}
//struct SimpleButtonStyle: ButtonStyle {
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .padding(30)
//            .contentShape(Circle())
//            .background(
//                Group {
//                    if configuration.isPressed {
//                        Circle().fill(Color.offWhite)
//                            .overlay(
//                                Circle()
//                                    .stroke(Color.gray, lineWidth: 4)
//                                    .blur(radius: 4)
//                                    .offset(x: 2, y: 2)
//                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
//                            ).overlay(Circle()
//                                        .stroke(Color.white, lineWidth: 8)
//                                        .blur(radius: 4)
//                                        .offset(x: -2, y: -2)
//                                        .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
//                            )
//                    }
//                    else {
//                        Circle().fill(Color.offWhite)
//                            .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 10)
//                            .shadow(color: .white.opacity(0.7), radius: 10, x: -5, y: -5)
//                    }
//                }
//            )
//    }
//}
//
//struct NeomorphicButtonDemoView: View {
//    var body: some View {
//        ZStack {
//            LinearGradient(Color.darkStart, Color.darkEnd)
//
//            Button(action: {
//                print("Button tapped")
//            }, label: {
//                Image(systemName: "heart.fill")
//            })
//            .buttonStyle(SimpleButtonStyle())
//            .foregroundColor(.gray)
//
////            RoundedRectangle(cornerRadius: 25)
////                .fill(Color.offWhite)
////                .frame(width: 300, height: 300)
////                .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 10)
////                .shadow(color: .white.opacity(0.7), radius: 10, x: -5, y: -5)
//        }
//        .edgesIgnoringSafeArea(.all)
//
//    }
//}
//
//struct NeomorphicButtonDemoView_Previews: PreviewProvider {
//    static var previews: some View {
//        NeomorphicButtonDemoView()
//    }
//}
