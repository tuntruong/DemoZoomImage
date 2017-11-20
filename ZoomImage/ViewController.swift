//
//  ViewController.swift
//  ZoomImage
//
//  Created by Cuong15tr on 11/2/17.
//  Copyright © 2017 Cuong15tr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
//        {
//        didSet {
//            scrollView.delegate = self
//            scrollView.contentSize = imageView.frame.size
//            scrollView.minimumZoomScale = 1.0
//            scrollView.maximumZoomScale = 6.0
//        }
//    }
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 6.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
}

