//
//  LoaderViewController.swift
//  CustomGif
//
//  Created by Aditya Vemuru on 11/06/19.
//  Copyright © 2019 aezion. All rights reserved.
//

import UIKit

class LoaderViewController: UIViewController {

    @IBOutlet weak var loaderMessageTextview: UITextView!
    @IBOutlet weak var loaderGifImageView: UIImageView!
    
    var messageString = String()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    static func initWith(_ title: String) -> LoaderViewController {
        let vc = LoaderViewController.init(nibName: LoaderViewController.className, bundle: nil)
        vc.loadView()
        return vc
    }

    
    override func viewDidLayoutSubviews() {
        let gifLoader = UIImage.gifImageWithName("your_loader")
//        gifLoader?.scale = 1.0
        loaderGifImageView.image = gifLoader

    }
    
    func showLoader(_ vc: UIViewController){
        vc.add(self)
    }
    func showloaderWithTitle(_ vc: UIViewController, message: String){
        setLoaderTitle(message)
        vc.add(self)

    }
    func removeLoader(){
        self.remove()
    }
    
    func addUpdatingMessage(_ message: String){
        messageString += message
        setLoaderTitle(messageString)
    }
    
    
    func setLoaderTitle(_ title: String){
        messageString = title
        loaderMessageTextview.text = messageString
        let bottom = NSMakeRange(loaderMessageTextview.text.count - 1, 1)
        loaderMessageTextview.scrollRangeToVisible(bottom)

    }
}
