//
//  DeveloperSpec.swift
//  MaxibonKataIOS
//
//  Created by Noelia Alvarez on 28/07/2017.
//  Copyright © 2017 GoKarumi. All rights reserved.
//

import Foundation

import XCTest
import SwiftCheck
@testable import MaxibonKataIOS

class DeveloperSpec: XCTestCase {

    fileprivate let anyName = "Pedro"
    fileprivate let anyNumberOfMaxibonsToGet = 11
    
    func test3All() {
        property("the number of maxibons assignes is alwas +")
            <- forAll {(numberOfMaxibons: Int) in
            let developer = Developer(name: self.anyName, numberOfMaxibonsToGet: numberOfMaxibons)
            return developer.numberOfMaxibonsToGet >= 0
        }
    }

}
