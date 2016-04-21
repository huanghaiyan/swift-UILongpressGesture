//
//  ViewController.swift
//  swift-UILongpressGesture
//
//  Created by huanghy on 16/4/20.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRectMake(32, 80, 256, 256)
        let imageView = UIImageView(frame: rect)
        let image = UIImage(named: "1")
        imageView.image = image
        
        imageView.userInteractionEnabled = true
        self.view.addSubview(imageView)
        //创建一个长按手势对象，用于检测发生在设备中的长按手势
        let gesture = UILongPressGestureRecognizer(target: self, action: "longPress:")
        //将手势指定给图像视图对象
        imageView.addGestureRecognizer(gesture)
    }
    //创建一个方法，用来接收长按手势事件
    func longPress(gesture:UILongPressGestureRecognizer){
        //首先检测一下手势事件的阶段
        if(gesture.state == UIGestureRecognizerState.Began){
            
            let alertView = UIAlertController(title: "Infomation", message: "Long Press", preferredStyle: UIAlertControllerStyle.Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                
            }
            alertView.addAction(OKAction)
            self.presentViewController(alertView, animated:true, completion:nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

