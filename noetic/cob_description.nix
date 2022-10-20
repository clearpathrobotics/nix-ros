{
  catkin,
  gazebo_ros,
  rosbash,
  rospy,
  rosunit,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_description";
  pkgFinal = final.noetic.cob_description;
  src = srcs.cob_common.cob_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_ros
    rosbash
    rospy
    rosunit
    xacro
  ];

  colconTestDepends = [
  ];
}
