{
  diff_drive_controller,
  joint_state_publisher,
  position_controllers,
  robot_state_publisher,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_description";
  pkgFinal = final.rolling.mir_description;
  src = srcs.mir_robot.mir_description;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    diff_drive_controller
    joint_state_publisher
    position_controllers
    robot_state_publisher
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
