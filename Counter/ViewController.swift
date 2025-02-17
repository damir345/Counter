//
//  ViewController.swift
//  Counter
//
//  Created by Damir Salakhetdinov on 16/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var timesPressed: Int = 0
    
    private let dateFormatter = DateFormatter()

    @IBOutlet weak var buttonAdd: UIButton!
    
    @IBOutlet weak var buttonRem: UIButton!
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var changesHistory: UITextView!
    
    @IBOutlet weak var buttonClear: UIButton!
    
    func currentDateFormatted() -> String {
        
        // Set the date format
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"

        // Format the current date
        var formattedDate = dateFormatter.string(from: Date())
        
        return(formattedDate)
        
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonAdd.setTitle("+", for: .normal)
        
        buttonRem.setTitle("-", for: .normal)
        
        buttonClear.setTitle("", for: .normal)
        
        counter.text = "\(timesPressed)"
        
        buttonClear.setImage(UIImage(systemName: "eraser.fill"), for: .normal)
        
        changesHistory.text = "История изменений:"
        
        
        // buttonTouch.setTitle("highlited", for: .highlighted )
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        
        timesPressed += 1
        counter.text = "Значение счётчика: \(timesPressed)"
        changesHistory.text.append("\n[\(currentDateFormatted())]: Значение изменено на +1")
    }
    @IBAction func buttonRem(_ sender: UIButton) {
        if timesPressed <= 0 {
            changesHistory.text.append("\n[\(currentDateFormatted())]: Попытка уменьшить значение счётчика ниже 0")
        }
        
        else {
            timesPressed -= 1
            timesPressed = max(timesPressed, 0)
            counter.text = "Значение счётчика: \(timesPressed)"
            changesHistory.text.append("\n[\(currentDateFormatted())]: Значение изменено на -1")
        }
    }
    @IBAction func buttonClear(_ sender: Any) {
        timesPressed = 0
        counter.text = ("\(timesPressed)")
        changesHistory.text.append("\n[\(currentDateFormatted())]: Значение сброшено")
    }
    
    
}

