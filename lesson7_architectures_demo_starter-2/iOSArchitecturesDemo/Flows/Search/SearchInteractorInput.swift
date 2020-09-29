//
//  SearchInteractorInput.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Мальков on 28.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import Foundation
import Alamofire

protocol SearchInteractorInput{
    func requestApps(with query: String, then compition: @escaping (Result<[ITunesApp]>) -> Void)
    
    func requestSongs(with query: String, then compition: @escaping (Result<[ITunesSong]>) -> Void)
}

final class SearchInteractor: SearchInteractorInput{
    
    private let searchService = ITunesSearchService()
    
    func requestApps(with query: String, then compition: @escaping (Result<[ITunesApp]>) -> Void){
        self.searchService.getApps(forQuery: query, then: compition)
    }
    
    func requestSongs(with query: String, then compition: @escaping (Result<[ITunesSong]>) -> Void){
        self.searchService.getSongs(forQuery: query, completion: compition)
    }
}
