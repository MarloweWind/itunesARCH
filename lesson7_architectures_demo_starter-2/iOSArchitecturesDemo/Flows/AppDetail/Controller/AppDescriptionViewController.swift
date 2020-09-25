//
//  AppDescriptionViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Мальков on 22.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

final class AppDescriptionViewController: UIViewController{
    private let app: ITunesApp
    
    private var appDetailDescriptionView: AppDescriptionView{
        return self.view as! AppDescriptionView
    }
    
    init (app: ITunesApp){
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
        
    override func loadView(){
        super.loadView()
        self.view = AppDescriptionView()
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.fillData()
    }
    
    private func fillData(){
        self.appDetailDescriptionView.appDescriptionLabel.text = app.appDescription
    }
}
