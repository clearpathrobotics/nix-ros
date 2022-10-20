{
  actionlib,
  boost,
  catkin,
  cob_srvs,
  control_msgs,
  diagnostic_msgs,
  dpkg,
  libntcan,
  libpcan,
  libusb1,
  message_generation,
  message_runtime,
  roscpp,
  roslint,
  sdhlibrary_cpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  trajectory_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "schunk_sdh";
  pkgFinal = final.noetic.schunk_sdh;
  src = srcs.schunk_modular_robotics.schunk_sdh;

  colconBuildDepends = [
    actionlib
    boost
    catkin
    cob_srvs
    control_msgs
    diagnostic_msgs
    dpkg
    libntcan
    libpcan
    libusb1
    message_generation
    roscpp
    roslint
    sdhlibrary_cpp
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
    urdf
  ];

  colconRunDepends = [
    actionlib
    boost
    cob_srvs
    control_msgs
    diagnostic_msgs
    dpkg
    libntcan
    libpcan
    libusb1
    message_runtime
    roscpp
    sdhlibrary_cpp
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
    urdf
  ];

  colconTestDepends = [
  ];
}
