{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosatomic";
  pkgFinal = final.noetic.rosatomic;
  src = srcs.ros_realtime.rosatomic;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
