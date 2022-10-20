{
  catkin,
  message_generation,
  message_runtime,
  rospy,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gdrive_ros";
  pkgFinal = final.noetic.gdrive_ros;
  src = srcs.jsk_3rdparty.gdrive_ros;

  colconBuildDepends = [
    catkin
    message_generation
    rospy
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rospy
  ];

  colconTestDepends = [
    rostest
  ];
}
