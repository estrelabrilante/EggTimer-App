//
//  ViewController.swift
//  EggTimer App
//
//  Created by SHYNU MARY VARGHESE on 2023-09-02.
//

import UIKit

class ViewController: UIViewController {
var timer = Timer()
    var time = 210
    @IBOutlet weak var timerLabel: UILabel!
    
    @objc func eggTimer(){
        time -= 1
        while time < 0{
            
            timer.invalidate()
        }
        print("play button pressed---one second passed \(time)")
        timerLabel.text = "\(time) second"
    }
    @IBAction func playButton(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.eggTimer), userInfo: nil, repeats: true)
       
    }
    
    @IBAction func resetButton(_ sender: Any) {
        let time = 210
        timerLabel.text = "\(time) second"
        timer.invalidate()
    }
    @IBAction func plusTenButton(_ sender: Any) {
        time += 10
        print("ten second added")
        timerLabel.text = "\(time) second"
    }
    @IBAction func minusTenButton(_ sender: Any) {
        if time > 10{
            time -= 10
            timerLabel.text = String(time)
            print("ten second minused")
            
        }
        while time < 0{
            time = 0
        }
   
    }
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
       
        timer.invalidate()
        print("pause button pressed---timer stopped")
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }


}

