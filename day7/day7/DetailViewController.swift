//
//  DetailViewController.swift
//  day7
//
//  Created by Andy on 3/16/16.
//  Copyright © 2016 Andy Rice. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: [String: String]!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    func heightForView(text: String, font: UIFont, width: CGFloat) -> CGFloat {
        let label: UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = font
        label.text = text
        label.sizeToFit()
        return label.frame.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        guard detailItem != nil else { return }

        if let body = detailItem["body"] {
//            var html = "<html>"
//            html += "<head>"
//            html += "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
//            html += "<style> body { font-size: 150%; } </style>"
//            html += "</head>"
//            html += "<body>"
//            html += body
//            html += "</body>"
//            html += "</html>"
//            webView.loadHTMLString(html, baseURL: nil)
            
            let label = UILabel(frame: CGRectMake(10, 10, 700, 500))
            label.text = body
            label.numberOfLines = 0;


            self.view.addSubview(label)
        }
    }
}
