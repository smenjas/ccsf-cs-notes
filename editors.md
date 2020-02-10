# Text Editors

Unix offers several choices for editing text. This document attempts to describe
the most common editors without getting bogged down in opinion.
- [pico](#pico)
- [vi](#vi)
- [Emacs](#emacs)
- [Epilogue](#epilogue)

## pico
Pico is simple. It's part of the pine email program; so if you've ever used
pine, you've used pico. [The commands appear at the bottom of the
screen.](pico.md)

## vi
vi is a powerful, yet frugal text editor.
vi's main strengths are these:

- vi can be found on almost every installation of Unix.
- Once you learn vi, you can edit text quickly and easily.
- vi uses relatively few resources (bandwidth, memory, etc.).
- Since vi's not extensible, every copy of vi works the same.

vi also has some weaknesses:

- Commands don't seem to make sense at first, so there's a steep learning curve.
- Since vi's not extensible, you can't add features.

Bill Joy wrote vi in 1976. He recounts [a brief history of
vi](http://www.linux-mag.com/1999-11/joy_04.html) in an [interview with Linux
Magazine](http://www.linux-mag.com/1999-11/joy_01.html).

vim is vi improved. It has a few nice touches like syntax-highlighting and a
help system which make it easier to use. You can [download a copy of
vim](http://www.vim.org/download.php) for most platforms.

The [vi cheat sheet](vi.md) can be a handy reference for beginners.

## Emacs
Emacs is the most powerful text editor hands-down. Here's why:

- Emacs lets you edit multiple documents simultaneously.
- Emacs has different "modes" for just about every situation.
- Emacs has a built-in [Lisp](http://www.paulgraham.com/rootsoflisp.html)
  interpreter, making it infinitely extensible.

But, there are drawbacks:

- Emacs is a huge resource hog.
- Emacs is addictive, and may turn you into a bigot.

To make the most of Emacs' swell features you must have access to both Emacs
itself and your Emacs profile. There will be times when you don't.

Emacs is ideal for large projects. It has all of vi's capabilities and more. You
can even use Emacs in viper mode which mimics many of vi's commands.

Richard Stallman amalgamated Emacs in 1976. Wikipedia has a write-up detailing
[Emacs' history and usage](http://en.wikipedia.org/wiki/Emacs).

## Epilogue
If you only use Unix occasionally then pico will suit you just fine. However,
you will not be able to do certain things, like replace text automatically. If
there is any possibility that you have a future working with Unix, it would be
wise to learn vi. If you find that vi doesn't suit you, try Emacs.

Although these are arguably the most popular text editors in Unix environments,
there are many more. Don't feel like you have to use these just because they are
the most common.

Writing a text editor from scratch is not trivial, but neither is it an
insurmountable task. Many computer science departments have their students write
a basic text editor at some point in their curriculum. Thus, Unix has nearly as
many editors as New Zealand has sheep.
