//
//  ViewController.swift
//  L4Situdaregame
//
//  Created by 竹村明日香 on 2020/09/03.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ituLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var dousitaLabel: UILabel!
    
    let ituArray: [String] = ["一年前", "一週間前", "昨日", "今日", "三年前", "先一昨日"]
    let dokoArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで", "電車で", "車で"]
    let daregaArray: [String] = ["僕が", "大統領が" ,"先生が", "友達が", "兄が", "妹が"]
    let dousitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った", "走った", "笑った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change(){
        ituLabel.text = ituArray[index]
        dokoLabel.text = dokoArray[index]
        daregaLabel.text = daregaArray[index]
        dousitaLabel.text = dousitaArray[index]
        
        index = index + 1
        
        if index > 5{
            index = 0
        }
        
    }
    
    @IBAction func reset(){
        ituLabel.text = "---"
        dokoLabel.text = "---"
        daregaLabel.text = "---"
        dousitaLabel.text = "---"
        
        index = 0
        
    }
    
    @IBAction func random(){
        let ituIndex = Int.random(in: 0...5)
        let dokoIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let dousitaIndex = Int.random(in: 0...5)
        
        print("いつ:\(ituIndex)")
        print("どこで:\(dokoIndex)")
        print("だれが:\(daregaIndex)")
        print("どうした:\(dousitaIndex)")
        
        ituLabel.text = ituArray[ituIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dousitaLabel.text = dousitaArray[dousitaIndex]
        
        
    }

}

