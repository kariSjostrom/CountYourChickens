//
//  PreferencesViewController.swift
//  CountYourChickens
//
//  Created by Karissa the Squid on 10/28/15.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBAction func btnClear(sender: AnyObject) {
        
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(nil, forKey: "name")
        defaults.setObject(nil, forKey: "bank")
        defaults.setObject(nil, forKey: "color")
        
        
        defaults.synchronize()
        
        txtName.text = ""
        txtBank.text = ""
        
        MyColor.selectRow(0,inComponent: 0, animated: true)
        txtName.becomeFirstResponder()
        
    }
    
    //color
    var selectedcolor:String!
    let pickerColor = ["Strawberry Milk-Shake","Dark Blue","Green", "Purple", "Cyan", "Burn"]
    @IBAction func btnLoad(sender: UIButton) {
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if let nameNotNull = defaults.objectForKey("name") as? String {
            self.txtName.text = defaults.objectForKey("name") as? String
        }
        
        if let bankIsNotNill = defaults.objectForKey("bank") as? String {
            self.txtBank.text = defaults.objectForKey("bank") as? String
        }
        
        
        if let colorIsNotNill = defaults.objectForKey("color") as? String {
            var favoriteColorSelected = defaults.objectForKey("color") as! String
            let SelectedColor:Int = (pickerColor).indexOf(favoriteColorSelected)!
            
            if (favoriteColorSelected=="Strawberry Milkshake Red")
            {
                self.view.backgroundColor = UIColor(hue: 0, saturation: 0.32, brightness: 1, alpha: 1.0) /* #fcabab */
            }
            if (favoriteColorSelected=="Sunny Cream Yellow")
            {
                self.view.backgroundColor = UIColor(hue: 0.1361, saturation: 0.32, brightness: 1, alpha: 1.0) /* #f9eba9 */
            }
            if (favoriteColorSelected=="Fresh Lime Green")
            {
                self.view.backgroundColor = UIColor(hue: 0.2639, saturation: 0.32, brightness: 1, alpha: 1.0) /* #cdfcab */
            }
            if (favoriteColorSelected=="Hint of Sea Green")
            {
                self.view.backgroundColor = UIColor(hue: 0.4167, saturation: 0.32, brightness: 1, alpha: 1.0) /* #abfcd4 */
            }
            if (favoriteColorSelected=="Cold Sky Blue")
            {
                self.view.backgroundColor = UIColor(hue: 0.5028, saturation: 0.32, brightness: 1, alpha: 1.0) /* #a9f8f9 */
            }
            if (favoriteColorSelected=="Blue Berries and Cream Blue")
            {
                self.view.backgroundColor = UIColor(hue: 0.6278, saturation: 0.32, brightness: 1, alpha: 1.0) /* #abbefc */
            }
            if (favoriteColorSelected=="Lavander Glow Purple")
            {
                self.view.backgroundColor = UIColor(hue: 0.7306, saturation: 0.32, brightness: 1, alpha: 1.0) /* #ccadff */
            }
            if (favoriteColorSelected=="Baby Blanket Pink")
            {
                self.view.backgroundColor = UIColor(hue: 0.8639, saturation: 0.32, brightness: 1, alpha: 1.0) /* #ffadf0 */
            }

            
            MyColor.selectRow(SelectedColor,inComponent: 0, animated: true)
        }
    }
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtBank: UITextField!
    
    @IBOutlet weak var MyColor: UIPickerView!
    
    @IBAction func btnSave(sender: UIButton) {
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.txtName.text, forKey: "name")
        defaults.setObject(self.txtBank.text, forKey: "bank")
        defaults.setObject(selectedcolor, forKey: "color")
        
        
        defaults.synchronize()
    }
    
    //Needed for picker
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerColor.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedcolor=pickerColor[row]
        if (selectedcolor=="Teal")
        {
            self.view.backgroundColor = UIColor(hue: 0.5417, saturation: 1, brightness: 0.6, alpha: 1.0)
        }
        if (selectedcolor=="Dark Blue")
        {
            self.view.backgroundColor = UIColor(hue: 0.675, saturation: 1, brightness: 0.59, alpha: 1.0)
        }
        if (selectedcolor=="Green")
        {
            self.view.backgroundColor = UIColor.greenColor()
        }
        if (selectedcolor=="Purple")
        {
            self.view.backgroundColor = UIColor.purpleColor()
        }
        if (selectedcolor=="Cyan")
        {
            self.view.backgroundColor = UIColor.cyanColor()
        }
        if (selectedcolor=="Burn")
        {
            self.view.backgroundColor = UIColor(hue: 0, saturation: 1, brightness: 0.53, alpha: 1.0)
        }
        return pickerColor[row]
        
    }
    //new method hiding keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches , withEvent: event)
    }
    //set delegate to all uitextfields
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
