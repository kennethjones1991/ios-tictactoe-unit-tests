//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Kenneth Jones on 7/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {

    func testWinCheckingVertical1() {
        /*
         x o -
         x o -
         x - -
         */
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 0)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 1)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 1)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 2)))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingHorizontal1() {
        /*
         x x x
         o o -
         - - -
         */
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (0, 1)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (1, 0)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 1)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (2, 0)))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingDiagonal1() {
        /*
         x o -
         o x -
         - - x
         */
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 0)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (1, 1)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (0, 1)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (2, 2)))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }

}
