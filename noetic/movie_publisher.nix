{
  catkin,
  cv_bridge,
  ffmpeg,
  python3Packages,
  rosbash_params,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "movie_publisher";
  pkgFinal = final.noetic.movie_publisher;
  src = srcs.movie_publisher.movie_publisher;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cv_bridge
    ffmpeg
    python3Packages.imageio
    python3Packages.opencv3
    rosbash_params
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
