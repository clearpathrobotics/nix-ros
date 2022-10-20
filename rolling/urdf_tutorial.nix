{
  ament_cmake,
  ament_lint_auto,
  joint_state_publisher,
  joint_state_publisher_gui,
  robot_state_publisher,
  rviz2,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf_tutorial";
  pkgFinal = final.rolling.urdf_tutorial;
  src = srcs.urdf_tutorial.urdf_tutorial;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    joint_state_publisher
    joint_state_publisher_gui
    robot_state_publisher
    rviz2
    xacro
  ];

  colconTestDepends = [
    ament_lint_auto
  ];
}
