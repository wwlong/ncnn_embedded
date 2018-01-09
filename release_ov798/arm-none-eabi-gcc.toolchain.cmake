SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_VERSION 1)
# Specify the cross compiler. arm-none-eabi-gcc and arm-none-eabi-g++ are full path required
CMAKE_FORCE_C_COMPILER(arm-none-eabi-gcc GNU)
CMAKE_FORCE_CXX_COMPILER(arm-none-eabi-g++ GNU)

set(CMAKE_C_COMPILER "/home/deepglint/workspace/tool_chain/1_ov798/opt/arm-none-eabi/bin/arm-none-eabi-gcc") #编译工具所在路径
set(CMAKE_CXX_COMPILER "/home/deepglint/workspace/tool_chain/1_ov798/opt/arm-none-eabi/bin/arm-none-eabi-g++") #编译工具所在路径

SET(CMAKE_CXX_FLAGS "-mfloat-abi=softfp -mfpu=neon-vfpv4 -mcpu=cortex-a5")
SET(CMAKE_C_FLAGS "-mfloat-abi=softfp -mfpu=neon-vfpv4 -mcpu=cortex-a5")
SET(CMAKE_BUILD_TYPE "Release")
SET(CMAKE_INSTALL_PREFIX "/your/ncnn/path/release_ov798")

SET(COMMON_FLAGS "-mcpu=cortex-m3 -O2 -mthumb -ffunction-sections -fdata-sections -g -fno-common -fmessage-length=0")
SET(CMAKE_CXX_FLAGS_INIT "${COMMON_FLAGS} -std=c++11")
SET(CMAKE_C_FLAGS_INIT "${COMMON_FLAGS} -std=gnu99")
SET(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-gc-sections -specs=nosys.specs -specs=nano.specs -T ${LINKER_SCRIPT}")
