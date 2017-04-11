# WheelPicker

[![Version](https://img.shields.io/cocoapods/v/WheelPicker.svg?style=flat)](http://cocoapods.org/pods/KnobGestureRecognizer)
![Swift 3.0.x](https://img.shields.io/badge/Swift-3.0.x-orange.svg)


[![TheMindStudios](https://github.com/TheMindStudios/WheelPicker/blob/master/logo.png?raw=true)](https://themindstudios.com/)

A simple yet customizable horizontal and vertical picker view
## Features

- [x] Vertical or Horizontal picker
- [x] Image or Text data
- [x] Configure UILabel & UIImageView
- [x] Flat & 3D style
- [x] Custom mask 
- [x] Configure fisheye factor

![Example](https://github.com/TheMindStudios/WheelPicker/blob/master/mov1.gif)
![Example](https://github.com/TheMindStudios/WheelPicker/blob/master/mov2.gif)
## Usage

1. Import `WheelPicker` module to your `ViewController` class

```swift
import WheelPicker
```
2. Instantiate and set delegate and dataSource as you know. Configure `WheelPicker` if need 

```swift
picker.dataSource = self
picker.delegate = self
```
2.1. Configure `WheelPicker` if need 

```swift
picker.interitemSpacing = 25.0
picker.fisheyeFactor = 0.001
picker.style = .style3D
picker.isMaskDisabled = false
picker.scrollDirection = .vertical

picker.textColor = UIColor.blue.withAlphaComponent(0.5)
picker.highlightedTextColor = UIColor.blue
```
3. then specify the number of items using `WheelPicker` methods

```swift
func numberOfItems(_ wheelPicker: WheelPicker) -> Int
```
4. Specify contents to be shown. You can use either texts or images

```swift
optional func titleFor(_ wheelPicker: WheelPicker, _ index: Int) -> String
optional func imageFor(_ wheelPicker: WheelPicker, _ index: Int) -> UIImage
```

```swift
func wheelPicker(_ wheelPicker: WheelPicker, configureLabel label: UILabel, at index: Int) {

label.textColor = UIColor.black.withAlphaComponent(0.5)
label.highlightedTextColor = UIColor.black
label.backgroundColor = UIColor.init(hue: CGFloat(index)/CGFloat(flags.count) , saturation: 1.0, brightness: 1.0, alpha: 1.0)
}
```

- Using both texts and images are currently not supported. When you implement both, `titleFor(_ wheelPicker: WheelPicker, at index: Int)` will be called and the other won't. 
- You currently cannot specify image sizes; `WheelPicker` shows the original image in its original size. Resize your images in advance if you need.

5. Optional: You can use `WheelPicker` method to observe selection changes
```swift
func wheelPicker(_ wheelPicker: WheelPicker, didSelectItemAt index: Int)
```

## Installation with CocoaPods

To install via CocoaPods add this lines to your Podfile. You need CocoaPods v. 1.1.0 or higher

```bash
$ gem install cocoapods
```
#### Podfile

To integrate `WheelPicker` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target 'TargetName' do
  pod 'WheelPicker', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

## License

WheelPicker is available under the MIT license. See the LICENSE file for more info.
