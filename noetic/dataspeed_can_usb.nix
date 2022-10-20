{
  can_msgs,
  catkin,
  lusb,
  nodelet,
  roscpp,
  roslaunch,
  roslib,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_can_usb";
  pkgFinal = final.noetic.dataspeed_can_usb;
  src = srcs.dataspeed_can.dataspeed_can_usb;

  colconBuildDepends = [
    can_msgs
    catkin
    lusb
    nodelet
    roscpp
    roslib
    std_msgs
  ];

  colconRunDepends = [
    can_msgs
    lusb
    nodelet
    roscpp
    roslaunch
    std_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
