{
  boost,
  catkin,
  curl,
  python3Packages,
  rosconsole,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "resource_retriever";
  pkgFinal = final.noetic.resource_retriever;
  src = srcs.resource_retriever.resource_retriever;

  colconBuildDepends = [
    boost
    catkin
    curl
    rosconsole
    roslib
  ];

  colconRunDepends = [
    boost
    curl
    python3Packages.rospkg
    rosconsole
    roslib
  ];

  colconTestDepends = [
  ];
}
