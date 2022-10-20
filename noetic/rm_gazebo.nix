{
  catkin,
  gazebo,
  gazebo_ros,
  gazebo_ros_control,
  rm_common,
  rm_description,
  roboticsgroup_upatras_gazebo_plugins,
  roscpp,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_gazebo";
  pkgFinal = final.noetic.rm_gazebo;
  src = srcs.rm_control.rm_gazebo;

  colconBuildDepends = [
    catkin
    gazebo
    gazebo_ros
    gazebo_ros_control
    rm_common
    roscpp
    roslint
  ];

  colconRunDepends = [
    gazebo
    gazebo_ros
    gazebo_ros_control
    rm_common
    rm_description
    roboticsgroup_upatras_gazebo_plugins
    roscpp
    roslint
  ];

  colconTestDepends = [
  ];
}
