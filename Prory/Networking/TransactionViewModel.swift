//
//  TransactionViewModel.swift
//  Prory
//
//  Created by edwin on 23/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI
import Firebase

class TransactionViewModel: ObservableObject{
    
    @Published var properties = [Property]()
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        
        db.collection("transaction").addSnapshotListener { (querySnapshot, err) in
            guard let documents = querySnapshot?.documents else {
                 print("No documents")
                 return
               }
            
            self.properties = documents.map { queryDocumentSnapshot -> Property in
                
                let data = queryDocumentSnapshot.data()
                let id = data["id"] as? String ?? ""
                let unit = data["unit"] as? String ?? ""
                let name = data["name"] as? String ?? ""
                let location = data["location"] as? String ?? ""
                let currentRent = data["currentRent"] as? String ?? ""
                let totalRent = data["totalRent"] as? String ?? ""
                
                return (Property(id: id, unit: unit, name: name, location: location, currentRent: currentRent, totalRent: totalRent))
            }
        }
    }
}
