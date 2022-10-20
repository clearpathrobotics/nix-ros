{
  catkin,
  rosbag,
  roslib,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cras_bag_tools";
  pkgFinal = final.noetic.cras_bag_tools;
  src = srcs.cras_ros_utils.cras_bag_tools;

  colconBuildDepends = [
    catkin
    roslint
  ];

  colconRunDepends = [
    rosbag
    roslib
  ];

  colconTestDepends = [
  ];
}
