//
//  SecondViewController.swift
//  Calcu
//
//  Created by Matheus Nishiyama on 15/10/15.
//  Copyright © 2015 Matheus Nishiyama. All rights reserved.
// Criado e Patenteado GitHub - Matheus Nishiyama

import UIKit

class SecondViewController: UIViewController {
    
    var nome1: NSString = ""
    var nome2: NSString = ""
    var data : NSDate = NSDate()
    
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var hours: UILabel!
    
    @IBOutlet weak var primaveras: UILabel!
    @IBOutlet weak var veroes: UILabel!
    @IBOutlet weak var outonos: UILabel!
    @IBOutlet weak var invernos: UILabel!
    
    @IBOutlet weak var tpm: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDate = NSDate()
        let intervalo: NSTimeInterval = currentDate.timeIntervalSinceDate(data)
        
        name1.text = nome1 as String
        name2.text = nome2 as String
        
        hours.text = stringFromTimeIntervalInHours(intervalo)
        days.text = stringFromTimeIntervalInDays(intervalo)
        tpm.text = stringFromTimeIntervalInTPM(intervalo)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stringFromTimeInterval(interval: NSTimeInterval) -> String {
        let interval = Int(interval)
        let seconds = interval % 60
        let minutes = (interval / 60) % 60
        let hours = (interval / 3600)
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
    
    func stringFromTimeIntervalInHours(interval: NSTimeInterval) -> String {
        let interval = Int(interval)
        let hours = (interval / 3600)
        return String(format: "%02d", hours)
    }
    
    func stringFromTimeIntervalInDays(interval: NSTimeInterval) -> String {
        let interval = Int(interval)
        let hours = (interval / 3600)
        let days = hours / 24
        return String(format: "%02d", days)
    }
    func stringFromTimeIntervalInTPM(interval: NSTimeInterval) -> String {
        let interval = Int(interval)
        let hours = (interval / 3600)
        let days = hours / 24
        let mes = days / 30
        return String(format: "%02d", mes)
    }
   

}
