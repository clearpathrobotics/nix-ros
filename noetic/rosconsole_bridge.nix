{
  catkin,
  console-bridge,
  cpp_common,
  rosconsole,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosconsole_bridge";
  pkgFinal = final.noetic.rosconsole_bridge;
  src = srcs.rosconsole_bridge.rosconsole_bridge;

  colconBuildDepends = [
    catkin
    console-bridge
    cpp_common
    rosconsole
  ];

  colconRunDepends = [
    console-bridge
    cpp_common
    rosconsole
  ];

  colconTestDepends = [
  ];
}
