//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Мальков on 28.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import Foundation

struct SongCellModel{
    let title: String
    let subtitle: String?
    let rating: String?
}

final class SongCellFactory{
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(title: model.trackName, subtitle: model.artistName ?? "Unknown", rating: model.collectionName ?? "N/a")
    }
}
