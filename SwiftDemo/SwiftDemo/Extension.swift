//
//  Extension.swift
//  SurveySDkDemo
//
//  Created by kuldeep on 28/01/21.
//  Copyright © 2021 markelytics. All rights reserved.
//

import Foundation
import  UIKit

extension UIViewController {

func showToast(message: String, font: UIFont) {
//    let toastLabel = UILabel()
//    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
//    toastLabel.textColor = .white
//    toastLabel.font = font
//    toastLabel.textAlignment = .center
//    toastLabel.text = message
//    toastLabel.alpha = 1.0
//    toastLabel.layer.cornerRadius = 10
//    toastLabel.clipsToBounds = true
//    
//    let maxWidthPercentage: CGFloat = 0.8
//    let maxTitleSize = CGSize(width: view.bounds.size.width * maxWidthPercentage, height: view.bounds.size.height * maxWidthPercentage)
//    var titleSize = toastLabel.sizeThatFits(maxTitleSize)
//    titleSize.width += 20
//    titleSize.height += 10
//    toastLabel.frame = CGRect(x: view.frame.size.width / 2 - titleSize.width / 2, y: view.frame.size.height - 50, width: titleSize.width, height: titleSize.height)
//    
//    view.addSubview(toastLabel)
//    
//    UIView.animate(withDuration: 1, delay: 2, options: .curveEaseOut, animations: {
//        toastLabel.alpha = 0.0
//    }, completion: { _ in
//        toastLabel.removeFromSuperview()
//    })
    DispatchQueue.main.async {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)

             alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                alertController.dismiss(animated: true, completion: nil)
             }))
        
        self.present(alertController, animated: true, completion: nil)
    }
}
}
