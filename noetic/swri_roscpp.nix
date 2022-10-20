{
  boost,
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  gtest,
  libyamlcpp,
  marti_common_msgs,
  marti_introspection_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  pkg-config,
  roscpp,
  rostest,
  rosunit,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_roscpp";
  pkgFinal = final.noetic.swri_roscpp;
  src = srcs.marti_common.swri_roscpp;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_updater
    dynamic_reconfigure
    libyamlcpp
    marti_common_msgs
    marti_introspection_msgs
    nav_msgs
    pkg-config
    roscpp
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    boost
    diagnostic_updater
    dynamic_reconfigure
    libyamlcpp
    marti_common_msgs
    marti_introspection_msgs
    nav_msgs
    roscpp
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
    gtest
    message_generation
    message_runtime
    rostest
    rosunit
  ];
}
