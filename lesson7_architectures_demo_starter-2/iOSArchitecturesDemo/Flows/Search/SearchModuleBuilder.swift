//
//  SearchBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Veaceslav Chirita on 9/21/20.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

class SearchModuleBuilder{
    static func build() -> (UIViewController & SearchViewInput){
        let router = SearchRouter()
        let interactor = SearchInteractor()
        let presenter = SearchPresenter(interactor: interactor, router: router)
        let viewController = SearchViewController(presenter: presenter)
        presenter.viewInput = viewController
        router.viewController = viewController        
        return viewController
    }
}
