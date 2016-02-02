//
//  ViewController.swift
//  Getting Current Date And Time
//
//  Created by Eduardo Prats on 2/1/16.
//  Copyright © 2016 edprats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!

    var currentNSDate = NSDate()
    var dateFormatter = NSDateFormatter()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = formatDate()
    }

    @IBAction func refreshDateButtonPressed(sender: UIButton) {
        dateLabel.text = formatDate()
    }
    
    func formatDate() -> String {
        currentNSDate = NSDate()
        dateLabel.text = String(currentNSDate)
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .MediumStyle
        
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US")
        let formattedDate = dateFormatter.stringFromDate(currentNSDate)
        
        return formattedDate

    }
    
}

