# ChessKings

ChessKings is a comprehensive **Chess Engine** and **GUI** built from scratch. The project includes a chess engine capable of making intelligent decisions, as well as a graphical interface that allows users to play against the engine or simulate games. The engine implements key chess algorithms and game-playing techniques, allowing for challenging gameplay and strategy analysis.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [How It Works](#how-it-works)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Overview

ChessKings is designed to be a fully functional chess engine with a graphical user interface (GUI). It allows users to play chess against an AI opponent or watch games simulated by the engine itself. The engine incorporates classic chess algorithms such as **Minimax** and **Alpha-Beta Pruning**, making it a strong opponent capable of strategic play.

The project offers an interactive and visual experience, allowing players to engage with the game in real-time.

## Features

- **Chess Engine**: Implements core chess rules and game logic.
- **AI Opponent**: A decision-making engine that uses Minimax and Alpha-Beta Pruning for strong gameplay.
- **Graphical Interface**: Easy-to-use GUI that lets users play against the engine or simulate games.
- **Move Validation**: Ensures only legal chess moves can be made.
- **Player vs. AI / AI vs. AI**: Choose to play against the engine or watch AI vs. AI games.

## Installation

### Prerequisites

- Python 3.x
- Pygame (`pygame`) for the graphical user interface
- Numpy (`numpy`) for AI computation

### Steps

1. Clone the repository:

    ```bash
    git clone https://github.com/simarmehta/chesskings.git
    cd chesskings
    ```

2. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```

    *(If `requirements.txt` is missing, manually install dependencies: `pip install pygame numpy`)*

3. Once installed, you're ready to run the chess engine with the graphical interface.

## Usage

1. Run the chess engine with the GUI:

    ```bash
    python chesskings.py
    ```

2. The chessboard will open in a graphical window, allowing you to:
    - Play a game against the AI.
    - Watch AI play against itself.
    - Make moves using the mouse to select pieces and move them on the board.

3. The engine will evaluate the best moves based on game algorithms and respond accordingly.

## How It Works

1. **Chess Engine**: 
   - The engine is designed to follow standard chess rules and make legal moves. It can handle all piece movements, including special moves like castling, en passant, and pawn promotion.
   - **Minimax Algorithm**: The AI opponent uses Minimax to evaluate potential moves and select the one that maximizes its chances of winning.
   - **Alpha-Beta Pruning**: This optimization is used to eliminate branches in the game tree that do not need to be explored, improving the performance of the AI's decision-making process.

2. **Graphical Interface**: 
   - The **Pygame** library is used to display the chessboard and allow user interaction. Players can click and drag pieces to move them.
   - The GUI updates dynamically as the game progresses, showing legal moves and game status.

### Key Algorithms:
- **Minimax**: Recursively evaluates the game tree to find the best move by considering both players' strategies.
- **Alpha-Beta Pruning**: Optimizes Minimax by cutting off branches that will not influence the final decision.
  
## Project Structure

```bash
chesskings/
├── chesskings.py        # Main script to run the chess engine and GUI
├── engine/              # Core logic for chess rules and AI
│   ├── board.py         # Chessboard implementation and rules
│   ├── minimax.py       # Minimax and Alpha-Beta Pruning logic
├── gui/                 # GUI implementation using Pygame
│   ├── display.py       # Graphics and interface code
├── assets/              # Chess piece and board images for GUI
├── requirements.txt     # Python dependencies
└── README.md            # Project documentation
