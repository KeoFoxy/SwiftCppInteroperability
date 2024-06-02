import Foundation
import cxxLibrary

public class Game {
    public var player: Player

    public init() {
        player = Player()
    }

    public func setName(newName: String) {
        player.setName(newName.toStdString())
    }

    public func getName() -> String {
        player.getName().toString()
    }

    public func setLevel(newLevel: Int32) {
        player.setLevel(newLevel)
    }

    public func getLevel() -> Int32 {
        player.getLevel()
    }
    
    public func setHP(newHP: Float) {
        player.setHP(newHP)
    }

    public func getHP() -> Float {
        player.getHP()
    }

    public func addItemToInventory(item: String) {
        player.addItemToInventory(item.toStdString())
    }

    public func getItemFromInventory(index: Int32) -> String {
        player.getItemFromInventory(index).toString()
    }

    public func getInventoryList() -> [String] {
        (0..<player.getInventorySize()).reduce(into: [String]()) { inventory, index in
            inventory.append(player.getItemFromInventory(Int32(index)).toString())
        }
    }

    public func printInventory() {
        getInventoryList().enumerated().forEach { (index, item) in
            print("Slot \(index + 1): \(item)")
        }
    }
    
    public func inventoryCapacity() -> Int {
        player.getInventorySize()
    }

    public func welcomeNote() {
        print("Hello! \(String(player.getName()))")
        print("Statistics: ")
        print("Level: \(player.getLevel())")
        print("HP: \(player.getHP())")
        print("Inventory: ")
        printInventory()
    }
}
