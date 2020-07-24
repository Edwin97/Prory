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
    
    @Published var transactions = [Transaction]()
    
    private var db = Firestore.firestore()
    
    init(){
        
        db.collection("transaction").addSnapshotListener { (querySnapshot, err) in
            guard let documents = querySnapshot?.documents else {
                 print("No documents")
                 return
               }
            
            self.transactions = documents.map { queryDocumentSnapshot -> Transaction in
                
                let data = queryDocumentSnapshot.data()
                let id = data["id"] as? String ?? ""
                let rent = data["rent"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                let date = data["date"] as? String ?? ""
                let status = data["status"] as? String ?? ""
                
                return (Transaction(id: id, date: date, rent: rent, description: description, status: status))
            }
        }
    }
}
