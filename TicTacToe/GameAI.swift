//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Check verticals for wins.
    // Check each column for all three marks being the same player as the parameter of the function.
    for x in 0..<3 {
        var markCount = 0
        
        for y in 0..<3 {
            if board[(x, y)] == player {
                // They marked the board at this given location.
                markCount += 1
            }
        }
        
        if markCount == 3 {
            // They won
            return true
        }
    }
    
    // Check horizontals for wins.
    for y in 0..<3 {
        var markCount = 0
        
        for x in 0..<3 {
            if board[(x, y)] == player {
                // They marked the board at this given location.
                markCount += 1
            }
        }
        
        if markCount == 3 {
            // They won
            return true
        }
    }
    
    // Check diagonals for wins.
    var markCount = 0
    if board[(0, 0)] == player {
        // They marked the board at this given location.
        markCount += 1
    }
    if board[(1, 1)] == player {
        // They marked the board at this given location.
        markCount += 1
    }
    if board[(2, 2)] == player {
        // They marked the board at this given location.
        markCount += 1
    }
    if markCount == 3 {
        // They won
        return true
    }
    
    markCount = 0
    if board[(2, 0)] == player {
        // They marked the board at this given location.
        markCount += 1
    }
    if board[(1, 1)] == player {
        // They marked the board at this given location.
        markCount += 1
    }
    if board[(0, 2)] == player {
        // They marked the board at this given location.
        markCount += 1
    }
    if markCount == 3 {
        // They won
        return true
    }
    
    return false
}
