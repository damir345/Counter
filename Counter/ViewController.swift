//
//  ViewController.swift
//  Counter
//
//  Created by Damir Salakhetdinov on 16/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var timesPressed: Int = 0

    @IBOutlet weak var buttonAdd: UIButton!
    
    @IBOutlet weak var buttonRem: UIButton!
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var changesHistory: UITextView!
    
    @IBOutlet weak var buttonClear: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonAdd.setTitle("+", for: .normal)
        
        buttonRem.setTitle("-", for: .normal)
        
        counter.text = "\(timesPressed)"
        
        buttonClear.setImage(UIImage(systemName: "eraser.fill"), for: .normal)
        
        
        // buttonTouch.setTitle("highlited", for: .highlighted )
    }
    @IBAction func buttonAdd(_ sender: Any) {
        timesPressed += 1
        counter.text = "Значение счётчика: \(timesPressed)"
    }
    @IBAction func buttonRem(_ sender: UIButton) {
        timesPressed -= 1
        timesPressed = max(timesPressed, 0)
        counter.text = "Значение счётчика: \(timesPressed)"
    }
    
    
}

