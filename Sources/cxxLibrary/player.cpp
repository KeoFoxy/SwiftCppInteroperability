#include "./include/player.h"

Player::Player() {}

Player::~Player() {}

int Player::getLevel() const {
  return this->level;
}

std::string Player::getName() const {
  return this->name;
}

float Player::getHP() const {
  return this->hp;
}

std::string Player::getItemFromInventory(int inventoryIndex) const {
  return this->inventory[inventoryIndex];
}

void Player::setHP(float HP) {
  this->hp = HP;
}

void Player::setName(const std::string& newName) {
  this->name = newName;
}

void Player::setLevel(int newLevel) {
  this->level = newLevel;
}

void Player::addItemToInventory(const std::string& newItem) {
  this->inventory.push_back(newItem);
}

size_t Player::getInventorySize() const {
    return this->inventory.size();
}
