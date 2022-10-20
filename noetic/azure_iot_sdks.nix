{
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "azure_iot_sdks";
  pkgFinal = final.noetic.azure_iot_sdks;
  src = srcs.azure-iot-sdk-c.azure_iot_sdks;

  colconBuildDepends = [
    util-linux
  ];

  colconRunDepends = [
    util-linux
  ];

  colconTestDepends = [
  ];
}
