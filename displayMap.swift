//
//  displayMap.swift
//  Assignment2
//
//  Created by Chris Swinson on 9/19/17.
//  Copyright © 2017 Chris Swinson. All rights reserved.
//

import UIKit

class displayMap: UIViewController {

   
    @IBOutlet var mapView: UIWebView!
    
    var HQChosen = UIWebView()
    
    var whichHQ = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        
        if whichHQ == 0 {let url = NSURL(string:"https://bit.ly/2xh7DtY")
            let req = NSURLRequest(url:url! as URL)
            self.mapView.loadRequest(req as URLRequest)}
        if whichHQ == 1 {let url = NSURL(string:"https://bit.ly/2yaegvN")
            let req = NSURLRequest(url:url! as URL)
            self.mapView.loadRequest(req as URLRequest)}
        if whichHQ == 2 {let url = NSURL(string:"https://bit.ly/2x9YDaw")
            let req = NSURLRequest(url:url! as URL)
            self.mapView.loadRequest(req as URLRequest)}
        if whichHQ == 3 {let url = NSURL(string:"https://bit.ly/2xgCoPG")
            let req = NSURLRequest(url:url! as URL)
            self.mapView.loadRequest(req as URLRequest)}
        if whichHQ == 4 {let url = NSURL(string:"https://bit.ly/2xtxA9W")
            let req = NSURLRequest(url:url! as URL)
            self.mapView.loadRequest(req as URLRequest)}
//
//        // Do any additional setup after loading the view.
    }



}
