//
//  mainView.swift
//  myhw1
//
//  Created by User08 on 2021/3/10.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("bg2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                NavigationLink(
                    destination: subView(),
                    label: {
                        Text("開始遊戲")
                            .bold()
                            .font(.title)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .clipShape(Capsule())
                            .foregroundColor(Color.white)
                            .background(Color.red)
                            .clipShape(Capsule())
                            .padding(.top,300)
                    })
            }
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
