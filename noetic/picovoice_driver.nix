{
  actionlib,
  catkin,
  ddynamic_reconfigure,
  libsndfile,
  libyamlcpp,
  picovoice_msgs,
  roscpp,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "picovoice_driver";
  pkgFinal = final.noetic.picovoice_driver;
  src = srcs.picovoice-ros.picovoice_driver;

  colconBuildDepends = [
    actionlib
    catkin
    ddynamic_reconfigure
    libsndfile
    libyamlcpp
    picovoice_msgs
    roscpp
    roslib
  ];

  colconRunDepends = [
    actionlib
    ddynamic_reconfigure
    libsndfile
    libyamlcpp
    picovoice_msgs
    roscpp
    roslib
  ];

  colconTestDepends = [
  ];
}
