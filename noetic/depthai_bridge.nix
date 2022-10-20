{
  boost,
  camera_info_manager,
  cv_bridge,
  depthai,
  depthai_ros_msgs,
  image_transport,
  opencv,
  robot_state_publisher,
  ros_environment,
  sensor_msgs,
  std_msgs,
  stereo_msgs,
  vision_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depthai_bridge";
  pkgFinal = final.noetic.depthai_bridge;
  src = srcs.depthai-ros.depthai_bridge;

  colconBuildDepends = [
    boost
    camera_info_manager
    cv_bridge
    depthai
    depthai_ros_msgs
    image_transport
    opencv
    ros_environment
    sensor_msgs
    std_msgs
    stereo_msgs
    vision_msgs
  ];

  colconRunDepends = [
    boost
    camera_info_manager
    cv_bridge
    depthai
    depthai_ros_msgs
    image_transport
    opencv
    robot_state_publisher
    ros_environment
    sensor_msgs
    std_msgs
    stereo_msgs
    vision_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
