{
  catkin,
  diagnostic_aggregator,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  dynamic_tf_publisher,
  eigen_conversions,
  geometry_msgs,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  python3Packages,
  roscpp,
  roscpp_tutorials,
  roslaunch,
  roslint,
  rosnode,
  rostest,
  rostime,
  rostopic,
  sensor_msgs,
  sound_play,
  std_msgs,
  std_srvs,
  tf,
  topic_tools,
  unixtools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_topic_tools";
  pkgFinal = final.noetic.jsk_topic_tools;
  src = srcs.jsk_common.jsk_topic_tools;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    dynamic_tf_publisher
    eigen_conversions
    geometry_msgs
    image_transport
    message_generation
    nodelet
    roscpp
    roslaunch
    rosnode
    rostest
    rostime
    rostopic
    std_msgs
    std_srvs
    tf
    topic_tools
  ];

  colconRunDepends = [
    diagnostic_aggregator
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    dynamic_tf_publisher
    eigen_conversions
    geometry_msgs
    image_transport
    message_runtime
    nodelet
    python3Packages.numpy
    python3Packages.opencv3
    python3Packages.scipy
    roscpp
    roslaunch
    rosnode
    rostime
    rostopic
    sensor_msgs
    sound_play
    std_msgs
    std_srvs
    tf
    topic_tools
    unixtools.ping
  ];

  colconTestDepends = [
    roscpp_tutorials
    roslint
  ];
}
