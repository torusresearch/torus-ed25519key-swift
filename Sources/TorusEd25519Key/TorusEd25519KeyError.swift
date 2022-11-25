//
//  File.swift
//  
//
//  Created by Dhruv Jaiswal on 25/11/22.
//

import Foundation

enum TorusEd25519KeyError:Error{
    case invalidKeySize
}

extension TorusEd25519KeyError:LocalizedError{
    public var errorDescription: String?{
        switch self {
        case .invalidKeySize:
            return "Invalid key size"
        }
    }
}
