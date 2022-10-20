{
  camera_info_manager,
  cv_bridge,
  depth_image_proc,
  depthai,
  depthai_bridge,
  depthai_ros_msgs,
  foxglove_msgs,
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
  name = "depthai_examples";
  pkgFinal = final.noetic.depthai_examples;
  src = srcs.depthai-ros.depthai_examples;

  colconBuildDepends = [
    camera_info_manager
    cv_bridge
    depthai
    depthai_bridge
    depthai_ros_msgs
    foxglove_msgs
    image_transport
    opencv
    ros_environment
    sensor_msgs
    std_msgs
    stereo_msgs
    vision_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    depth_image_proc
    depthai
    depthai_bridge
    depthai_ros_msgs
    foxglove_msgs
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
