//
//  ViewController.swift
//  WheelPicker
//
//  Created by hapichdima on 02/23/2017.
//  Copyright (c) 2017 hapichdima. All rights reserved.
//

import UIKit
import WheelPicker

class ViewController: UIViewController {

    @IBOutlet var monthPicker: WheelPicker!
    @IBOutlet var yearPicker: WheelPicker!
    
    fileprivate var months = ["November", "December", "January", "Febrary", "March", "April", "May", "June", "July", "August", "September", "October"]
    fileprivate var years = ["2011", "2012", "2013", "2014", "2015", "2016", "2017"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        monthPicker.dataSource = self
        monthPicker.delegate = self
        
        monthPicker.interitemSpacing = 25.0
        monthPicker.style = .styleFlat
        monthPicker.isMaskDisabled = true
        monthPicker.scrollDirection = .vertical

        monthPicker.textColor = UIColor.white.withAlphaComponent(0.5)
        monthPicker.highlightedTextColor = UIColor.white
        
        
        yearPicker.dataSource = self
        yearPicker.delegate = self
        
        yearPicker.interitemSpacing = 25.0
        yearPicker.style = .styleFlat
        yearPicker.isMaskDisabled = true
        yearPicker.scrollDirection = .vertical
        yearPicker.textColor = UIColor.white.withAlphaComponent(0.5)
        yearPicker.highlightedTextColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: WheelPickerDataSource {
    
    func numberOfItems(_ wheelPicker: WheelPicker) -> Int {
        
        if monthPicker == wheelPicker {
            return months.count
        } else if yearPicker == wheelPicker {
            return years.count
        }
        return 0
    }
    
    func titleFor(_ wheelPicker: WheelPicker, _ index: Int) -> String {
        
        if monthPicker == wheelPicker {
           return months[index]
        } else if yearPicker == wheelPicker {
           return years[index]
        }
        return ""
    }
}

extension ViewController:WheelPickerDelegate {
    
    func wheelPicker(_ wheelPicker: WheelPicker, didSelectItemAt index: Int) {
        
        if monthPicker == wheelPicker {
              print("\(months[index])")
        } else if yearPicker == wheelPicker {
              print("\(years[index])")
        }
      
    }
    
    func wheelPicker(_ wheelPicker: WheelPicker, marginForItem index: Int) -> CGSize {
        
        return CGSize(width: 0.0 , height: 0.0)
    }
}
