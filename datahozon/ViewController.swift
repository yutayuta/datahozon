//
//  ViewController.swift
//  datahozon
//
//  Created by Yuta Araki on 2015/03/16.
//  Copyright (c) 2015年 Yuta Araki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func respondToSaveButtonClick(){
        
        //保存するファイルの設定
        let paths = NSSearchPathForDirectoriesInDomains(
            .DocumentDictionary,
            .UserDomainMask, true) as [String]
        let filePath = String(paths[0]) + "data.plist"
        
        
        //都道府県データ
        let array = ["北海道","青森","岩手","秋田","宮城"] as NSArray
        let successful = array.wrirteToFile(filePath, atomically: false)
        if successful{
            println("ええやん。")
        }
    }
    
    
    
    @IBAction func respondToLoadButtonClick(){
        
        //保存するファイルの設定
        let paths: String = NSSearchPathForDirectoriesInDomains(
            .DocumentDictionary,
            .UserDomainMask, true) as [String]
        let filePath = String(paths[0]) + "data.plist"
        
        //データの読み込み
        let array = NSArray(contentsOfFile: filePath)!
        for data in array {
            println(data)
        }
    }
    
    
    
}

