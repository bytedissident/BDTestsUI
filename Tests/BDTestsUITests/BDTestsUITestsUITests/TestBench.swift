//
//  TestBench.swift
//  BDTestsUITests
//
//  Created by Derek Bronston on 11/16/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import XCTest
import BDTests

class TestBench: BDTestsUI {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStubOne(){
        
        _ = BDTests(enviornmentName: "").seedDatabase(ref: "seed_bd_stubOne")
        XCUIApplication().launch()
        button(behavior: "tap button to test first db interaction", identifier: "test-button", tap: true, exists: true)
        label(behavior: "should see", text: "test-string-one", identifier: "test-string-one", exists: true)
        
        
    }
    
    func teststubTwo(){
        
        _ = BDTests(enviornmentName: "").seedDatabase(ref: "seed_bd_stubTwo")
        XCUIApplication().launch()
        button(behavior: "tap button to test second db interaction", identifier: "test-button", tap: true, exists: true)
        label(behavior: "should see", text: "test-string-two", identifier: "test-string-two", exists: true)
    
    }
    
   
    
    func testTableCellByIndex(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIndex(cellIndex: 1)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: false)
    }
    
    func testTableCellByIdentifier_exists(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIdentifier(text: "cell 0", tap: true, exists: true)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: false)
    }
}
