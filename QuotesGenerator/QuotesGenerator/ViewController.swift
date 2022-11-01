//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 방유빈 on 2022/11/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblQuotes: UILabel!
    @IBOutlet var lblName: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quote(contents: "편견이란 실효성이 없는 의션이다.", name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
        Quote(contents: "몇 번이라도 좋다! 이 끔찍한 생이여...다시!", name: "니체")
    ]
    var curIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblQuotes.text = quotes[curIndex].contents
        self.lblName.text = quotes[curIndex].name
        // Do any additional setup after loading the view.
    }

    @IBAction func btnChangeQuote(_ sender: UIButton) {
        var randomIndex = curIndex
        while randomIndex == curIndex {
            randomIndex = Int(arc4random_uniform(5))
        }
        
        curIndex = randomIndex
        let quote = quotes[curIndex]
        self.lblQuotes.text = quote.contents
        self.lblName.text = quote.name
    }
    
}

