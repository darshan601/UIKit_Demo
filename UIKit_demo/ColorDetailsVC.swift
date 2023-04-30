//
//  ColorDetailsVC.swift
//  UIKit_demo
//
//  Created by Darshan Uttam Mistry on 4/30/23.
//

import UIKit

class ColorDetailsVC: UIViewController {

    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = color ?? UIColor.systemTeal
        
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
