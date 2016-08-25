//
//  ViewController.swift
//  Safari
//
//  Created by Komari Herring on 8/24/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate
{
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var webView: WKWebView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    
    {
        
        let url = URL(string: "https://\(textField.text!)")
        
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        return true
        
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


