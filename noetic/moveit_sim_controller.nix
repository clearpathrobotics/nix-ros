{
  catkin,
  moveit_core,
  moveit_ros_planning,
  ros_control_boilerplate,
  roscpp,
  roslint,
  rosparam_shortcuts,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_sim_controller";
  pkgFinal = final.noetic.moveit_sim_controller;
  src = srcs.moveit_sim_controller.moveit_sim_controller;

  colconBuildDepends = [
    catkin
    moveit_core
    moveit_ros_planning
    ros_control_boilerplate
    roscpp
    roslint
    rosparam_shortcuts
  ];

  colconRunDepends = [
    moveit_core
    moveit_ros_planning
    ros_control_boilerplate
    roscpp
    rosparam_shortcuts
  ];

  colconTestDepends = [
  ];
}
