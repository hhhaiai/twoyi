#! /bin/bash

#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
#
##########################################
######## install cargp xdk ########
### @https://github.com/tiann/cargo-xdk###
# support build with  library files
##########################################
cargo install cargo-xdk
rustup target add  aarch64-linux-android  armv7-linux-androideabi x86_64-linux-android i686-linux-android
## start build
cargo xdk -t arm64-v8a -o ../src/main/jniLibs build $1

## cargo xdk -t armeabi-v7a -t arm64-v8a -o ../src/main/jniLibs build $1