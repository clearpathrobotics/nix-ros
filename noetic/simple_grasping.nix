{
  actionlib,
  catkin,
  cmake_modules,
  geometry_msgs,
  grasping_msgs,
  message_generation,
  message_runtime,
  moveit_msgs,
  moveit_python,
  pcl_ros,
  roscpp,
  sensor_msgs,
  shape_msgs,
  tf,
  vtkWithQt5,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "simple_grasping";
  pkgFinal = final.noetic.simple_grasping;
  src = srcs.simple_grasping.simple_grasping;

  colconBuildDepends = [
    actionlib
    catkin
    cmake_modules
    geometry_msgs
    grasping_msgs
    message_generation
    moveit_msgs
    pcl_ros
    roscpp
    sensor_msgs
    shape_msgs
    tf
    vtkWithQt5
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    grasping_msgs
    message_runtime
    moveit_msgs
    moveit_python
    pcl_ros
    roscpp
    sensor_msgs
    shape_msgs
    tf
    vtkWithQt5
  ];

  colconTestDepends = [
  ];
}
