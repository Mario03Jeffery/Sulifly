//
//  SuliflyApp.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-16.
//

import SwiftUI
import FirebaseCore
import CoreData

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
      
      
  }
}

class DataManager: NSObject, ObservableObject {
    /// Dynamic properties that the UI will react to
    
    /// Add the Core Data container with the model name
    let container: NSPersistentContainer = NSPersistentContainer(name: "SuliflyCoredata")

    /// Default init method. Load the Core Data container
    override init() {
        super.init()
        container.loadPersistentStores { _, _ in }
    }
}

/*extension DataManager {
    
    func save(value: String){
        if let appDelegate = UIApplication.shared.delegate as? DataManager {
            let context = appDelegate.persistentContainer.context
            
            guard let entityDescription = NSEntityDescription.entity(forEntityName: "Cart", in: context) else {return}
            
            let newItem = NSManagedObject(entity: entityDescription, insertInto: context)
            
            newItem.setValue(value, forKey: "cartshop")
            
            do{
                try context.save()
                //printa
            } catch {
                // let's goo
            }
        }
    }


    func retrieveCart(){
        if let appDelegate = UIApplication.shared.delegate as? DataManager {
            let context = appDelegate.persistentContainer.context
        let fetchRequest = NSFetchRequest<Cart>(entityName: "cartshop")
            do{
                let results = try context.fetch(fetchRequest)
                
                for result in results {
                    if let Cart = result.String("cartshop") {
                      print("added")
                    }
                }
            } catch {
                // let's goo
            }
           
        }
    }
    
}*/


  
    



import SwiftUI

@main
struct firebaseApp: App {
    let persistenceController = PersistenceController.shared
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
           ContentView()
           .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}


