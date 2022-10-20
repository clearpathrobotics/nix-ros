{
  catkin,
  control_msgs,
  controller_manager_msgs,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  imu_complementary_filter,
  imu_filter_madgwick,
  realtime_tools,
  rm_msgs,
  roscpp,
  roslint,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_common";
  pkgFinal = final.noetic.rm_common;
  src = srcs.rm_control.rm_common;

  colconBuildDepends = [
    catkin
    control_msgs
    controller_manager_msgs
    dynamic_reconfigure
    eigen
    geometry_msgs
    imu_complementary_filter
    imu_filter_madgwick
    realtime_tools
    rm_msgs
    roscpp
    roslint
    tf
  ];

  colconRunDepends = [
    control_msgs
    controller_manager_msgs
    dynamic_reconfigure
    eigen
    geometry_msgs
    imu_complementary_filter
    imu_filter_madgwick
    realtime_tools
    rm_msgs
    roscpp
    roslint
    tf
  ];

  colconTestDepends = [
  ];
}
