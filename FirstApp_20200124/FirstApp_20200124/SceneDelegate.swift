//
//  SceneDelegate.swift
//  FirstApp_20200124
//
//  Created by Jungwon on 2020/01/24.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

//@available (iOS 13.0, *)    // class 위에 다가 한번에 처리해도 되지만, 하위 코드에 문제가 생길 수 있기 때문에, 일단 함수 각각에 대해서 버전처리를 해줘야한다.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    @available (iOS 13.0, *)    // iOS 13.0 이상 버전에서만 코드 인식이 가능하도록하는 코드
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    @available (iOS 13.0, *)    // iOS 13.0 이상 버전에서만 코드 인식이 가능하도록하는 코드
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    @available (iOS 13.0, *)    // iOS 13.0 이상 버전에서만 코드 인식이 가능하도록하는 코드
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    @available (iOS 13.0, *)    // iOS 13.0 이상 버전에서만 코드 인식이 가능하도록하는 코드
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    @available (iOS 13.0, *)    // iOS 13.0 이상 버전에서만 코드 인식이 가능하도록하는 코드
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    @available (iOS 13.0, *)    // iOS 13.0 이상 버전에서만 코드 인식이 가능하도록하는 코드
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

