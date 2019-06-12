//
//  ViewController.swift
//  CustomGif
//
//  Created by Aditya Vemuru on 11/06/19.
//  Copyright © 2019 aezion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Intialize below line in the required viewcontroller
    let loader = LoaderViewController.initWith("")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { (timer) in
        
            //Use below line to show loader with title
            self.loader.showloaderWithTitle(self, message: "Hi, Welcome\n ")
        })
        

        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { (timer) in
            //Use below line to show loader with dynamic message updating to the loader view
            self.loader.addUpdatingMessage("Your Birthday wish doesn’t have ")
            
        })

        
        
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false, block: { (timer) in
            self.loader.addUpdatingMessage("to be boring and conventional all the time. ")

        })

        Timer.scheduledTimer(withTimeInterval: 8.0, repeats: false, block: { (timer) in
            self.loader.addUpdatingMessage("Not only will they make your loved ")
            
        })

        Timer.scheduledTimer(withTimeInterval: 10.0, repeats: false, block: { (timer) in
            self.loader.addUpdatingMessage("ones laugh but also make them see the funny side of you. ")
            
        })

        //Use below code to hide loader
//        Timer.scheduledTimer(withTimeInterval: 18.0, repeats: false, block: { (timer) in
//            self.loader.removeLoader()
//
//        })

    }

}
























extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        
        child.view.alpha = 0

        self.addChild(child)
        
        if let frame = frame {
            child.view.frame = frame
        }
    
        self.view.addSubview(child.view)
        
        UIView.animate(withDuration: 0.45) {
            child.view.alpha = 1

        }
        child.didMove(toParent: self)
        
    }
    
    func remove() {
        
        UIView.animate(withDuration: 0.4, delay: 0, options: [], animations: {
        
        }){(true) in
            self.willMove(toParent: nil)
            self.view.removeFromSuperview()
            self.removeFromParent()
            
        }
    }
}


extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
