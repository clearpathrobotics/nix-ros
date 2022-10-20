{
  catkin,
  rosbag,
  roslint,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbaglive";
  pkgFinal = final.noetic.rosbaglive;
  src = srcs.wu_ros_tools.rosbaglive;

  colconBuildDepends = [
    catkin
    rosbag
    rospy
  ];

  colconRunDepends = [
    rosbag
    rospy
  ];

  colconTestDepends = [
    roslint
  ];
}
