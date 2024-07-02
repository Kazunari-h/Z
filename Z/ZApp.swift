//
//  ZApp.swift
//  Z
//
//  Created by Kazunari Hirosawa on 2024/06/11.
//


// SwiftUIとは？
// Swiftを使ったAppleが作ったUIフレームワーク
// JSのReactやVueのようなもの

// 構造体(struct)でAppやViewを定義する！

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct ZApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
