{
  catkin,
  depth_image_proc,
  image_proc,
  nodelet,
  rostest,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rgbd_launch";
  pkgFinal = final.noetic.rgbd_launch;
  src = srcs.rgbd_launch.rgbd_launch;

  colconBuildDepends = [
    catkin
    depth_image_proc
    image_proc
    nodelet
    tf2_ros
  ];

  colconRunDepends = [
    depth_image_proc
    image_proc
    nodelet
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
