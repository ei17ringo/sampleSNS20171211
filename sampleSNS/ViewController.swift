//
//  ViewController.swift
//  sampleSNS
//
//  Created by Eriko Ichinohe on 2018/01/23.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //シェアボタンが押された時発動
    @IBAction func tapShare(_ sender: UIBarButtonItem) {
    
        //シェアしたい情報が格納されてる配列を用意(Any型の配列)
        var shareInfo = [UIImage(named:"Dog"),"コロだよ"] as [Any]
        
        //アクティビティビューのインスタンスを作成
        let controller = UIActivityViewController(activityItems: shareInfo, applicationActivities: nil)
        
        //モーダル表示
        present(controller, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

