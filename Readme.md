AHCompat
========

This addon allows the usage of various *outdated* auction house addons as of wow version 8.0.1.27481.

**Disclamer**: You should *update* your AH addons and don't rely on this addon (If you could, of course)

It should not affect updated addons.

## Context

Starting to wow build 8.0.1.27481 (Aug 24 2018) the lua function [StartAuction](http://wowprogramming.com/docs/api/StartAuction.html) is now *deprecated* in favor of **PostAuction**.

As many, if not all, AH related addons relied on the deprecated function, they are now buggy if not updated.
Some addons may take time to be updated or some may not be updated at all in the future.
So i made this addon to apply a bandage fix in order to use some outdated addons.


