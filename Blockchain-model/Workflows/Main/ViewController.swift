//
//  ViewController.swift
//  Blockchain-model
//
//  Created by Nikita Kazakov on 11.12.2017.
//  Copyright © 2017 Nikita Kazakov. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var textLabel: NSTextField!
    @IBOutlet weak var button: NSButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()
    }
    
    func configureView() {
        
        textField.placeholderString = "Enter your name"
        
        textLabel.stringValue = ""
        textLabel.textColor = NSColor.red
        textLabel.font = NSFont.boldSystemFont(ofSize: 25.0)
        
        button.title = "Say hello"
        
    }
    @IBAction func buttonAction(_ sender: Any) {
        
        var name = textField.stringValue
        if name.isEmpty {
            name = "World"
        }
        
        let greeting = "Hello, \(name)!!!!"
        self.textLabel.stringValue = greeting
    }
}

