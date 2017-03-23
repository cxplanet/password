//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

// Simulate User Interaction, not available in Xcode 7.2
func delay(delay:Double, closure:()->()) {
    dispatch_after(
        DispatchTime.now(
            dispatch_time_t(DISPATCH_TIME_NOW),
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

let color = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
let leftMargin = 20
let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667)) // iPhone 6 proportions
view.backgroundColor = UIColor.gray

// LABEL
let label = UILabel(frame: CGRect(x: leftMargin, y: 5, width: 300, height: 44))
label.text = "Hello, playground"
label.textColor = UIColor.whiteColor
view.addSubview(label)

// TEXTFIELD
let textField = UITextField(frame: CGRect(x: leftMargin, y: 60, width: 300, height: 44))
textField.placeholder = "Edit me…"
textField.backgroundColor = UIColor(white: 1, alpha: 0.5)
textField.textColor = UIColor.whiteColor()
textField.userInteractionEnabled = true
view.addSubview(textField)

XCPlaygroundPage.currentPage.liveView = view

delay(1.0) { () -> () in
    textField.text = "New text!"
}

