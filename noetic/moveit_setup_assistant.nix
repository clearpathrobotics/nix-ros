{
  catkin,
  libyamlcpp,
  moveit_core,
  moveit_resources_panda_moveit_config,
  moveit_ros_planning,
  moveit_ros_visualization,
  ogre1_9,
  qt5,
  rosconsole,
  roscpp,
  rosunit,
  rviz,
  srdfdom,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_setup_assistant";
  pkgFinal = final.noetic.moveit_setup_assistant;
  src = srcs.moveit.moveit_setup_assistant;

  colconBuildDepends = [
    catkin
    libyamlcpp
    moveit_core
    moveit_ros_planning
    moveit_ros_visualization
    ogre1_9
    qt5.qtbase
    rosconsole
    roscpp
    rviz
    srdfdom
    urdf
  ];

  colconRunDepends = [
    libyamlcpp
    moveit_core
    moveit_ros_planning
    moveit_ros_visualization
    rosconsole
    roscpp
    rviz
    srdfdom
    urdf
    xacro
  ];

  colconTestDepends = [
    moveit_resources_panda_moveit_config
    rosunit
  ];
}
