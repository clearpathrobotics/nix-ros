{
  actionlib,
  actionlib_msgs,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  image_geometry,
  image_transport,
  libyamlcpp,
  message_filters,
  message_generation,
  message_runtime,
  people_msgs,
  rosbag,
  roscpp,
  roslaunch,
  roslib,
  roslint,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  stereo_image_proc,
  stereo_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "face_detector";
  pkgFinal = final.noetic.face_detector;
  src = srcs.people.face_detector;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    cv_bridge
    geometry_msgs
    image_geometry
    image_transport
    libyamlcpp
    message_filters
    message_generation
    people_msgs
    rosbag
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    stereo_image_proc
    stereo_msgs
    tf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    image_geometry
    image_transport
    libyamlcpp
    message_filters
    message_runtime
    people_msgs
    rosbag
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    stereo_image_proc
    stereo_msgs
    tf
  ];

  colconTestDepends = [
    roslaunch
    roslint
    rostest
    stereo_image_proc
  ];
}
