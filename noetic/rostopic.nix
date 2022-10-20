{
  catkin,
  genpy,
  rosbag,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rostopic";
  pkgFinal = final.noetic.rostopic;
  src = srcs.ros_comm.rostopic;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    genpy
    rosbag
    rospy
  ];

  colconTestDepends = [
  ];
}
