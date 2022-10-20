{
  catkin,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  hector_gazebo_plugins,
  joint_state_publisher,
  roscpp,
  roslaunch,
  warthog_control,
  warthog_description,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warthog_gazebo";
  pkgFinal = final.noetic.warthog_gazebo;
  src = srcs.warthog_simulator.warthog_gazebo;

  colconBuildDepends = [
    catkin
    gazebo_ros
    roscpp
    roslaunch
  ];

  colconRunDepends = [
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    hector_gazebo_plugins
    joint_state_publisher
    roscpp
    warthog_control
    warthog_description
  ];

  colconTestDepends = [
  ];
}
