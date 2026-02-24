# War Card Game

A simple and fun card game built with SwiftUI where you compete against the CPU in the classic game of War.

![Gif War Card Games](https://github.com/felipeamodio/war-card-game-app/blob/main/card.gif)

## Description

War Card Game is an iOS application that brings the classic card game "War" to life. Players tap a button to draw cards, and whoever draws the higher card wins the round and earns a point. The game features a clean, intuitive interface with visual card representations and real-time score tracking.

## Features

- **Random Card Drawing**: Each round generates random card values for both player and CPU
- **Score Tracking**: Real-time score updates for both player and CPU
- **Clean UI**: Beautiful background with custom card images and logo
- **Simple Gameplay**: One-tap gameplay makes it easy and fun to play

## How to Play

1. Launch the app
2. Tap the "Deal" button to draw cards
3. The player with the higher card value wins the round and gets a point
4. If both cards are equal, no points are awarded
5. Keep playing to see who can get the highest score!

## Technical Details

### Built With

- **SwiftUI**: Modern declarative UI framework
- **Swift**: Apple's powerful programming language
- **iOS**: Compatible with iOS devices

### Project Structure

- `ContentView.swift`: Main view containing the game logic and UI

### Key Components

- **State Management**: Uses `@State` property wrappers for reactive UI updates
- **Card Values**: Cards range from 2 to 14 (where 11 = Jack, 12 = Queen, 13 = King, 14 = Ace)
- **Score System**: Points are awarded based on card comparison each round

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Installation

1. Clone or download this repository
2. Open `War Card Game.xcodeproj` in Xcode
3. Build and run the project on your simulator or device

## Assets

The project includes the following assets:
- Background image (`background-plain`)
- Game logo (`logo`)
- Deal button image (`button`)
- Card images (`card2` through `card14`)

## Future Enhancements

Potential features to add:
- Game reset button
- Win/lose animations
- Sound effects
- Game history tracking
- Multiple rounds with a winner declaration
- Card dealing animations
- Settings for customization
