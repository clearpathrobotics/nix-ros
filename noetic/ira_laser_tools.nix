{
  catkin,
  laser_geometry,
  pcl,
  pcl_ros,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  vtkWithQt5,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ira_laser_tools";
  pkgFinal = final.noetic.ira_laser_tools;
  src = srcs.ira_laser_tools.ira_laser_tools;

  colconBuildDepends = [
    catkin
    laser_geometry
    pcl
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    tf
    vtkWithQt5
  ];

  colconRunDepends = [
    laser_geometry
    pcl
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    tf
    vtkWithQt5
  ];

  colconTestDepends = [
  ];
}
