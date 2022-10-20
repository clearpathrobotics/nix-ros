{
  catkin,
  fath_pivot_mount_description,
  flir_camera_description,
  lms1xx,
  realsense2_description,
  roslaunch,
  urdf,
  velodyne_description,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_description";
  pkgFinal = final.noetic.husky_description;
  src = srcs.husky.husky_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    fath_pivot_mount_description
    flir_camera_description
    lms1xx
    realsense2_description
    urdf
    velodyne_description
    xacro
  ];

  colconTestDepends = [
  ];
}
