{
  catkin,
  depth_image_proc,
  image_proc,
  nodelet,
  openni2_camera,
  python3Packages,
  rgbd_launch,
  roslaunch,
  rospy,
  roswtf,
  tf,
  usbutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openni2_launch";
  pkgFinal = final.noetic.openni2_launch;
  src = srcs.openni2_camera.openni2_launch;

  colconBuildDepends = [
    catkin
    python3Packages.catkin-pkg
    roslaunch
  ];

  colconRunDepends = [
    depth_image_proc
    image_proc
    nodelet
    openni2_camera
    python3Packages.catkin-pkg
    rgbd_launch
    rospy
    roswtf
    tf
    usbutils
  ];

  colconTestDepends = [
  ];
}
