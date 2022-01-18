//
//  ViewController.swift
//  campkalikasan
//
//  Created by admin on 1/16/22.
//

	
import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
   var webView: WKWebView!
   override func viewDidLoad() {
      super.viewDidLoad()
      let myURL = URL(string:"https://www.campkalikasan.com/")
      let myRequest = URLRequest(url: myURL!)
      webView.load(myRequest)
   }
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
   }
}
