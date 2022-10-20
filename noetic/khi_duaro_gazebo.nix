{
  catkin,
  gazebo_ros_control,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_duaro_gazebo";
  pkgFinal = final.noetic.khi_duaro_gazebo;
  src = srcs.khi_robot.khi_duaro_gazebo;

  colconBuildDepends = [
    catkin
    gazebo_ros_control
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
