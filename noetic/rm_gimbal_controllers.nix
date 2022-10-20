{
  angles,
  catkin,
  controller_interface,
  dynamic_reconfigure,
  effort_controllers,
  rm_common,
  roscpp,
  tf2_eigen,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_gimbal_controllers";
  pkgFinal = final.noetic.rm_gimbal_controllers;
  src = srcs.rm_controllers.rm_gimbal_controllers;

  colconBuildDepends = [
    angles
    catkin
    controller_interface
    dynamic_reconfigure
    effort_controllers
    rm_common
    roscpp
    tf2_eigen
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    angles
    controller_interface
    dynamic_reconfigure
    effort_controllers
    rm_common
    roscpp
    tf2_eigen
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
