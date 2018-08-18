//
//  GameMode.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class GameMode {
    
    public enum GameModes: String {
        case Classic = "CLASSIC"
        case Odin = "ODIN"
        case Aram = "ARAM"
        case Tutorial = "TUTORIAL"
        case Urf = "URF"
        case DoomBotsTeemo = "DOOMBOTSTEEMO"
        case OneForAll = "ONEFORALL"
        case Ascension = "ASCENSION"
        case Firstblood = "FIRSTBLOOD"
        case KingPoro = "KINGPORO"
        case Siege = "SIEGE"
        case Assassinate = "ASSASSINATE"
        case Arsr = "ARSR"
        case DarkStar = "DARKSTAR"
        case StarGuardian = "STARGUARDIAN"
        case Project = "PROJECT"
        case Unknown = "Unknown"
    }
    
    public private(set) var mode: GameModes
    
    public init?(gameMode: GameModes) {
        guard gameMode != .Unknown else {
            Logger.error("GameMode instance cannot be created with \"Unknown\" value")
            return nil
        }
        self.mode = gameMode
    }
    
    internal init(gameMode: String) {
        switch gameMode {
        case GameModes.Classic.rawValue:
            self.mode = GameModes.Classic
        case GameModes.Odin.rawValue:
            self.mode = GameModes.Odin
        case GameModes.Aram.rawValue:
            self.mode = GameModes.Aram
        case GameModes.Tutorial.rawValue:
            self.mode = GameModes.Tutorial
        case GameModes.Urf.rawValue:
            self.mode = GameModes.Urf
        case GameModes.DoomBotsTeemo.rawValue:
            self.mode = GameModes.DoomBotsTeemo
        case GameModes.OneForAll.rawValue:
            self.mode = GameModes.OneForAll
        case GameModes.Ascension.rawValue:
            self.mode = GameModes.Ascension
        case GameModes.Firstblood.rawValue:
            self.mode = GameModes.Firstblood
        case GameModes.KingPoro.rawValue:
            self.mode = GameModes.KingPoro
        case GameModes.Siege.rawValue:
            self.mode = GameModes.Siege
        case GameModes.Assassinate.rawValue:
            self.mode = GameModes.Assassinate
        case GameModes.Arsr.rawValue:
            self.mode = GameModes.Arsr
        case GameModes.DarkStar.rawValue:
            self.mode = GameModes.DarkStar
        case GameModes.StarGuardian.rawValue:
            self.mode = GameModes.StarGuardian
        case GameModes.Project.rawValue:
            self.mode = GameModes.Project
        default:
            Logger.warning("Game mode \"\(gameMode)\" unknown (check for LeagueAPI update)")
            self.mode = .Unknown
        }
    }
}