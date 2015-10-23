//
//  FirstTableViewController.swift
//  Calcu
//
//  Created by Matheus Nishiyama on 15/10/15.
//  Copyright © 2015 Matheus Nishiyama. All rights reserved.
//
// Criado e Patenteado GitHub - Matheus Nishiyama
import UIKit

class FirstTableViewController: UITableViewController {

    @IBOutlet weak var nomeDele: UITextField!
    @IBOutlet weak var nomeDela: UITextField!
    @IBOutlet weak var myDatePicker: UIDatePicker!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let currentaDate = NSDate()
        myDatePicker.maximumDate = currentaDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "mySegue"){
            
            let destinationVC = segue.destinationViewController as! SecondViewController
            destinationVC.nome1 = nomeDele.text!
            destinationVC.nome2 = nomeDela.text!
            destinationVC.data = myDatePicker.date
            
        }
    }
}
