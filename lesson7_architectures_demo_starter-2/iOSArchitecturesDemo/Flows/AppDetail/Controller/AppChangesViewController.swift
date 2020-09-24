//
//  AppChangesViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Мальков on 22.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

class AppChangesViewController: UIViewController {
    private let app: ITunesApp
    
    private var appChangesView: ChangesView {
        return self.view as! ChangesView
    }
    
    init (app: ITunesApp){
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view = ChangesView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    private func fillData() {
        self.appChangesView.appVersionLabel.text = "Версия: \(app.appVersion ?? "0")"
        self.appChangesView.appVersionTextLabel.text = app.releaseNotes
    }
}
