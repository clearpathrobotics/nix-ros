{
  catkin,
  python3,
  python3Packages,
  rosbash,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "catkin_virtualenv";
  pkgFinal = final.noetic.catkin_virtualenv;
  src = srcs.catkin_virtualenv.catkin_virtualenv;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3
    python3Packages.nose
    python3Packages.rospkg
    python3Packages.virtualenv
    rosbash
  ];

  colconTestDepends = [
    roslint
  ];
}
