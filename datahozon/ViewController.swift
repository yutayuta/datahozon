//
//  ViewController.swift
//  datahozon
//
//  Created by Yuta Araki on 2015/03/16.
//  Copyright (c) 2015年 Yuta Araki. All rights reserved.
//

import UIKit
//import Foundation

class ViewController: UIViewController {
    
    
    
    
    @IBAction func respondToSaveButtonClick(){
        
        //保存するファイルの設定
        let paths = NSSearchPathForDirectoriesInDomains(
            .DocumentDirectory,
            .UserDomainMask, true)[0] as String
        let filePath = paths + "data.plist"
        
        
        //都道府県データ
        let array:NSArray = ["北海道","青森","岩手","秋田","宮城"]
        let successful = array.writeToFile(filePath, atomically: false)
        if successful{
            println("ええやん。")
        }
    }
    
    
    
    
    @IBAction func respondToLoadButtonClick(){
        
        //保存するファイルの設定
        let paths = NSSearchPathForDirectoriesInDomains(
            .DocumentDirectory,
            .UserDomainMask, true) as [String]
        let filePath = String(paths[0]) + "data.plist"
        
        //データの読み込み
        let array = NSArray(contentsOfFile: filePath)!
        for data in array {
            println(data)
        }
    }
    
    
    
    
}

