//
//  AppDelegate.swift
//  TTS
//
//  Created by 太阳在线YHY on 2017/6/28.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit
import CoreData


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		return true
	}
	
	func applicationWillTerminate(_ application: UIApplication) {
		if #available(iOS 10.0, *) {
			
		}else {
			
		}
	}
	
	@available(iOS 10.0,*)
	lazy var persistentContainer: NSPersistentContainer = {
		let container = NSPersistentContainer(name: "savePersonData")
		container.loadPersistentStores(completionHandler: { (storeDescroption, error) in
			
		})
		return container
		
	}()
	
	lazy var applicationDocumentsDirectory: URL = {
		let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
		return urls[urls.count - 1]
	}()
	
	lazy var managedObjectModel: NSManagedObjectModel = {
		let modelURL = Bundle.main.url(forResource: "savePersonData", withExtension: "momd")!
		return NSManagedObjectModel(contentsOf: modelURL)!
		
	}()
	
	lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
		let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
		let url = self.applicationDocumentsDirectory.appendingPathComponent("personViewCoreData.sqlite")
		var failureReason = "There is an error!"
		
		do {
			
		}catch {
			
		}
		
		return coordinator
	}()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



}

