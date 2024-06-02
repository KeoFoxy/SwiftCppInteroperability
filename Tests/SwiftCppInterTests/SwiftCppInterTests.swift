import XCTest
import cxxLibrary
@testable import SwiftCppInter

final class SwiftCppInterTests: XCTestCase {
    func testPlayerInitialization() throws {
        let player = Player()
        XCTAssertEqual(player.getName(), "")
        XCTAssertEqual(player.getLevel(), 0)
        XCTAssertEqual(player.getHP(), 0.0)
    }

    func testPlayerAttributes() throws {
        var player = Player()
        player.setName("TestPlayer")
        player.setLevel(10)
        player.setHP(50.0)
        player.addItemToInventory("Sword")

        XCTAssertEqual(player.getName(), "TestPlayer")
        XCTAssertEqual(player.getLevel(), 10)
        XCTAssertEqual(player.getHP(), 50.0)
        XCTAssertEqual(player.getItemFromInventory(0), "Sword")
    }

    func testInventory() throws {
        let game = Game()
        game.addItemToInventory(item: "Diamond Pickaxe")
        game.addItemToInventory(item: "Apple")
        game.addItemToInventory(item: "Helmet")
        game.addItemToInventory(item: "Sword")

        XCTAssertEqual(game.inventoryCapacity(), 4)
        XCTAssertEqual(game.getItemFromInventory(index: 1), "Apple")
        XCTAssertEqual(game.getInventoryList(), ["Diamond Pickaxe", "Apple", "Helmet", "Sword"])
    }


}
