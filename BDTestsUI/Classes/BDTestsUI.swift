//
//  BDTestsRealm.swift
//  BDTest
//
//  Created by Derek Bronston on 2/16/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import XCTest


open class BDTestsUI:XCTestCase {
    
    
    
    override open func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override open func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    public func textfield(identifier:String,text:String){
        
        let app = XCUIApplication()
        
        let field = app.textFields[identifier]
        let exists_field = NSPredicate(format: "exists == true")
        expectation(for: exists_field, evaluatedWith:field, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        field.tap()
        field.typeText(text)
        
    }
    
    public func secureTextfield(identifier:String,text:String){
        
        let app = XCUIApplication()
        
        let field = app.secureTextFields[identifier]
        let exists_field = NSPredicate(format: "exists == true")
        expectation(for: exists_field, evaluatedWith:field, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        field.tap()
        field.typeText(text)
        
    }
    
    //TEST LABEL
    public func label(text:String,identifier:String){
        
        let app = XCUIApplication()
        
        let label = app.staticTexts[identifier]
        let exists_label = NSPredicate(format: "exists == true")
        expectation(for: exists_label, evaluatedWith:label, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        //IS STATUS CORRECTLY DISPLAYED
        XCTAssertNotNil(label)
        XCTAssertEqual(label.label, text)
    }
    
    public func labelContains(text:String,identifier:String){
        
        let app = XCUIApplication()
        
        let label = app.staticTexts[identifier]
        let exists_label = NSPredicate(format: "exists == true")
        expectation(for: exists_label, evaluatedWith:label, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        //IS STATUS CORRECTLY DISPLAYED
        XCTAssertNotNil(label)
        XCTAssert(label.label.contains(text))
    }
    
    
    public func view(exists:String,identifier:String){
        
        let app = XCUIApplication()
        let label = app.otherElements[identifier]
        let exists_view = NSPredicate(format: "exists == \(exists)")
        expectation(for: exists_view, evaluatedWith:label, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    //TEST ALERT
    public func alert(title:String,message:String?,button:String?,tap:Bool?){
        
        let app = XCUIApplication()
        
        let alert = app.alerts[title]
        let exists_alert = NSPredicate(format: "exists == true")
        expectation(for: exists_alert , evaluatedWith:alert , handler: nil)
        waitForExpectations(timeout: 2, handler: nil)
        
        if let msg = message {
            XCTAssert(app.alerts[title].staticTexts[msg].exists)
        }
        
        if let btn = button {
            XCTAssert(app.alerts[title].buttons[btn].exists)
        }
        
        if tap != nil {
            if let btn = button {
                app.alerts[title].buttons[btn].tap()
            }else {
                XCTFail()
            }
        }
    }
    
    public func alertFalse(title:String){
        let app = XCUIApplication()
        
        let alert = app.alerts[title]
        let exists_alert = NSPredicate(format: "exists == false")
        expectation(for: exists_alert , evaluatedWith:alert , handler: nil)
        waitForExpectations(timeout: 2, handler: nil)
        
    }
    
    //TEST BUTTON
    public func button(identifier:String,tap:Bool?,exists:String){
        
        let app = XCUIApplication()
        
        let btn = app.buttons[identifier]
        let exists_btn = NSPredicate(format: "exists == \(exists)")
        expectation(for: exists_btn , evaluatedWith:btn , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        if tap != nil {
            btn.tap()
        }
    }
    
    public  func buttonLabel(identifier:String,text:String){
        let app = XCUIApplication()
        
        let btn = app.buttons[identifier]
        let exists_btn = NSPredicate(format: "exists == true")
        expectation(for: exists_btn , evaluatedWith:btn , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        
        XCTAssertEqual(app.label, text)
    }
    
    public func statusBar(identifier:String,tap:Bool?){
        
        let app = XCUIApplication()
        
        let btn = app.statusBars.buttons[identifier]
        let exists_btn = NSPredicate(format: "exists == true")
        expectation(for: exists_btn , evaluatedWith:btn , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        if tap != nil {
            btn.tap()
        }
    }
    
    //ACTION SHEET
    public func sheet(title:String,tap:Bool?,numberOfItems:UInt?){
        
        let app = XCUIApplication()
        
        //ARE THERE CHOICES AVAIL
        let weeklyOrderChoice1 = app.sheets.buttons[title]
        let exists_weeklyOrderChoice1 = NSPredicate(format: "exists == true")
        expectation(for: exists_weeklyOrderChoice1 , evaluatedWith:weeklyOrderChoice1 , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        if let num = numberOfItems {
            let sht = app.sheets
            XCTAssertEqual(sht.buttons.count, num)
        }
        
        if tap != nil {
            weeklyOrderChoice1.tap()
        }
    }
    
    public func collectionWithLabel(cellLabel:String,tap:Bool?){
        
        let app = XCUIApplication()
        let firstChild = app.collectionViews[cellLabel].children(matching:.any).element(boundBy: 0)
        if firstChild.exists {
            
            if tap != nil {
                firstChild.tap()
            }
        }
    }
    
    public func collectionCell(cellLabel:String,labelString:String?,tap:Bool?){
        
        let app = XCUIApplication()
        let firstChild = app.collectionViews.children(matching:.any).element(boundBy: 0)
        if firstChild.exists {
            
            if tap != nil {
                firstChild.tap()
            }
            if labelString ==  nil { return }
            let cellLbl = app.collectionViews.children(matching:.any).staticTexts[cellLabel]
            let exists_cellLbl  = NSPredicate(format: "exists == true")
            expectation(for: exists_cellLbl  , evaluatedWith:cellLbl  , handler: nil)
            waitForExpectations(timeout: 5, handler: nil)
            
            if let lblString = labelString {
                XCTAssertEqual(cellLbl.label, lblString)
            }
        }
    }
    
    public  func collectionCellLabelExists(cellLabel:String,exists:String){
        
        let app = XCUIApplication()
        let firstChild = app.collectionViews.children(matching:.any).element(boundBy: 0)
        if firstChild.exists {
            
            let cellLbl = app.collectionViews.children(matching:.any).staticTexts[cellLabel]
            let exists_cellLbl  = NSPredicate(format: "exists == \(exists)")
            expectation(for: exists_cellLbl  , evaluatedWith:cellLbl  , handler: nil)
            waitForExpectations(timeout: 5, handler: nil)
            
            
        }
    }
    
    public  func collectionButton(buttonLabel:String,tap:Bool?){
        
        let app = XCUIApplication()
        let firstChild = app.collectionViews.children(matching:.any).element(boundBy: 0)
        if firstChild.exists {
            
            
            let cellLbl = firstChild.children(matching:.any).buttons[buttonLabel]
            let exists_cellLbl  = NSPredicate(format: "exists == true")
            expectation(for: exists_cellLbl  , evaluatedWith:cellLbl  , handler: nil)
            waitForExpectations(timeout: 5, handler: nil)
            
            if tap != nil {
                cellLbl.tap()
            }
        }
    }
    
    public func tabBar(tabIndex:UInt){
        
        let tabBarsQuery = XCUIApplication().tabBars
        let button = tabBarsQuery.children(matching: .button).element(boundBy: tabIndex)
        button.tap()
        button.tap()
        
    }
    
    public func tableCellByIndex(cellIndex:UInt){
        let app = XCUIApplication()
        app.tables.children(matching: .any).element(boundBy:cellIndex).tap()
    }
    
    
    public func tableCellByIdentifier(text:String,tap:Bool){
        
        let app = XCUIApplication()
        let label =  app.tables.staticTexts[text]
        let label_exists = NSPredicate(format: "exists == true")
        expectation(for: label_exists  , evaluatedWith:label , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        if tap {
            label.tap()
        }
    }
    
    public  func tableCellByIdentifierDoesNotExist(text:String){
        
        let app = XCUIApplication()
        let label =  app.tables.staticTexts[text]
        let label_exists = NSPredicate(format: "exists == false")
        expectation(for: label_exists  , evaluatedWith:label , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    public func navBar(navIdentifier:String){
        let app = XCUIApplication()
        let bar = app.navigationBars[navIdentifier]
        let navBar_exists = NSPredicate(format: "exists == true")
        expectation(for: navBar_exists  , evaluatedWith:bar  , handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        bar.otherElements.children(matching: .button).element.tap()
    }
}
