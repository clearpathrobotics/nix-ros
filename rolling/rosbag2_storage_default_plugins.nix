{
  ament_cmake,
  rosbag2_storage_sqlite3,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_storage_default_plugins";
  pkgFinal = final.rolling.rosbag2_storage_default_plugins;
  src = srcs.rosbag2.rosbag2_storage_default_plugins;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    rosbag2_storage_sqlite3
  ];

  colconTestDepends = [
  ];
}
