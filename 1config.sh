./configure \
	--disable-static \
	--enable-shared \
	--enable-gpl \
	--enable-version3 \
	--enable-nonfree \
	--disable-doc \
	--disable-ffmpeg \
	--disable-ffplay \
	--disable-ffprobe \
	--disable-ffserver \
	--disable-avdevice \
	--disable-avfilter \
	--disable-mpegaudio-hp \
	--enable-small \
	--cross-prefix=/home/ScottWong/android-ndk-r4b/build/prebuilt/linux-x86/arm-eabi-4.4.0/bin/arm-eabi- \
	--enable-cross-compile \
	--target-os=linux \
	--extra-cflags='-I/home/ScottWong/android-ndk-r4b/build/platforms/android-8/arch-arm/usr/include' \
	--extra-ldflags='-L/home/ScottWong/android-ndk-r4b/build/platforms/android-8/arch-arm/usr/lib -nostdlib' \
	--arch=arm \
	--disable-debug \
	--disable-stripping \

	sed -i 's/HAVE_LRINT 0/HAVE_LRINT 1/g' config.h
	sed -i 's/HAVE_LRINTF 0/HAVE_LRINTF 1/g' config.h
	sed -i 's/HAVE_ROUND 0/HAVE_ROUND 1/g' config.h
	sed -i 's/HAVE_ROUNDF 0/HAVE_ROUNDF 1/g' config.h
	sed -i 's/HAVE_TRUNCF 0/HAVE_TRUNCF 1/g' config.h
	sed -i 's/HAVE_SYMVER 1/HAVE_SYMVER 0/g' config.h

