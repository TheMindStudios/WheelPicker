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

    @IBOutlet var picker: WheelPicker!
    @IBOutlet var sector: UIView!

    fileprivate var flags = ["ad", "be", "br", "by", "ca", "cn", "cy",
                             "cz", "de", "dk", "fi", "fr", "gb-eng",
                             "ge", "pt", "ru", "tr", "ua", "un", "us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        picker.dataSource = self
        picker.delegate = self
        
        picker.interitemSpacing = 25.0
        picker.fisheyeFactor = 0.001
        picker.style = .styleFlat
        picker.isMaskDisabled = false
        picker.scrollDirection = .horizontal
        
        picker.textColor = UIColor.blue.withAlphaComponent(0.5)
        picker.highlightedTextColor = UIColor.blue
        picker.reloadData()
        
        sector.layer.borderWidth = 1.0
        sector.layer.borderColor = UIColor.blue.cgColor

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: WheelPickerDataSource {
    
    func numberOfItems(_ wheelPicker: WheelPicker) -> Int {
        
        return flags.count
    }
    
//    func titleFor(_ wheelPicker: WheelPicker, _ index: Int) -> String {
//    
//        return flags[index]
//    }

    func imageFor(_ wheelPicker: WheelPicker, _ index: Int) -> UIImage {
        
        return UIImage(named: flags[index])!
    }
}

extension ViewController:WheelPickerDelegate {
    
    func wheelPicker(_ wheelPicker: WheelPicker, didSelectItemAt index: Int) {
        
        print("\(flags[index])")
    }
    
    func wheelPicker(_ wheelPicker: WheelPicker, marginForItem index: Int) -> CGSize {
        
        return CGSize(width: 0.0 , height: 0.0)
    }
    
//    func wheelPicker(_ wheelPicker: WheelPicker, configureLabel label: UILabel, for index: Int) {
//        
//        label.textColor = UIColor.black.withAlphaComponent(0.5)
//        label.highlightedTextColor = UIColor.black
//        label.backgroundColor = UIColor.init(hue: CGFloat(index)/CGFloat(flags.count) , saturation: 1.0, brightness: 1.0, alpha: 1.0)
//    }
}
