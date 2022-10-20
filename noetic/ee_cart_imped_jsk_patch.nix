{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ee_cart_imped_jsk_patch";
  pkgFinal = final.noetic.ee_cart_imped_jsk_patch;
  src = srcs.jsk_3rdparty.ee_cart_imped_jsk_patch;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
