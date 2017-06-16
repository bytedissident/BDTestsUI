//
//  ViewController.swift
//  BDTestsUITests
//
//  Created by Derek Bronston on 5/22/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import UIKit

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


    @IBAction func testButtonAction(_ sender: Any) {
        
        self.testLabel.accessibilityLabel = "Test Label Pressed"
        self.testLabel.text = "Test Label Pressed"
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

