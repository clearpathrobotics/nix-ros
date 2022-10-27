{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LORD-MicroStrain";
    repo = "microstrain_inertial";
    rev = "74ccb93d0e6a6cadf62ee893d15b75013121670c";
    hash = "sha256-Ijjd9bpwYGddQQEpCcCGjuSBtG8RG8ShKT+oAUVXgwM=";
    name = "LORD-MicroStrain-microstrain_inertial-74ccb93d0e6a6cadf62ee893d15b75013121670c";
  });
in
{
  microstrain_inertial_driver = pkg "sha256-MOP6yKpVYajzdGLHcapDas97/MeX2rEFK/K3+yywttg=" "microstrain_inertial_driver";
  microstrain_inertial_examples = pkg "sha256-aAuIuqmSi8VjyzRol63E9VQGL0Vk9sAn2RYK1RhAVWI=" "microstrain_inertial_examples";
  microstrain_inertial_msgs = pkg "sha256-KirQtm8qMgkxoM5C1NPutFUBBkh/ar8a0zbdFqhM0aQ=" "microstrain_inertial_msgs";
  microstrain_inertial_rqt = pkg "sha256-R8RKH5KAilcOjVb/jSdDpAjWuwR2kVsvARFKEs42eMg=" "microstrain_inertial_rqt";
}
