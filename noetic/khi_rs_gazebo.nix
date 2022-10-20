{
  catkin,
  gazebo_ros,
  gazebo_ros_control,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_rs_gazebo";
  pkgFinal = final.noetic.khi_rs_gazebo;
  src = srcs.khi_robot.khi_rs_gazebo;

  colconBuildDepends = [
    catkin
    gazebo_ros
    gazebo_ros_control
  ];

  colconRunDepends = [
    gazebo_ros
    gazebo_ros_control
  ];

  colconTestDepends = [
  ];
}
