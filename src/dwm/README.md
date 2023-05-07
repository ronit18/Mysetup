# Prakash's build of dwm

## FAQ

> What are the bindings?

This is suckless, mmmbud, the source code is the documentation! Check out [config.h](config.h).

Okay, okay, actually I keep a readme in `parbs.mom` for my whole system, including the binds here.
Press `super+F1` to view it in dwm (zathura is required for that binding).
I haven't kept `man dwm`/`dwm.1` updated though. PRs welcome on that, lol.

## Patches and features

- Clickable statusbar with my build of [dwmblocks](https://github.com/prakash2033/dwmblocks).
- Reads xresources colors/variables (i.e. works with `pywal`, etc.).
- scratchpad: Accessible with mod+shift+enter.
- New layouts: bstack, fibonacci, deck, centered master and more. All bound to keys `super+(shift+)t/y/u/i`.
- True fullscreen (`super+f`) and prevents focus shifting.
- Windows can be made sticky (`super+s`).
- stacker: Move windows up the stack manually (`super-K/J`).
- shiftview: Cycle through tags (`super+g/;`).
- vanitygaps: Gaps allowed across all layouts.
- swallow patch: if a program run from a terminal would make it inoperable, it temporarily takes its place to save space.
- <strike>hide vacant tags : This patch prevents dwm from drawing tags with no clients (i.e. vacant) on the bar.</strike> [Removed]
- restartsig: dwm can now be restarted via MOD+Backspace(Renew dwm) or by kill -HUP dwmpid
- systray: A simple system tray implementation. Multi-monitor is also supported. The tray follows the selected monitor.

## Patch Files
- dwm-6.2-urg-border.diff
- dwm-actualfullscreen-20191112-cb3f58a.diff
- dwm-scratchpad-6.2.diff
- dwm-statuscmd-20210405-67d76bd.diff
- dwm-sticky-6.1.diff
- dwm-swallow-20201211-61bb8b2.diff
- dwm-systray-20210418-67d76bd.diff
- dwm-xrdb-6.2.diff

## Installation for newbs
```
git clone https://github.com/prakash2033/dwm
cd dwm
sudo make install
```

## Please install `libxft-bgra`!

This build of dwm does not block color emoji in the status/info bar, so you must install [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/) from the AUR, which fixes a libxft color emoji rendering problem, otherwise dwm will crash upon trying to render one. Hopefully this fix will be in all libxft soon enough.
