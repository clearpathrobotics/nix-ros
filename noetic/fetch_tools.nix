{
  catkin,
  python3Packages,
  roslint,
  sshpass,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_tools";
  pkgFinal = final.noetic.fetch_tools;
  src = srcs.fetch_tools.fetch_tools;

  colconBuildDepends = [
    catkin
    python3Packages.rospkg
  ];

  colconRunDepends = [
    python3Packages.argcomplete
    roslint
    sshpass
  ];

  colconTestDepends = [
  ];
}
