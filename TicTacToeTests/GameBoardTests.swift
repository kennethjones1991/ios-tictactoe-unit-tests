//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Kenneth Jones on 7/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {

    // Goal: Make sure the board is empty right after it's initialized
    
    func testCreatingEmptyBoard() {
        let board = GameBoard()
        
        for x in 0..<3 {
            for y in 0..<3 {
                // 0, 1
                let square = board[(x, y)]
                // We assume the square is nil, because it has no X or O mark.
                XCTAssertNil(square)
            }
        }
    }
    
    func testPlacingMarks() {
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        
        let zeroZeroMark = board[(0, 0)]
        XCTAssert(zeroZeroMark == .x)
        
        // Another way to write the above 2 lines
        XCTAssertEqual(board[(0, 0)], .x)
        
        // Check all the squares to make sure they are filled or unfilled correctly
        for x in 0..<3 {
            for y in 0..<3 {
                if x == 0 && y == 0 {
                    XCTAssertEqual(board[(x, y)], .x)
                    continue
                }
                XCTAssertEqual(board[(x, y)], nil)
            }
        }
        
        // Make sure we can't change the mark on a square with an existing mark
        XCTAssertThrowsError(try board.place(mark: .x, on: (0, 0)))
    }

}
