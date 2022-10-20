{
  boost,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "random_numbers";
  pkgFinal = final.noetic.random_numbers;
  src = srcs.random_numbers.random_numbers;

  colconBuildDepends = [
    boost
    catkin
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
  ];
}
