
Steps to setup yocto for cubieboard:

Create a directory and cd to it:

1. clone poky dora.
git clone -b dora git://git.yoctoproject.org/poky.git

2. clone sunxi
cd poky
git clone https://github.com/linux-sunxi/meta-sunxi.git

3. git clone scripts 
git clone https://github.com/remahl/cubietruck.git

#source oe-init-build-env cubietruck
cd cubietruck
bitbake core-image-minimal

