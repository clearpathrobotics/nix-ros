{
  baldor,
  catkin,
  criutils,
  eigen,
  handeye,
  jsoncpp,
  opencv,
  pluginlib,
  rosconsole,
  roscpp,
  rosunit,
  sensor_msgs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_calibration_plugins";
  pkgFinal = final.noetic.moveit_calibration_plugins;
  src = srcs.moveit_calibration.moveit_calibration_plugins;

  colconBuildDepends = [
    catkin
    eigen
    jsoncpp
    opencv
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    baldor
    criutils
    handeye
    jsoncpp
    opencv
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
