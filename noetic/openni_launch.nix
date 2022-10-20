{
  catkin,
  nodelet,
  openni_camera,
  rgbd_launch,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openni_launch";
  pkgFinal = final.noetic.openni_launch;
  src = srcs.openni_camera.openni_launch;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    nodelet
    openni_camera
    rgbd_launch
  ];

  colconTestDepends = [
  ];
}
