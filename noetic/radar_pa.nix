{
  can_msgs,
  catkin,
  geometry_msgs,
  radar_pa_msgs,
  rospy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "radar_pa";
  pkgFinal = final.noetic.radar_pa;
  src = srcs.radar_pa.radar_pa;

  colconBuildDepends = [
    can_msgs
    catkin
    geometry_msgs
    radar_pa_msgs
    rospy
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    can_msgs
    geometry_msgs
    radar_pa_msgs
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
