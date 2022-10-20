{
  catkin,
  message_generation,
  message_runtime,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "radar_pa_msgs";
  pkgFinal = final.noetic.radar_pa_msgs;
  src = srcs.radar_pa.radar_pa_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    rospy
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
