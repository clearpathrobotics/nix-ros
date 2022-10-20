{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_model_tools";
    rev = "6749740bdb803cdaeb4d453e086b805f05b6c030";
    hash = "sha256-yobzIcSrpJGuonHRZNdXjHAagKP6JpMEyH06Fhzw1ww=";
    name = "jsk-ros-pkg-jsk_model_tools-6749740bdb803cdaeb4d453e086b805f05b6c030";
  });
in
{
  collada_tools = pkg "sha256-2fE65RQqeytpCqkshY9hskD0KrpNoO3cXEx5EgwNVDY=" "collada_tools";
  eus_assimp = pkg "sha256-qBwx0NYIsH/BJHOcPrPWOXcxPVmcplkVMvrpSg9dA9s=" "eus_assimp";
  euscollada = pkg "sha256-jKiYH0BKHFb5VQ++v8rEQvMJTClGOSTqbeoyXKLaqsw=" "euscollada";
  eusurdf = pkg "sha256-SHnS5hpGMoeKorAkbAo1g6Aloj+cElPvuth4Hn4ndY4=" "eusurdf";
  jsk_model_tools = pkg "sha256-zvzP7mUCPf61EnF41GEPxJ3kB6VrI1gLE+HEhG1Q0jM=" "jsk_model_tools";
}
