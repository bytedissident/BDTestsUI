//
//  BDTestsUITestsUITests.swift
//  BDTestsUITestsUITests
//
//  Created by Derek Bronston on 5/22/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import XCTest


class BDTestsUITestsUITests: BDTestsUI {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for eac
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTextfield_exists_typeText() {
        
        //EXISTS, ENTER TEXT
        self.textfield(identifier: "test-text-field", text: "text",exists: true)
    }
    
    func testTextField_doesNotExist(){
        
        self.textfield(identifier: "no-test-text-field", text: "text",exists: false)
    }
    
    func testSecureTextfield_exists_typeText() {
        
        //EXISTS, ENTER TEXT
        self.secureTextfield(identifier: "test-secure-text-field", text: "text",exists: true)
    }
    
    func testSecureTextField_doesNotExist(){
        
        self.secureTextfield(identifier: "no-test-text-field", text: "text",exists: false)
    }
    
    func testLabel_exists_accessoryLabelHasCorrectText(){
        self.label(text: "test-label", identifier: "test-label", exists: true)
    }
    
    func testLabel_doesNotExist(){
        self.label(text: nil, identifier: "label-does-not-exist", exists: false)
    }
    
    func testLabelContains_accessoryContainsText(){
        self.labelContains(text: "test-", identifier: "test-label")
    }
    
    func testView_exists(){
        self.view(identifier: "blue-view", exists: true)
    }
    
    func testView_doesNotExist(){
         self.view(identifier: "blue-view-does-not-exist", exists: false)
    }
    
    func testButton_doesNotExist(){
        self.button(identifier: "test-button-no", tap: false, exists: false)
    }
    
    func testButton_exists_tap(){
        self.button(identifier: "test-button", tap: true, exists: true)
        self.label(text: "Test Label Pressed", identifier: "Test Label Pressed", exists: true)
    }
    
    func testButtonLabel(){
        self.buttonLabel(identifier: "test-button", text: "test-button")
    }
    
    func testAlert(){
        
        self.button(identifier: "test-button-alert-trigger", tap: true, exists: true)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: true)
        
        self.label(text: "One Pressed", identifier: "One Pressed", exists: true)
    }
    
    func testSheet(){
        
        self.button(identifier: "test-button-sheet-trigger", tap: true, exists: true)
        
        self.sheet(title: "Sheet Title", message: "Sheet message.", button: "one", tap: true, numberOfItems: 2)
        
        self.label(text: "One Pressed", identifier: "One Pressed", exists: true)
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
    
    func testTableCellByIdentifier_doesNotExist(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIdentifier(text: "cell 0 - does not exist", tap: false, exists:false)
    }
}
