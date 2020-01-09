//
//  ViewController.swift
//  PickerViewWithDesign
//
//  Created by Nikunj Prajapati on 16/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate
{
    var arr = ["INDIA","AUS","CANEDA","USA","UK","NEW ZELAND"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        Countrylbl.text = arr[row]
    }

    @IBOutlet weak var CountryPickerView: UIPickerView!
    @IBOutlet weak var Countrylbl: UILabel!
    @IBOutlet weak var SelectBtn: UIButton!
    @IBOutlet weak var MyToolBar: UIToolbar!
    
    
    @IBAction func datepickerChanged(_ sender: Any)
    {
        let dateFormatter = DateFormatter()
          dateFormatter.dateStyle = DateFormatter.Style.short
          dateFormatter.timeStyle = DateFormatter.Style.short
        //dateFormatter.dateFormat = "dd/MM/yyyy, HH:mm "
        Datelabel.text = dateFormatter.string(from: datePickerOutlet.date)
    }
    
    
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    @IBOutlet weak var Datelabel: UILabel!
    
    @IBAction func DoneButton(_ sender: Any)
    {
        
        
        
        self.Countrylbl.isHidden = false
        
        self.MyToolBar.isHidden = true
        
        //to show date label and print a print label
        self.Datelabel.isHidden = false
                
        self.CountryPickerView.isHidden = true
        self.datePickerOutlet.isHidden = true
        
    }
    @IBAction func SelectCountryButton(_ sender: Any)
    {
        self.CountryPickerView.isHidden = false
        self.MyToolBar.isHidden = false
        self.datePickerOutlet.isHidden = true
        
    }
    @IBAction func datebtn(_ sender: Any)
    {
        self.datePickerOutlet.isHidden = false
        self.MyToolBar.isHidden = false
        self.CountryPickerView.isHidden = true
        
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        SelectBtn.backgroundColor = UIColor.init(red: 0/255, green: 100/255, blue: 0/255, alpha: 1)
//        self.CountryPickerView.dataSource = self
//        self.CountryPickerView.delegate = self
//        SelectBtn.layer.cornerRadius = 20
        
        self.CountryPickerView.isHidden = true
  //      self.Countrylbl.isHidden = true
        self.MyToolBar.isHidden = true
        self.datePickerOutlet.isHidden = true
   //     self.Datelabel.isHidden = true

        
        
        
    }
   
}

