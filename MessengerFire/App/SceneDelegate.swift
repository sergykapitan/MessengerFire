//
//  SceneDelegate.swift
//  MessengerFire
//
//  Created by Sergey on 28.10.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
       // window = UIWindow(frame: UIScreen.mainScreen().bounds)
       // window = UIWindow(frame: UIScreen.main().bounds)
        print("Scene willConnectTo.")
               
               // Force convert UIScene type variable to UIWindowScene type variable.
               let windowScene:UIWindowScene = scene as! UIWindowScene;
               
               // Create the UIWindow variable use above UIWindowScene variable.
               self.window = UIWindow(windowScene: windowScene)
            //   self.window = UIWindow(frame: UIScreen.main.bounds)
                   
               // Set this scene's window's background color.
               self.window!.backgroundColor = UIColor.red
               
               // Create a ViewController object and set it as the scene's window's root view controller.
               self.window!.rootViewController = ViewController()
               
               // Make this scene's window be visible.
               self.window!.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("sceneDidDisconnect.")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive.")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("sceneWillResignActive.")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("sceneWillEnterForeground.")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("sceneDidEnterBackground.")
    }


}

