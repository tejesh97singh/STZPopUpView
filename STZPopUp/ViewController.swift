//
//  ViewController.swift
//  STZPopUp
//
//  Created by Tejesh singh on 05/08/22.
//

import UIKit

class ViewController: UIViewController {
    var xibViewOutlet = MyViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func presentClicked(_ sender: Any) {
        createPopupview()
        
    }
    func createPopupview() {
        let nibFlyMessage : NSArray = Bundle.main.loadNibNamed("MyViewController", owner: self, options: nil)! as NSArray
        let popupView = nibFlyMessage.object(at: 0) as? MyViewController
        let popupConfig = STZPopupViewConfig()
        popupConfig.dismissTouchBackground = false
        popupConfig.cornerRadius = 30
        presentPopupView(popupView!)
        
    
    }
    @objc func touchClose() {
        dismissPopupView()
    }
    
}


