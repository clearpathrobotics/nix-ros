{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  image_transport_plugins,
  robot_state_publisher,
  ros_gz_bridge,
  ros_gz_image,
  ros_gz_sim,
  rqt_image_view,
  rqt_plot,
  rqt_topic,
  rviz2,
  sdformat_urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_gz_sim_demos";
  pkgFinal = final.rolling.ros_gz_sim_demos;
  src = srcs.ros_ign.ros_gz_sim_demos;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    image_transport_plugins
    robot_state_publisher
    ros_gz_bridge
    ros_gz_image
    ros_gz_sim
    rqt_image_view
    rqt_plot
    rqt_topic
    rviz2
    sdformat_urdf
    xacro
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
