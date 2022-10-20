{
  catkin,
  geometry_msgs,
  python3Packages,
  rosgraph_msgs,
  roslint,
  rospy,
  rostest,
  rosunit,
  tf,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cras_py_common";
  pkgFinal = final.noetic.cras_py_common;
  src = srcs.cras_ros_utils.cras_py_common;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    geometry_msgs
    rosgraph_msgs
    rospy
    tf
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
    python3Packages.numpy
    roslint
    rostest
    rosunit
  ];
}
