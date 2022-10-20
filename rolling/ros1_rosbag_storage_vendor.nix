{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  boost,
  bzip2,
  console-bridge,
  git,
  gpgme,
  openssl,
  pkg-config,
  pluginlib,
  ros1_bridge,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros1_rosbag_storage_vendor";
  pkgFinal = final.rolling.ros1_rosbag_storage_vendor;
  src = srcs.rosbag2_bag_v2.ros1_rosbag_storage_vendor;

  colconBuildDepends = [
    ament_cmake
    boost
    bzip2
    console-bridge
    git
    gpgme
    openssl
    pkg-config
    pluginlib
    ros1_bridge
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
