//
//  ViewController.swift
//  SlideshowApp
//
//  Created by さやか on 2019/11/23.
//  Copyright © 2019 taro.kirameki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //タイマー
    var timer: Timer!
    
    //タイマー用の時間の変数
    var timer_sec:Int = 0

    //画像
    let img1 = UIImage(named: "gazou-1.jpg")
    let img2 = UIImage(named: "gazou-2.jpg")
    let img3 = UIImage(named: "gazou-3.jpg")
    let img4 = UIImage(named: "gazou-4.jpg")
    let img5 = UIImage(named: "gazou-5.jpg")
    
    //画像表示部分
    @IBOutlet weak var scroll_photo: UIImageView!
    
    //戻る
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //初期の画像を定義
        scroll_photo.image = img1
    
    }

    //画像切り替え
    @objc func updateTimer(_ timer:Timer){
        if scroll_photo.image == img1{
            scroll_photo.image = img2
            
        }else if scroll_photo.image == img2{
            scroll_photo.image = img3
            
        }else if scroll_photo.image == img3{
            scroll_photo.image = img4
            
        }else if scroll_photo.image == img4{
            scroll_photo.image = img5
            
        }else{
            scroll_photo.image = img1
            
        }
    }
    
    //再生/停止ボタン
    @IBAction func play(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateTimer(_ :)), userInfo: nil, repeats: true)
        }else{
            self.timer.invalidate()
            self.timer = nil
            }
        }
    
    
    @IBAction func next(_ sender: Any) {
        if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil
        }
        
        if scroll_photo.image == img1{
            scroll_photo.image = img2
            
        }else if scroll_photo.image == img2{
            scroll_photo.image = img3
            
        }else if scroll_photo.image == img3{
            scroll_photo.image = img4
            
        }else if scroll_photo.image == img4{
            scroll_photo.image = img5
            
        }else{
            scroll_photo.image = img1
            
        }
        
    }
    
    @IBAction func `return`(_ sender: Any) {
        if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil
        }
        
        if scroll_photo.image == img2{
            scroll_photo.image = img1
            
        }else if scroll_photo.image == img3{
            scroll_photo.image = img2
            
        }else if scroll_photo.image == img4{
            scroll_photo.image = img3
            
        }else if scroll_photo.image == img5{
            scroll_photo.image = img4
            
        }else{
            scroll_photo.image = img5
            
        }
        
    }
    
    @IBAction func photo_click(_ sender: Any) {
        self.performSegue(withIdentifier:"to_UP" , sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Touch_screen: Touch_screen = segue.destination as! Touch_screen
            Touch_screen.upbasephoto = self.scroll_photo.image
    }
    
    }
