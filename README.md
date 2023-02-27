# st-usable
My personal build of the Simple Terminal (St) with many patches included.
Currently targets st version `0.9`.
The working directory directory already includes all patches, although all individual patch files can be found in the `patches/` directory if you wish to use them separately.
Keep in mind that patch files have been modified to work together, so removing some of them will likely mean some rewriting.
The idea of keeping the diff files, even after having applied all the patches is twofold.
Firstly, it allows others to more easily reuse them in other builds of st.
Secondly, it simplifies updating st to newer versions: you can simply create a diff file from the original st repo with all the changes, un-apply all of our custom patches with `patch -R`, apply the st upgrade patch, and finally all of our patches.
This way, if conflicts arise with the newer code, you can simply modify the patch files, instead of trying to fix the upgrade patch into the heavily modify source tree.

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
