# st-usable
My personal build of the Simple Terminal (St) with many patches included.
Currently targets st version `0.9`.
The working directory directory already includes all patches, although all individual patch files can be found in the `patches/` directory if you wish to use them separately.
Keep in mind that patch files have been modified to work together, so removing some of them will likely mean some rewriting.

## Included patches
- alpha
- boxdraw
- scrollback _(with reflow, mouse & altscreen sub-patches)_
- ligatures _(modified to be compatible with both alpha, scrollback & boxdraw)_

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
