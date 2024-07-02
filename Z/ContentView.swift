//
//  ContentView.swift
//  Z
//
//  Created by Kazunari Hirosawa on 2024/06/11.
//

import SwiftUI

// struct 構造体の名前: 継承するものの名前 {}
// 継承するものの名前 => プロトコル (or struct)
// プロトコル(or struct)は省略可能

struct ContentView: View {

    // ViewはBodyで構成される
    var body: some View {
        TabView {
                NavigationView {
                    TimelineView()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("タイムライン")
                        .navigationBarItems(trailing: Button(action: {}, label: {
                            Image(systemName: "bell.badge.fill")
                                .foregroundStyle(.red, .yellow)
                        }))
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("タイムライン")
                }
                .foregroundStyle(.green, .green)

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("検索")
                }
                .foregroundStyle(.blue, .blue)


            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("いいね")
                }
                .foregroundStyle(.pink, .pink)


            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("プロフィール")
                }
                .foregroundStyle(.orange, .orange)


        }
    }
}

#Preview {
    ContentView()
}


//         VStack { // 縦並びにするView (Flexbox縦のdiv)
// //            Image(systemName: "globe") 
// //            // 引数のラベルによって意味が違ってくる
// //                .imageScale(.large) // 画像のサイズを変更
// //                .foregroundStyle(.tint) // 画像の色のつき方を指定
// //                // .foregroundColor(.red) // Viewの色を指定
// //            Text("Hello, world!")
// //                .foregroundColor(.red) // Viewの色を指定
            
//             Text("こんにちは")
//         }
//         .padding()
