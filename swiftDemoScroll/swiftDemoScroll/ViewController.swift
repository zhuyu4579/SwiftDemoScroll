//
//  ViewController.swift
//  swiftDemoScroll
//
//  Created by 浙大网新中研软件 on 2019/8/27.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    lazy var scrollView = UIScrollView()
    lazy var titleView = UIView()
    lazy var imageView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.frame = self.view.frame
        self.view.addSubview(scrollView)
        imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width*6+50)
        scrollView.addSubview(imageView)
        scrollView.contentSize = imageView.bounds.size
        let imageOne = UIImageView()
        imageOne.image = UIImage(named: "zg")
        imageOne.frame = CGRect(x: 0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        let imageTwo = UIImageView()
        imageTwo.image = UIImage(named: "ys")
        imageTwo.frame = CGRect(x: 0, y:imageOne.frame.origin.y+imageOne.frame.size.height+10, width: self.view.frame.size.width, height: self.view.frame.size.width)
        let imageThree = UIImageView()
        imageThree.image = UIImage(named: "zg")
        imageThree.frame = CGRect(x: 0, y:imageTwo.frame.origin.y+imageTwo.frame.size.height+10, width: self.view.frame.size.width, height: self.view.frame.size.width)
        let imageFour = UIImageView()
        imageFour.image = UIImage(named: "ys")
        imageFour.frame = CGRect(x: 0, y:imageThree.frame.origin.y+imageThree.frame.size.height+10, width: self.view.frame.size.width, height: self.view.frame.size.width)
        let imageFive = UIImageView()
        imageFive.image = UIImage(named: "zg")
        imageFive.frame = CGRect(x: 0, y:imageFour.frame.origin.y+imageFour.frame.size.height+10, width: self.view.frame.size.width, height: self.view.frame.size.width)
        let imageSix = UIImageView()
        imageSix.image = UIImage(named: "ys")
        imageSix.frame = CGRect(x: 0, y:imageFive.frame.origin.y+imageFive.frame.size.height+10, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        let atm :[UIImageView] = [imageOne,imageTwo,imageThree,imageFour,imageFive,imageSix]
        for i in atm {
            imageView.addSubview(i)
        }
        titleView.backgroundColor = UIColor.white
        titleView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 64)
        titleView.alpha = 0
        let title = UILabel()
        title.text = "演示"
        title.frame.size = CGSize(width: 200, height: 50)
        title.textAlignment = .center
        title.font = UIFont(name: "HelveticaNeue-Light", size: 20)
        title.center.x = titleView.center.x
        title.center.y = titleView.center.y + 10
        titleView.addSubview(title);
        self.view.addSubview(titleView)
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let min : CGFloat = -20
        let max : CGFloat = 84
        let offset = scrollView.contentOffset.y
        let alpha = (offset - min) / (max - min)
        titleView.alpha = alpha
   
    }

}

