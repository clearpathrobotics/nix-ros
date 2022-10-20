{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_cmake,
  geometry_msgs,
  object_recognition_msgs,
  octomap_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_msgs";
  pkgFinal = final.rolling.moveit_msgs;
  src = srcs.moveit_msgs.moveit_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    geometry_msgs
    object_recognition_msgs
    octomap_msgs
    rosidl_default_generators
    sensor_msgs
    shape_msgs
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    action_msgs
    geometry_msgs
    object_recognition_msgs
    octomap_msgs
    rosidl_default_runtime
    sensor_msgs
    shape_msgs
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_cmake
  ];
}
