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

public struct userData: Decodable {
    enum DecodingError: Error {
        case missingFile
    }
    
    let companyName: String
    let firstLastName: String
    let companyEmail: String
    let agencyEmail: String
    
    init(fileName: String) throws {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            throw DecodingError.missingFile
        }
        
        let decoder = JSONDecoder()
        let data = try Data(contentsOf: url)
        self = try decoder.decode(userData.self, from: data)
    }
}

