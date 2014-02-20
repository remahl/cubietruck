
Steps to setup yocto for cubietruck:

Create a directory and cd to it:

1. clone poky dora.
git clone -b dora git://git.yoctoproject.org/poky.git

2. get meta oe
cd poky
git clone https://github.com/openembedded/meta-oe.git

3. clone sunxi
git clone https://github.com/linux-sunxi/meta-sunxi.git

cd meta-sunxi
git reset 52344b5328f3fc562176c4f2d02d58f32bb4a0b4
cd ..

4. clone meta dss
git clone https://github.com/remahl/meta-dss-devel.git

5. git clone scripts 
git clone https://github.com/remahl/cubietruck.git

source oe-init-build-env cubietruck

6. # TODO script to create bblayer.conf from bblayer.conf.in


7. build image
bitbake core-image-basic
or
bitbake core-image-lsb

#TODO
# dss 


