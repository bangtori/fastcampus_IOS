//
//  ViewController.swift
//  LEDBoard
//
//  Created by 방유빈 on 2022/11/06.
//

import UIKit

class ViewController: UIViewController,LEDBoardSettingDelegate {

    @IBOutlet var lblText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.lblText.textColor = .yellow
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController{
            settingViewController.delegate = self
            settingViewController.ledText = self.lblText.text
            settingViewController.textColor = self.lblText.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
        }
    }
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text{
            self.lblText.text = text
        }
        self.lblText.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

