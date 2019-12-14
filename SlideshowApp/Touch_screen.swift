//
//  touch_screen.swift
//  SlideshowApp
//
//  Created by さやか on 2019/11/23.
//  Copyright © 2019 taro.kirameki. All rights reserved.
//

import UIKit

class Touch_screen: UIViewController {
    
    @IBOutlet weak var up_photo: UIImageView!
    
    var upbasephoto: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.up_photo.image = self.upbasephoto
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
