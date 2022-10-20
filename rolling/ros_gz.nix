{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  ros_gz_bridge,
  ros_gz_image,
  ros_gz_sim,
  ros_gz_sim_demos,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_gz";
  pkgFinal = final.rolling.ros_gz;
  src = srcs.ros_ign.ros_gz;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ros_gz_bridge
    ros_gz_image
    ros_gz_sim
    ros_gz_sim_demos
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
