//
//  GameStateStore.swift
//  Reversi
//
//  Created by Motonari Nakashima on 2020/04/24.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import Foundation

protocol GameStateStoreProtocol {
    func saveGame(_ state: GameState) throws
    func loadGame() throws -> GameState?
}


struct GameState {
    var game: Game
    var datas: [Disk: Data]

    enum Game {
        case notStarted
        case nextTrun(disc: Disk)
        case gameOver
    }
    
    struct Data {
        var control: PlayerControl
        var discs: [IndexPath]
    }
}

// MARK: Save and Load
final class GameStateStore: GameStateStoreProtocol {
    private var path: String {
        (NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first! as NSString).appendingPathComponent("Game")
    }
    
    func saveGame(_ state: GameState) throws {
//        var output: String = ""
//        output += turn.symbol
//        for side in Disk.sides {
//            output += playerControls[side.index].selectedSegmentIndex.description
//        }
//        output += "\n"
//
//        for y in boardView.yRange {
//            for x in boardView.xRange {
//                output += boardView.diskAt(x: x, y: y).symbol
//            }
//            output += "\n"
//        }
//
//        do {
//            try output.write(toFile: path, atomically: true, encoding: .utf8)
//        } catch let error {
//            throw FileIOError.read(path: path, cause: error)
//        }
    }
    
    func loadGame() throws -> GameState? {
//        let input = try String(contentsOfFile: path, encoding: .utf8)
//        var lines: ArraySlice<Substring> = input.split(separator: "\n")[...]
//
//        guard var line = lines.popFirst() else {
//            throw FileIOError.read(path: path, cause: nil)
//        }
//
//        do { // turn
//            guard
//                let diskSymbol = line.popFirst(),
//                let disk = Optional<Disk>(symbol: diskSymbol.description)
//            else {
//                throw FileIOError.read(path: path, cause: nil)
//            }
//            turn = disk
//        }
//
//        // players
//        for side in Disk.sides {
//            guard
//                let playerSymbol = line.popFirst(),
//                let playerNumber = Int(playerSymbol.description),
//                let player = Player(rawValue: playerNumber)
//            else {
//                throw FileIOError.read(path: path, cause: nil)
//            }
//            playerControls[side.index].selectedSegmentIndex = player.rawValue
//        }
//
//        do { // board
//            guard lines.count == boardView.height else {
//                throw FileIOError.read(path: path, cause: nil)
//            }
//
//            var y = 0
//            while let line = lines.popFirst() {
//                var x = 0
//                for character in line {
//                    let disk = Disk?(symbol: "\(character)").flatMap { $0 }
//                    boardView.setDisk(disk, atX: x, y: y, animated: false)
//                    x += 1
//                }
//                guard x == boardView.width else {
//                    throw FileIOError.read(path: path, cause: nil)
//                }
//                y += 1
//            }
//            guard y == boardView.height else {
//                throw FileIOError.read(path: path, cause: nil)
//            }
//        }
//
//        updateMessageViews()
//        updateCountLabels()
    }
    
    enum FileIOError: Error {
        case write(path: String, cause: Error?)
        case read(path: String, cause: Error?)
    }
}
