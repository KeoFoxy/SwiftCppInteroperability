#ifndef SWIFTCPPINTEROPERABILITY_PLAYER_H
#define SWIFTCPPINTEROPERABILITY_PLAYER_H

#include <iostream>
#include <vector>

class Player {
public:
  Player();
  Player(Player &&) = default;
  Player(const Player &) = default;
  Player &operator=(Player &&) = default;
  Player &operator=(const Player &) = default;
  ~Player();

  int getLevel() const;
  std::string getName() const;
  float getHP() const;
  size_t getInventorySize() const;
  std::string getItemFromInventory(int inventoryIndex) const;

  void setName(const std::string& newName);
  void setLevel(int newLevel);
  void setHP(float newHP);
  void addItemToInventory(const std::string& newItem);

private:
  int level = 0;
  std::string name = "";
  float hp = 0;
  std::vector<std::string> inventory;
};

#endif //SWIFTCPPINTEROPERABILITY_PLAYER_H
