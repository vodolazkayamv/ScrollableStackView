//
//  ViewController.swift
//  ScrollableStackView
//
//  Created by Мария Водолазкая on 27.03.2020.
//  Copyright © 2020 Мария Водолазкая. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myView: UIView = UIView(frame: CGRect(x: 10, y: 10, width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 20))
        self.view.addSubview(myView)
        
        // init ScrollableStackView
        let scrollableStack = ScrollableStackView();
        // place ScrollableStackView right on self.view
        // it will occupy all available space - like air in a jar
        scrollableStack.placeVerticalStackOnView(view: myView)
        
        // let's add some Arranged Views into scrollable StackView
        for i in 1...10 {
            let customView : UIView = UIView();
            customView.frame = CGRect(x: 0, y: 0, width: 10, height: 170)
            customView.backgroundColor = .systemYellow
            customView.layer.cornerRadius = 10;
            
            if (i == 2) {
                let scrollableStackMini = ScrollableStackView();
                scrollableStackMini.placeHorizontalStackOnView(view: customView)
                scrollableStackMini.fillWithStubsHorizontal()
            }
            
            scrollableStack.addArrangedView(view: customView)
        }
    }


}

