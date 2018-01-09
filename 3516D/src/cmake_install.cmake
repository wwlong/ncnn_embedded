# Install script for directory: /home/deepglint/workspace/github_work/ncnn/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/deepglint/workspace/github_work/ncnn/3516D/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/deepglint/workspace/github_work/ncnn/3516D/src/libncnn.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/deepglint/workspace/github_work/ncnn/src/blob.h"
    "/home/deepglint/workspace/github_work/ncnn/src/cpu.h"
    "/home/deepglint/workspace/github_work/ncnn/src/layer.h"
    "/home/deepglint/workspace/github_work/ncnn/src/layer_type.h"
    "/home/deepglint/workspace/github_work/ncnn/src/mat.h"
    "/home/deepglint/workspace/github_work/ncnn/src/modelbin.h"
    "/home/deepglint/workspace/github_work/ncnn/src/net.h"
    "/home/deepglint/workspace/github_work/ncnn/src/opencv.h"
    "/home/deepglint/workspace/github_work/ncnn/src/paramdict.h"
    "/home/deepglint/workspace/github_work/ncnn/3516D/src/layer_type_enum.h"
    "/home/deepglint/workspace/github_work/ncnn/3516D/src/platform.h"
    )
endif()

