{
  catkin,
  image_transport_plugins,
  ros_ign_bridge,
  ros_ign_gazebo,
  ros_ign_image,
  rqt_image_view,
  rqt_plot,
  rqt_topic,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_ign_gazebo_demos";
  pkgFinal = final.noetic.ros_ign_gazebo_demos;
  src = srcs.ros_ign.ros_ign_gazebo_demos;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    image_transport_plugins
    ros_ign_bridge
    ros_ign_gazebo
    ros_ign_image
    rqt_image_view
    rqt_plot
    rqt_topic
    rviz
  ];

  colconTestDepends = [
  ];
}
