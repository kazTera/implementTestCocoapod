//
//  AdView.swift
//  GNAdSwipeInterstitialSDK
//
//  Created by Yamamoto Kazunori on 2018/05/07.
//  Copyright © 2018年 Yamamoto Kazunori. All rights reserved.
//

import UIKit

@IBDesignable
public class AdView: UIView {

    @IBOutlet weak var bodyView: UIImageView?
    @IBOutlet weak var headlineView: UIView?
    @IBOutlet weak var iconView: UIView?
    @IBOutlet weak var priceView: UIView?
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    fileprivate func commonInit() {
        guard let view = UINib(nibName: "AdView", bundle: Bundle(for: self.classForCoder)).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.addSubview(view)
    }
}
