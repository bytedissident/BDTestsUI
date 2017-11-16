//
//  BDsUIsUIs.swift
//  BDsUIsUIs
//
//  Created by Derek Bronston on 5/22/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import BDTests
import XCTest

extension BDTestsUIBase {
    
    func bd_stubOne(){

        
        button(behavior: "tap button to test first db interaction", identifier: "test-button", tap: true, exists: true)
        label(behavior: "should see", text: "test-string-one", identifier: "test-string-one", exists: true)
         button(behavior: "reset seeder", identifier: "reset-button-test-1", tap: true, exists: true)
      
        reset()
    }
    
    func bd_stubTwo(){
        
    
        button(behavior: "tap button to test second db interaction", identifier: "test-button", tap: true, exists: true)
        label(behavior: "should see", text: "test-string-two", identifier: "test-string-two", exists: true)
        button(behavior: "reset seeder", identifier: "reset-button-test-2", tap: true, exists: true)
        
        
        reset()
    }
    
    
   
    
    func bd_TableCellByIndex(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIndex(cellIndex: 1)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: false)
    }
    
    func bd_TableCellByIdentifier_exists(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIdentifier(text: "cell 0", tap: true, exists: true)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: false)
    }

    

    
    /*func bd_Textfield_exists_typeText() {
        
        //EXISTS, ENTER TEXT
        textfield(identifier: "-text-field", text: "text",exists: true)
    }
    
    func bd_TextField_doesNotExist(){
        
        self.textfield(identifier: "no--text-field", text: "text",exists: false)
    }
    
    func bd_SecureTextfield_exists_typeText() {
        
        //EXISTS, ENTER TEXT
        self.secureTextfield(identifier: "-secure-text-field", text: "text",exists: true)
    }
    
    func bd_SecureTextField_doesNotExist(){
        
        self.secureTextfield(identifier: "no--text-field", text: "text",exists: false)
    }
    
    func bd_Label_exists_accessoryLabelHasCorrectText(){
        self.label(text: "-label", identifier: "-label", exists: true)
    }
    
    func bd_Label_doesNotExist(){
        self.label(text: nil, identifier: "label-does-not-exist", exists: false)
    }
    
    func bd_LabelContains_accessoryContainsText(){
        self.labelContains(text: "-", identifier: "-label")
    }
    
    func bd_View_exists(){
        self.view(identifier: "blue-view", exists: true)
        again()
    }
    
    func bd_View_doesNotExist(){
         self.view(identifier: "blue-view-does-not-exist", exists: false)
    }
    
    func bd_Button_doesNotExist(){
        self.button(identifier: "-button-no", tap: false, exists: false)
    }
    
    func bd_Button_exists_tap(){
        self.button(identifier: "-button", tap: true, exists: true)
        self.label(text: " Label Pressed", identifier: " Label Pressed", exists: true)
    }
    
    func ButtonLabel(){
        self.buttonLabel(identifier: "-button", text: "-button")
    }
    
    func Alert(){
        
        self.button(identifier: "-button-alert-trigger", tap: true, exists: true)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: true)
        
        self.label(text: "One Pressed", identifier: "One Pressed", exists: true)
    }
    
    func Sheet(){
        
        self.button(identifier: "-button-sheet-trigger", tap: true, exists: true)
        
        self.sheet(title: "Sheet Title", message: "Sheet message.", button: "one", tap: true, numberOfItems: 2)
        
        self.label(text: "One Pressed", identifier: "One Pressed", exists: true)
    }
    
    func TableCellByIndex(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIndex(cellIndex: 1)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: false)
    }
    
    func TableCellByIdentifier_exists(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIdentifier(text: "cell 0", tap: true, exists: true)
        
        self.alert(title: "Alert Title", message: "Alert message.", button: "one", tap: false)
    }
    
    func TableCellByIdentifier_doesNotExist(){
        
        self.tabBar(tabIndex: 1)
        
        self.tableCellByIdentifier(text: "cell 0 - does not exist", tap: false, exists:false)
    }
    
    func CollectionCell(){
        
        self.tabBar(tabIndex: 2)
        self.collectionCell(cellLabel: "", tap:false)
    }*/
}
