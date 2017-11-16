//
//  ViewController.swift
//  BDTestsUITests
//
//  Created by Derek Bronston on 5/22/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import UIKit
import Alamofire
import BDTests

class Singleton {
    var testValue = "test-value"
    static let sharedInstance = Singleton()
}

extension BDTestsHelper {
    
    public func seed_bd_stubOne(){
        
        
        
        let resetButton = UIButton()
        resetButton.tag = 99999
        resetButton.accessibilityLabel = "reset-button-test-1"
        resetButton.frame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
        resetButton.backgroundColor = UIColor.green
        resetButton.add(for: .touchUpInside){
            _ = BDTestsEnv().testEnv()
            //self.remove()
           
        }
        let window = UIApplication.shared.windows.first!
        window.addSubview(resetButton)
        window.bringSubview(toFront: resetButton)
        Singleton.sharedInstance.testValue = "test-string-one"
        
    }
    
    public func seed_bd_stubTwo(){
        
      
        let resetButton = UIButton()
        resetButton.tag = 99999
        resetButton.accessibilityLabel = "reset-button-test-2"
        resetButton.frame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
        resetButton.backgroundColor = UIColor.green
        resetButton.add(for: .touchUpInside){
            _ = BDTestsEnv().testEnv()
            //self.remove()
            
        }
        let window = UIApplication.shared.windows.first!
        window.addSubview(resetButton)
        window.bringSubview(toFront: resetButton)
        Singleton.sharedInstance.testValue = "test-string-two"
        
        
    }
    
    func seed_bd_Alert(){
        
    }
    func seed_bd_Sheet(){
        
    }
    
    func seed_bd_TableCellByIndex(){
        
    }
    
    func seed_bd_TableCellByIdentifier_exists(){
        
    }
    
    func remove(){
        let window = UIApplication.shared.windows.first!
        for view in window.subviews{
            if view.tag == 99999{
                view.removeFromSuperview()
            }
        }
    }

}

class ViewController: UIViewController {

    
    @IBOutlet weak var testTextField: UITextField!
    @IBOutlet weak var testSecureTextField: UITextField!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var testSwitch: UISwitch!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        _ = BDTestsEnv().testEnv()
    }
    

    @IBAction func testButtonAction(_ sender: Any) {
        
        self.testLabel.accessibilityLabel =  Singleton.sharedInstance.testValue
        self.testLabel.text =  Singleton.sharedInstance.testValue
            
        
    }
    
    @IBAction func triggerSheet(_ sender: Any) {
        
        let alert = UIAlertController(title: "Sheet Title", message: "Sheet message.", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "one", style: .default) { action in
            // perhaps use action.title here
            self.testLabel.accessibilityLabel = "One Pressed"
            self.testLabel.text = "One Pressed"
        })
        
        alert.addAction(UIAlertAction(title: "two", style: .default) { action in
            // perhaps use action.title here
        })
        
        self.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func triggerAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert Title", message: "Alert message.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "one", style: .default) { action in
            // perhaps use action.title here
            self.testLabel.accessibilityLabel = "One Pressed"
            self.testLabel.text = "One Pressed"
        })
        
        alert.addAction(UIAlertAction(title: "two", style: .default) { action in
            // perhaps use action.title here
        })
        
        self.present(alert, animated: true, completion: nil)
    }
}

