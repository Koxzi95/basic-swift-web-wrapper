//
//  ViewController.swift
//  basic-web-wrapper
//
//  Created by Tom Cox on 14/06/2015.
//  Copyright (c) 2015 Cox | Rees | Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://koxzi.me")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doRefresh(AnyObject) {
        webView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        webView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        webView.goForward()
    }
    
    // @IBAction func stop(AnyObject) {
    // webView.stopLoading()
    // }
    
}
