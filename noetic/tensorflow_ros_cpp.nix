{
  catkin,
  python3,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tensorflow_ros_cpp";
  pkgFinal = final.noetic.tensorflow_ros_cpp;
  src = srcs.tensorflow_ros_cpp.tensorflow_ros_cpp;

  colconBuildDepends = [
    catkin
    python3
    python3Packages.pip
  ];

  colconRunDepends = [
    python3
  ];

  colconTestDepends = [
  ];
}
