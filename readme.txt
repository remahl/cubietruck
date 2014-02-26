
-------------------------------------------------------------------------------
Steps to setup yocto for cubietruck:

Create a directory and cd to it:

1. clone poky dora.
git clone -b dora git://git.yoctoproject.org/poky.git

2. get metalayers
cd poky
git clone https://github.com/openembedded/meta-oe.git

git clone https://github.com/remahl/meta-sunxi.git
git clone https://github.com/remahl/meta-cubie-ds.git
git clone https://github.com/remahl/cubietruck.git

3. clone meta dss
## TODO
#git clone https://github.com/remahl/meta-dss-devel.git

4. setup bb layers for cubietruck:
cubietruck/setup-bb-layers.sh
source oe-init-build-env cubietruck

5. build image for nand:
#TODO
# add dss recipe...
bitbake ...

6. build image for installer card:
bitbake core-image-minimal-installer

7. TODO deploy
create a sd card with core-image-minimal-installer img.
TODO... add dss-image.tar.gz to it 

8. start cubietruck with micro sd card
   call /home/root/Setup/nand-install.sh (follow instructions on screen...)

-------------------------------------------------------------------------------
ATTENTION:

The cubieboard does not support ubi/ubifs, since the NAND implements 
wear-leveling already:

FROM: http://www.cubieforums.com/index.php?topic=666.5;wap2

The NAND driver in the A10/A20 linux kernels support wear-leveling 
and bad block mapping (which is why /dev/nand doesn't appear as a full 4GB); 
however, it's unclear how good the wear-leveling algorithm actually is.

-> The file system of choice for partition nandb is ext4.
-------------------------------------------------------------------------------


