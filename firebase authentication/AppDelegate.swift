//
//  AppDelegate.swift
//  firebase authentication
//
//  Created by Kittisak Phetrungnapha on 9/26/2559 BE.
//  Copyright © 2559 Kittisak Phetrungnapha. All rights reserved.
//

import UIKit
import Firebase
import IQKeyboardManagerSwift
import FBSDKCoreKit
import GoogleSignIn
import Fabric
import TwitterKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        sleep(1)
        FIRApp.configure()
        
        FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
        
        // TODO: - Setup Google client id.
        
        // TODO: - Setup Twitter with Fabric.
        
        IQKeyboardManager.sharedManager().enable = true
        IQKeyboardManager.sharedManager().shouldResignOnTouchOutside = true
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        // TODO: - Setup Google sign in callback url.
        
        // TODO: - Setup Facebook login callback url.
        
        // TODO: - Setup Twitter login callback url.
        
        return true
    }
    
    // MARK: - Helper method
    static func showAlertMsg(withViewController vc: UIViewController, message: String) {
        let alert = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        vc.present(alert, animated: true, completion: nil)
    }
    
    func setRootViewControllerWith(viewIdentifier: String) {
        let vc = UIViewController.getViewControllerWith(viewControllerIdentifier: viewIdentifier)
        window?.rootViewController = vc
    }
    
}

// MARK: - GIDSignInDelegate
extension AppDelegate: GIDSignInDelegate {
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error != nil {
            AppDelegate.showAlertMsg(withViewController: (window?.rootViewController)!, message: error.localizedDescription)
            return
        }
        
        // TODO: - Auth Google's token with Firebase.
    }
    
}
