//
//  FileManager.swift
//  bluesky
//
//  Created by Joey Lovato on 12/19/18.
//  Copyright © 2018 Blue Sky. All rights reserved.
//

import Foundation

public extension FileManager {
    static var documentDirectoryURL: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}

public struct userData: Codable, Equatable {
    let companyName: String
    let firstLastName: String
    let companyEmail: String
    let agencyEmail: String
    
    public init(
        companyName: String,
        firstLastName: String,
        companyEmail: String,
        agencyEmail: String
        ) {
        self.companyName = companyName
        self.firstLastName = firstLastName
        self.companyEmail = companyEmail
        self.agencyEmail = agencyEmail
    }
}

