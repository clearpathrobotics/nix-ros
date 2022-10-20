{
  actionlib,
  actionlib_msgs,
  actionlib_tutorials,
  angles,
  catkin,
  coreutils,
  dynamic_reconfigure,
  geneus,
  geometry_msgs,
  message_generation,
  message_runtime,
  mk,
  rosbash,
  rosbuild,
  roscpp,
  roslang,
  rosmsg,
  rosnode,
  rospack,
  rostest,
  rostopic,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  std_srvs,
  tf,
  tf2_ros,
  visualization_msgs,
  xorg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roseus";
  pkgFinal = final.noetic.roseus;
  src = srcs.jsk_roseus.roseus;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    actionlib_tutorials
    angles
    catkin
    coreutils
    dynamic_reconfigure
    geneus
    geometry_msgs
    message_generation
    mk
    rosbash
    rosbuild
    roscpp
    roslang
    rosmsg
    rosnode
    rospack
    rostest
    rostopic
    sensor_msgs
    shape_msgs
    std_msgs
    std_srvs
    tf
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    actionlib_tutorials
    dynamic_reconfigure
    geneus
    geometry_msgs
    message_runtime
    rosbash
    roscpp
    roslang
    rosmsg
    rosnode
    rospack
    rostest
    sensor_msgs
    shape_msgs
    std_msgs
    std_srvs
    tf
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    xorg.xorgserver
  ];
}
