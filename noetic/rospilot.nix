{
  catkin,
  dnsmasq,
  ffmpeg,
  geometry_msgs,
  hostapd,
  libgphoto2,
  libjpeg_turbo,
  libmicrohttpd,
  libnl,
  mavlink,
  message_generation,
  message_runtime,
  opencv,
  python3Packages,
  rosbash,
  rosbridge_suite,
  roscpp,
  roslaunch,
  roslint,
  rospy,
  sensor_msgs,
  std_msgs,
  std_srvs,
  vision_opencv,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rospilot";
  pkgFinal = final.noetic.rospilot;
  src = srcs.rospilot.rospilot;

  colconBuildDepends = [
    catkin
    ffmpeg
    geometry_msgs
    libgphoto2
    libjpeg_turbo
    libmicrohttpd
    libnl
    message_generation
    opencv
    python3Packages.setuptools
    roscpp
    roslint
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    dnsmasq
    geometry_msgs
    hostapd
    libnl
    mavlink
    message_runtime
    python3Packages.cherrypy
    python3Packages.pyserial
    rosbash
    rosbridge_suite
    roslaunch
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    vision_opencv
  ];

  colconTestDepends = [
  ];
}
