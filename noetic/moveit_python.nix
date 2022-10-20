{
  actionlib,
  catkin,
  geometry_msgs,
  moveit_msgs,
  rospy,
  shape_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_python";
  pkgFinal = final.noetic.moveit_python;
  src = srcs.moveit_python.moveit_python;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    moveit_msgs
    rospy
    shape_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
