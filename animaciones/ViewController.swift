//
//  ViewController.swift
//  animaciones
//
//  Created by Maestro on 17/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UIView!
    @IBOutlet weak var password: UIView!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var dofus: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.user.center.y -= 100
        self.password.center.y -= 100
        
        self.login.center.x -= 200
        self.register.center.x += 200
        
        self.login.alpha = 0;
        self.register.alpha = 0
        self.dofus.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animateKeyframes(withDuration: 1.5, delay: 0, options: [], animations: {
            self.user.alpha = 1.0
            self.user.center.y += 100
            
            self.password.alpha = 1.0
            self.password.center.y += 100
            
            self.login.center.x += 200
            self.register.center.x -= 200
            
            self.user.alpha = 1
            self.password.alpha = 1
            self.login.alpha = 1
            self.register.alpha = 1
            
            self.dofus.alpha = 1
            
            
        }, completion:  nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

