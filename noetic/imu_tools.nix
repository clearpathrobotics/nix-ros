{
  catkin,
  imu_complementary_filter,
  imu_filter_madgwick,
  rviz_imu_plugin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_tools";
  pkgFinal = final.noetic.imu_tools;
  src = srcs.imu_tools.imu_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    imu_complementary_filter
    imu_filter_madgwick
    rviz_imu_plugin
  ];

  colconTestDepends = [
  ];
}
