{
  actionlib,
  boost,
  catkin,
  cv_bridge,
  darknet_ros_msgs,
  image_transport,
  message_generation,
  nodelet,
  opencv,
  roscpp,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,
  wget,
  xorg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "darknet_ros";
  pkgFinal = final.noetic.darknet_ros;
  src = srcs.darknet_ros.darknet_ros;

  colconBuildDepends = [
    actionlib
    boost
    catkin
    cv_bridge
    darknet_ros_msgs
    image_transport
    message_generation
    nodelet
    opencv
    roscpp
    rospy
    sensor_msgs
    std_msgs
    xorg.libX11
    xorg.libXext
    xorg.libXtst
  ];

  colconRunDepends = [
    actionlib
    boost
    cv_bridge
    darknet_ros_msgs
    image_transport
    message_generation
    nodelet
    opencv
    roscpp
    rospy
    sensor_msgs
    std_msgs
    xorg.libX11
    xorg.libXext
    xorg.libXtst
  ];

  colconTestDepends = [
    rostest
    wget
  ];
}
