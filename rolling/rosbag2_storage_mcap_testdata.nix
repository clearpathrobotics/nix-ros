{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_storage_mcap_testdata";
  pkgFinal = final.rolling.rosbag2_storage_mcap_testdata;
  src = srcs.rosbag2_storage_mcap.rosbag2_storage_mcap_testdata;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
