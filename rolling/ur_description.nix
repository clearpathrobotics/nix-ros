{
  ament_cmake,
  ament_cmake_pytest,
  joint_state_publisher_gui,
  launch,
  launch_ros,
  launch_testing_ament_cmake,
  launch_testing_ros,
  robot_state_publisher,
  rviz2,
  urdf,
  urdfdom,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_description";
  pkgFinal = final.rolling.ur_description;
  src = srcs.ur_description.ur_description;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    joint_state_publisher_gui
    launch
    launch_ros
    robot_state_publisher
    rviz2
    urdf
    xacro
  ];

  colconTestDepends = [
    ament_cmake_pytest
    launch_testing_ament_cmake
    launch_testing_ros
    urdfdom
    xacro
  ];
}
