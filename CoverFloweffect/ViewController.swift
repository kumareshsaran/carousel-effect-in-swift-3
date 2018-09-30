//
//  ViewController.swift
//  CoverFloweffect
//
//  Created by CSS on 30/09/18.
//  Copyright © 2018 css. All rights reserved.
//

import UIKit

class ViewController: UIViewController,iCarouselDelegate, iCarouselDataSource {
    
    
    let number = [1,2,3,4,4,5]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    

    

    @IBOutlet var carouselView: iCarousel!
    override func viewDidLoad() {
        super.viewDidLoad()
        carouselView.type = .linear
        //carouselView.scrollToItemBoundary = true
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return number.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        view.backgroundColor = UIColor.red
        return view
    }
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if option == iCarouselOption.spacing {
            return value * 1.1
        }
        return value
    }
    
    func carouselCurrentItemIndexDidChange(_ carousel: iCarousel) {
        print(carousel.currentItemIndex)
    }
    
    override func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any) -> Bool {
        return true
    }
    
    func carousel(_ carousel: iCarousel, placeholderViewAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        view.backgroundColor = UIColor.blue
        return view
    }
    
    func numberOfPlaceholders(in carousel: iCarousel) -> Int {
        return 1
    }
    
    

}

