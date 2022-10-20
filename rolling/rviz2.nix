{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_lint_cmake,
  ament_cmake_pytest,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_lint_auto,
  geometry_msgs,
  python3,
  python3Packages,
  qt5,
  rclcpp,
  rviz_common,
  rviz_default_plugins,
  rviz_ogre_vendor,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz2";
  pkgFinal = final.rolling.rviz2;
  src = srcs.rviz.rviz2;

  colconBuildDepends = [
    ament_cmake
    qt5.qtbase
    rviz_common
    rviz_ogre_vendor
  ];

  colconRunDepends = [
    python3
    rviz_common
    rviz_default_plugins
    rviz_ogre_vendor
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_lint_cmake
    ament_cmake_pytest
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_lint_auto
    geometry_msgs
    python3Packages.pyyaml
    rclcpp
    sensor_msgs
  ];
}
