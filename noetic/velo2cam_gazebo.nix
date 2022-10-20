{
  catkin,
  velodyne_gazebo_plugin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velo2cam_gazebo";
  pkgFinal = final.noetic.velo2cam_gazebo;
  src = srcs.velo2cam_gazebo.velo2cam_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    velodyne_gazebo_plugin
  ];

  colconTestDepends = [
  ];
}
