//
//  subView.swift
//  myhw1
//
//  Created by User08 on 2021/3/10.
//

import SwiftUI
struct question {
    let topic: String
    let answer: String
}
var puzzle = [
    question(topic: "內人(射一地名)", answer: "梧棲"),
    question(topic: "紅關公,白劉備,黑張非走去覓(藏)。(台語) 射水果名", answer: "荔枝"),
    question(topic: "天下紅雨(猜一女性用品)", answer: "胸罩(兇兆)"),
    question(topic: "衣錦還鄉 (猜一詩人)", answer: "歸有光"),
    question(topic: "口內一排牙.頭頂一根毛", answer: "白"),
    question(topic: "通通有獎", answer: "份"),
    question(topic: "春江水暖誰先知", answer: "當歸鴨 "),
    question(topic: "13*11*81猜一字？", answer: "陸"),
    question(topic: "請問:避孕藥的主要成份是什麼?", answer: "抗生素"),
    question(topic: "大部份的年輕人都喜歡標新立異,射成語一", answer: "少見多怪,(這裡的少扣年輕,整句別解)"),
    question(topic: "男人上廁所小便(猜一位台灣男歌星)", answer: "陶吉吉"),
    question(topic: "世界最大蜘蛛網", answer: "World Wide Web(WWW)"),
    question(topic: "愛漂亮(猜汽車品牌一)", answer: "喜美"),
    question(topic: "冰山血案(台語歌名一)", answer: "雪中紅"),
    question(topic: "曹操笑，劉備哭(射一字)", answer: "翠(羽(關羽)卒)"),
    question(topic: "兩兄弟立正站好(射一字)", answer: "競"),
    question(topic: "搬家啟示(射人名一)", answer: "白居易"),
    question(topic: "半夜裡打算盤", answer: "暗算"),
    question(topic: "一個男人光屁股坐在石頭上(猜成語)", answer: "以卵擊石"),
    question(topic: "只騙中年人", answer: "童叟無欺"),
    question(topic: "烏籠", answer: "關羽"),
    question(topic: "雨後春筍", answer: "新竹"),
    question(topic: "狗咬鴨子", answer: "呱呱叫"),
    question(topic: "老婆婆燙頭髮", answer: "銀絲捲"),
    question(topic: "王母娘娘(猜地名)", answer: "天母"),
    question(topic: "紅色的路道", answer: "赤道"),
    question(topic: "崔苔菁的屁股(猜人名)", answer: "瓊瑤"),
]

struct subView: View {
    @State var count = 1
    @State var topicText = ""
    @State var answerText = ""
    var body: some View {
        ZStack{
            Text("猜燈謎")
                .bold()
                .foregroundColor(.yellow)
                .padding(.bottom,700)
                    .font(.system(size:42))
            VStack{
                
                Text("第"+"\(count)"+"題")
                    .bold()
                    .foregroundColor(.black)
                        .padding(.bottom,50)
                        .font(.system(size:24))
                
                Text(puzzle[count-1].topic)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .padding(.bottom,50)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 50)
                
                Text("答案："+answerText)
                    .bold()
                    .font(.title)
                    .padding(.bottom,50)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 100)
                
                HStack{
                    Button(action: {
                        answerText = puzzle[count-1].answer
                    }){
                        Text("公布解答")
                            .bold()
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.black)
                            .clipShape(Capsule())
                    }
                    
                    if (count < 10){
                        Button(action: {
                            count += 1
                            answerText = ""
                        }){
                            Text("下一題")
                                .bold()
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(Color.black)
                                .clipShape(Capsule())
                        }
                    }
                    else{
                        Button(action: {
                            puzzle.shuffle()
                            count = 1
                            answerText = ""
                        }){
                            Text("重新10題")
                                .bold()
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(Color.black)
                                .clipShape(Capsule())
                        }
                    }
                }
            }
        }
        .onAppear(perform: {
            puzzle.shuffle()
        })
    }
}

struct subView_Previews: PreviewProvider {
    static var previews: some View {
        subView()
    }
}
