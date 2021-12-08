## 2021 Fall: Shut da Box

This is a partial implementation of the game "Shut the Box." Apply both Clean Code
principles and object-oriented design techniques to improve the quality of the
code.

The game consists of a Box and some dice. The box contains tiles, each with a
numeric label, such as 0, 1, 2, 3, 4, 5, 6, 7, 8, 9. At the start of the game,
all tiles are standing up.

The player takes a turn by rolling the dice, and summing the total value of the
dice as rolled. The player is allowed to flip down one or more tiles whose
numeric labels, when summed, equal the sum of the dice. For example, when rolling
two dice, resulting in 3 and 4, the total is 7. The player may flip down the 7
tile, or the 1 and 6, 2 and 5, or 3 and 4 tiles.

The game continues until all tiles are flipped down, or the player cannot flip
down any more tiles suiting the dice as rolled. When all tiles are flipped down,
the box can be shut, and the game has been won.

# Exam Guidelines & Tips

Apply both Clean Code principles and object-oriented design techniques to improve
the quality of the code. Here are a few guidelines and tips.

When you run the program, you will see the tiles displayed, the dice displayed,
and a prompt for user input. **Do not concern yourself with the user input**.
Because the current implementation never cares about user input, the game will
proceed indefinitely, no matter what is typed. For this exam, that is intentional.
**Do not concern yourself with the user input**.

There are numerous opportunities to improve the code. Ensure you make the easy
improvements first. **You should probably look at each source file first.** You
will likely see many smells that you can remedy quickly.

Additional tips:

1. Be methodical. Choose a smell, and see it through, making small changes, without getting sidetracked.
2. In _main.rb_, do not change the general flow or the API of Game. The only thing that might change in _main.rb_ is what objects are created, and how/when.
3. The spirit of _game.rb_ is fairly sound, but there are multiple opportunities to improve specific areas in that class.
4. Not all improvements involve writing new code.

In the back of your mind, underneath the stress of the exam, try to have fun.
Be steady & methodical, and you will do fine.
