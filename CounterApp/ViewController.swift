//
//  ViewController.swift
//  CounterApp
//
//  Created by José Inácio Athayde Ferrarini on 31/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    private var counter: Int = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounterLabel()
    }

    @IBAction func incrementButtonTapped(_ sender: UIButton) {
        counter += 1
        updateCounterLabel()
    }

    @IBAction func decrementButtonTapped(_ sender: UIButton) {
        counter -= 1
        updateCounterLabel()
    }

    private func updateCounterLabel() {
        counterLabel.text = "\(counter)"
    }

}
