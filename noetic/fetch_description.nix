{
  catkin,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_description";
  pkgFinal = final.noetic.fetch_description;
  src = srcs.fetch_ros.fetch_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
