{
  catkin,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fath_pivot_mount_description";
  pkgFinal = final.noetic.fath_pivot_mount_description;
  src = srcs.fath_pivot_mount_description.fath_pivot_mount_description;

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
