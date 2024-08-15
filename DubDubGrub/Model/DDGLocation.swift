//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Amish on 14/08/2024.
//

import Foundation
import CloudKit

struct DDGLocation {
    static let kName = "name"
    static let kDescription = "description"
    static let kSquareAsset = "squareAsset"
    static let kBannerAsset = "bannerAsset"
    static let kAddress = "address"
    static let klocation = "location"
    static let kWebsiteURL = "websiteURL"
    static let kPhoneNumber = "phoneNumber"
    
    let ckRecordID: CKRecord.ID
    let name: String
    let description: String
    let squareAsset: CKAsset!
    let bannerAsset: CKAsset!
    let address: String
    let location: CLLocation
    let websiteURL: String
    let phoneNumber: String
    
    init(record: CKRecord) {
        self.ckRecordID  = record.recordID
        self.name        = record[DDGLocation.kName] as? String ?? "N/A"
        self.description = record[DDGLocation.kDescription] as? String ?? "N/A"
        self.squareAsset = record[DDGLocation.kSquareAsset] as? CKAsset
        self.bannerAsset = record[DDGLocation.kBannerAsset] as? CKAsset
        self.address     = record[DDGLocation.kAddress] as? String ?? "N/A"
        self.location    = record[DDGLocation.klocation] as? CLLocation ?? CLLocation(latitude: 0.0, longitude: 0.0)
        self.websiteURL  = record[DDGLocation.kWebsiteURL] as? String ?? "N/A"
        self.phoneNumber = record[DDGLocation.kPhoneNumber] as? String ?? "N/A"
     }
}
