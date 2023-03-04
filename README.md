# st-usable
Using the Simple Terminal be somewhat confusing, as many of the features that you would expect from a modern terminal emulator have to be patched in through community made patches, which often leads to patch conflicts and manual modification.
This repo contains a build of the Simple Terminal with many popular patches applied and modified to work together.
Currently targets st version `0.9`.

The working directory directory already includes all patches, although all individual patch files can be found in the `patches/` directory if you wish to use them separately.
Keep in mind that patch files have been modified to work together, so removing some of them will likely mean some rewriting.

## Included patches
- alpha
- boxdraw
- scrollback _(with reflow, mouse & altscreen sub-patches)_
- ligatures _(modified to be compatible with both alpha, scrollback & boxdraw)_
- xresources _(with live reload using USR1 signal)_
- clipboard
- font2
- desktop entry
- anygeometry
- sync
- copyurl _(with multiline sub-patches, modified to be compatible with scrollback)_
- undercurl
- openclipboard _(modified to be compatible with scrollback)_

## Installation
Simply use:

```bash
git clone git@github.com:DarthChungo/st-usable.git
cd st-usable
sudo make install
xrdb merge ~/.Xresources
```

## Credits
- [Suckles Terminal](https://st.suckless.org/)
