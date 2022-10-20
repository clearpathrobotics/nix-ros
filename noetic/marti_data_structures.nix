{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_data_structures";
  pkgFinal = final.noetic.marti_data_structures;
  src = srcs.marti_common.marti_data_structures;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
