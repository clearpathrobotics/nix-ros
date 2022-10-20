{
  catkin,
  class_loader,
  cv_bridge,
  eigen,
  geometric_shapes,
  image_geometry,
  moveit_calibration_plugins,
  moveit_core,
  moveit_ros_perception,
  moveit_ros_planning,
  moveit_ros_planning_interface,
  moveit_ros_visualization,
  moveit_visual_tools,
  pkg-config,
  pluginlib,
  qt5,
  rosconsole,
  roscpp,
  rostest,
  rviz,
  rviz_visual_tools,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_calibration_gui";
  pkgFinal = final.noetic.moveit_calibration_gui;
  src = srcs.moveit_calibration.moveit_calibration_gui;

  colconBuildDepends = [
    catkin
    class_loader
    cv_bridge
    eigen
    geometric_shapes
    image_geometry
    moveit_calibration_plugins
    moveit_core
    moveit_ros_perception
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_visualization
    moveit_visual_tools
    pkg-config
    pluginlib
    qt5.qtbase
    rosconsole
    roscpp
    rviz
    rviz_visual_tools
    tf2_eigen
  ];

  colconRunDepends = [
    cv_bridge
    geometric_shapes
    moveit_calibration_plugins
    moveit_core
    moveit_ros_perception
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_visualization
    moveit_visual_tools
    pluginlib
    rosconsole
    roscpp
    rviz
    rviz_visual_tools
    tf2_eigen
  ];

  colconTestDepends = [
    rostest
  ];
}
