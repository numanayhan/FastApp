//
//  AppDelegate.swift
//  FastApp
//
//  Created by Numan Ayhan on 10.04.2022.
//

import UIKit
import CoreData
import Firebase

var rooter : Navigation?

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        setNavigation()
        
        return true
    }
    func setNavigation(){
        //Window UI
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //Root App
        rooter = Navigation(window: window!)
        rooter?.startApp()
    }

}

