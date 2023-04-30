//
//  ColorTableVC.swift
//  UIKit_demo
//
//  Created by Darshan Uttam Mistry on 4/30/23.
//

import UIKit

class ColorTableVC: UIViewController  {
    
    var colors:[UIColor] = []
    
    enum cells{
        static let colorCell="ColorCell"
    }
    
    enum segues{
        static let toDetail="ToColorDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }
    
    func addRandomColors(){
        for _ in 0..<50{
            colors.append(.random())
        }
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC=segue.destination as! ColorDetailsVC
        
        destVC.color=sender as? UIColor
    }
    
}


extension ColorTableVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell) else {
            return UITableViewCell()
        }
        
        let color=colors[indexPath.row]
        
        cell.backgroundColor=color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color=colors[indexPath.row]
        
        performSegue(withIdentifier: segues.toDetail, sender: color)
    }
}
