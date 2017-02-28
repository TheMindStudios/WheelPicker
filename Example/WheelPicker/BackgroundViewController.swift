//
//  BackgroundViewController.swift
//  WheelPicker
//
//  Created by Dima on 28.02.17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import WheelPicker

class BackgroundViewController : UIViewController {
    
    @IBOutlet var imagePicker: WheelPicker!
    @IBOutlet var imageView: UIImageView!
    
    fileprivate var previewImages = ["PreviewBitmap","PreviewBitmap2","PreviewBitmap3","PreviewBitmap4","PreviewBitmap5"]
    fileprivate var images = ["Bitmap","Bitmap2","Bitmap3","Bitmap4","Bitmap5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.dataSource = self
        imagePicker.delegate = self
        
        imagePicker.interitemSpacing = 25.0
        imagePicker.style = .style3D
        imagePicker.isMaskDisabled = false
        imagePicker.scrollDirection = .horizontal
        
        imageView.image = UIImage(named: images[0])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension BackgroundViewController: WheelPickerDataSource {
    
    func numberOfItems(_ wheelPicker: WheelPicker) -> Int {
        return previewImages.count
    }
    
    func imageFor(_ wheelPicker: WheelPicker, _ index: Int) -> UIImage {
        
        return UIImage(named: previewImages[index])!
    }
}
extension BackgroundViewController:WheelPickerDelegate {
    
    func wheelPicker(_ wheelPicker: WheelPicker, didSelectItemAt index: Int) {
        
        imageView.image = UIImage(named: images[index])

    }
}
