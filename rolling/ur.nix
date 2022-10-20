{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  ur_calibration,
  ur_controllers,
  ur_dashboard_msgs,
  ur_moveit_config,
  ur_robot_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur";
  pkgFinal = final.rolling.ur;
  src = srcs.ur_robot_driver.ur;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ur_calibration
    ur_controllers
    ur_dashboard_msgs
    ur_moveit_config
    ur_robot_driver
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
