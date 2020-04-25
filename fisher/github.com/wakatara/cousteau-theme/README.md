# Cousteau theme for fish shell

Cousteau is a theme forked and modified from the [Chris Morrell's Fish Theme](https://github.com/oh-my-fish/theme-cmorrell.com).

When I was getting started with [fish](https://fishshell.com) Morrell's was the one that seemed the nicest as a base to start with, so I've done some hacking on it to modify it for my purposes. YMMV on whether it works for you or not. Enjoy and please feel free to fold, spindle, mutilate or add features which I'm happy to add via pull request.

It is also "optimized" to work with the excellent [Nord terminal colour palette from Arctic Studios](https://github.com/arcticicestudio/nord). You should install the terminal palette in your terminal of choice and then use fisher to install this theme for optimal effect (for example, if you use iTerm2 as I do, you can find instructions for changing your [iTerm2 terminal colour palette here](https://github.com/arcticicestudio/nord-iterm2).).

## Features

- Main colour palette taken from [Nord](https://github.com/arcticicestudio/nord)
- More minimal base prompt than `cmorrell`
- Shows compact git status in right prompt with the number of changed files & current branch
- Gives a visual indication when you're logged in via SSH, or logged in as anyone                  but the default user (set the `$default_user` list variable to define your default user)
- Shows red indicator if previous command failed
- Shows a bright red "!" if you're logged in as root

## Installation

Easiest way I've found is to use the excellent fish package manager [fisher](https://github.com/jorgebucaran/fisher) and then just use `fisher add wakatara/cousteau-theme` to get it onto your system.

## Why Cousteau?

I name my laptops. After explorers. Yes, I know it's a bit strange. Since my aging, yet awesome, 2016 Macbook is named Cousteau, and I needed something fishy sounding, it seemed ideal. I hope I can live up to the great name I selected.

## Contributing and Development

I intend to add on a few useful features and round out the colour palette for Nord, but please feel free to suggest things. I'm always happy to see pull requests. Simply fork this repo, create a new branch, make your changes, and then make a PR to get my attention. Thanks!

