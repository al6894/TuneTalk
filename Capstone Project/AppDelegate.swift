//
//  AppDelegate.swift
//  Capstone Project
//
//  Created by Andy Lee on 4/11/23.
//

import UIKit
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // TODO: Pt 1 - Initialize Parse SDK

        // Add the following values from your Parse server.
        // For back4app hosted Parse servers:
        //   - App Settings tab -> Security & Keys -> App Keys -> applicationId + clientKey
        //   - App Settings tab -> App Management -> Parse API Address
        // https://github.com/parse-community/Parse-Swift/blob/main/ParseSwift.playground/Sources/Common.swift
        ParseSwift.initialize(applicationId: "9IxdkomqgdWGKpZCjEVSyfHoZsnI1alsIy7B8fxD",
                              clientKey: "U2LdUC2l6WcHRrFiaEb6iZiZdkZKhOAUGD5QbvvQ",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

