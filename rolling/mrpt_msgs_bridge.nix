{
  geometry_msgs,
  mrpt2,
  mrpt_msgs,
  ros_environment,
  tf2,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_msgs_bridge";
  pkgFinal = final.rolling.mrpt_msgs_bridge;
  src = srcs.mrpt_navigation.mrpt_msgs_bridge;

  colconBuildDepends = [
    geometry_msgs
    mrpt2
    mrpt_msgs
    ros_environment
    tf2
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    mrpt2
    mrpt_msgs
    tf2
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
