{
  ament_cmake,
  autoware_auto_msgs,
  boost,
  geometry_msgs,
  ros_timer_client,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_autoware_avp";
  pkgFinal = final.rolling.sm_autoware_avp;
  src = srcs.SMACC2.sm_autoware_avp;

  colconBuildDepends = [
    ament_cmake
    autoware_auto_msgs
    boost
    geometry_msgs
    ros_timer_client
    smacc2
  ];

  colconRunDepends = [
    autoware_auto_msgs
    boost
    geometry_msgs
    ros_timer_client
    smacc2
  ];

  colconTestDepends = [
  ];
}
