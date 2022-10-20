{
  catkin,
  controller_manager,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  hector_gazebo_plugins,
  husky_control,
  husky_description,
  pointcloud_to_laserscan,
  roslaunch,
  rostopic,
  velodyne_gazebo_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_gazebo";
  pkgFinal = final.noetic.husky_gazebo;
  src = srcs.husky.husky_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    controller_manager
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    hector_gazebo_plugins
    husky_control
    husky_description
    pointcloud_to_laserscan
    rostopic
    velodyne_gazebo_plugins
  ];

  colconTestDepends = [
    roslaunch
  ];
}
