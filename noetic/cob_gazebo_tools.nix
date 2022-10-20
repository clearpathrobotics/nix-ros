{
  catkin,
  gazebo_msgs,
  geometry_msgs,
  python3Packages,
  roslib,
  rospy,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_gazebo_tools";
  pkgFinal = final.noetic.cob_gazebo_tools;
  src = srcs.cob_simulation.cob_gazebo_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_msgs
    geometry_msgs
    python3Packages.numpy
    roslib
    rospy
    tf
  ];

  colconTestDepends = [
  ];
}
