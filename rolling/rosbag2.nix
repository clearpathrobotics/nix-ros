{
  ament_cmake,
  ros2bag,
  rosbag2_compression,
  rosbag2_compression_zstd,
  rosbag2_cpp,
  rosbag2_py,
  rosbag2_storage,
  rosbag2_storage_default_plugins,
  rosbag2_test_common,
  rosbag2_tests,
  rosbag2_transport,
  shared_queues_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2";
  pkgFinal = final.rolling.rosbag2;
  src = srcs.rosbag2.rosbag2;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ros2bag
    rosbag2_compression
    rosbag2_compression_zstd
    rosbag2_cpp
    rosbag2_py
    rosbag2_storage
    rosbag2_storage_default_plugins
    rosbag2_transport
    shared_queues_vendor
  ];

  colconTestDepends = [
    rosbag2_test_common
    rosbag2_tests
  ];
}
