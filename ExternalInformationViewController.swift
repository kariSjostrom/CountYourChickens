//
//  ExternalInformationViewController.swift
//  CountYourChickens
//
//  Created by Karissa the Squid on 10/26/15.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//

import UIKit

class ExternalInformationViewController: UIViewController {


    @IBOutlet weak var webview: UIWebView!
    @IBAction func btnBack(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(false, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadExternalPDF()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func LoadExternalPDF()
    {
        //webview.loadLocalPDF("testers")
        webview.loadExternalPDF("http://www.treasury.gov/resource-center/financial-education/Documents/OFE-CFAP-Resources.pdf")
    }
}
extension UIWebView {
//    func loadLocalPDF(name:String!) {
//        //load local pdf
//        let termsPath:String? = NSBundle.mainBundle().pathForResource(name, ofType: "pdf")!
//        let url = NSURL(fileURLWithPath: termsPath!)
//        let pdfRequest = NSURLRequest(URL: url)
//        self.loadRequest(pdfRequest)
//    }
    func loadExternalPDF(name:String!){
        let url = NSURL(string: name)
        let request = NSURLRequest(URL:url!)
        self.scalesPageToFit = true
        self.loadRequest(request)
    }
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
