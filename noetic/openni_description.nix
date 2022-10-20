{
  catkin,
  rostest,
  urdf,
  urdfdom,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openni_description";
  pkgFinal = final.noetic.openni_description;
  src = srcs.openni_camera.openni_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    urdf
    xacro
  ];

  colconTestDepends = [
    rostest
    urdfdom
  ];
}
