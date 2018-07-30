//
//  ViewController.swift
//  IOS-Swift-WebView
//
//  Created by Pooya on 2018-07-29.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView :  WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1  The webView loads the url using an URLRequest object.
        let url = URL(string: "https://github.com/soonin")!   // https://github.com/soonin  //http://swiftnetwork.ca
        webView.load(URLRequest(url: url))
        
        // 2  A refresh item is added to the toolbar which will refresh the current webpage.
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

}

