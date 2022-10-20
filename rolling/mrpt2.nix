{
  assimp,
  cmake,
  cv_bridge,
  eigen,
  ffmpeg,
  freeglut,
  freenect,
  geometry_msgs,
  glfw3,
  jsoncpp,
  libjpeg,
  libpcap,
  libusb1,
  nav_msgs,
  opencv,
  openni2,
  pcl_conversions,
  sensor_msgs,
  std_msgs,
  stereo_msgs,
  suitesparse,
  tf2,
  tf2_msgs,
  tinyxml-2,
  udev,
  wxGTK,
  xorg,
  zlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt2";
  pkgFinal = final.rolling.mrpt2;
  src = srcs.mrpt2.mrpt2;

  colconBuildDepends = [
    assimp
    cmake
    cv_bridge
    eigen
    ffmpeg
    freeglut
    freenect
    geometry_msgs
    glfw3
    jsoncpp
    libjpeg
    libpcap
    libusb1
    nav_msgs
    opencv
    openni2
    pcl_conversions
    sensor_msgs
    std_msgs
    stereo_msgs
    suitesparse
    tf2
    tf2_msgs
    tinyxml-2
    udev
    wxGTK
    xorg.libXrandr
    zlib
  ];

  colconRunDepends = [
    cv_bridge
    eigen
    freeglut
    geometry_msgs
    glfw3
    nav_msgs
    opencv
    pcl_conversions
    sensor_msgs
    std_msgs
    stereo_msgs
    suitesparse
    tf2
    tf2_msgs
    xorg.libXrandr
  ];

  colconTestDepends = [
  ];
}
