//
//  ViewController.swift
//  AnimatedMenu
//
//  Created by Joseph Ward on 19/09/18.
//  Copyright © 2018 Joethermal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkFillView: RoundUIView!
    @IBOutlet weak var toggleMenuButton: UIButton!
    @IBOutlet weak var investmentBut: UIImageView!
    @IBOutlet weak var conferenceBut: UIImageView!
    @IBOutlet weak var moneyBut: UIImageView!
    @IBOutlet weak var musicBut: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moneyBut.alpha = 0
        musicBut.alpha = 0
        conferenceBut.alpha = 0
        investmentBut.alpha = 0
    }
    
    @IBAction func toggleMenu(_ sender: UIButton) {
        if darkFillView.transform == .identity {
        UIView.animate(withDuration: 0.3, animations: {
            self.darkFillView.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.menuView.transform = CGAffineTransform(translationX: 0, y: -50)
            self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: 3.14)
        }) { (true) in
            UIView.animate(withDuration: 0.3, animations: {
                self.toggleSharedButtons()
            })
        }
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.darkFillView.transform = .identity
                self.menuView.transform = .identity
                self.toggleMenuButton.transform = .identity
                self.toggleSharedButtons()
            }) { (true) in
                
            }
        }
    }
    
    func toggleSharedButtons() {
        let alpha = CGFloat(investmentBut.alpha == 0 ? 1 : 0)
        investmentBut.alpha = alpha
        moneyBut.alpha = alpha
        conferenceBut.alpha = alpha
        musicBut.alpha = alpha
        
    }
    
    
}

