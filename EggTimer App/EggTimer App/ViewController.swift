//
//  ViewController.swift
//  EggTimer App
//
//  Created by SHYNU MARY VARGHESE on 2023-09-02.
//

import UIKit

class ViewController: UIViewController {
var timer = Timer()
    @IBAction func refreshButton(_ sender: UIBarButtonItem) {
       
        timer.invalidate()
        print("refresh button pressed---timer stopped")
    }
    @objc func processTimer(){
        print("Timer---one second passed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.processTimer), userInfo: nil, repeats: true)
      
    }


}

