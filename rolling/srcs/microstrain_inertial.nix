{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LORD-MicroStrain";
    repo = "microstrain_inertial";
    rev = "7bdb7e863d35f328480f3cd5e6b55d35a79cbfd9";
    hash = "sha256-0YlVpda4Yh9/l5W2FWFbEbs/G886xL3Z6aAQ04W+0jk=";
    name = "LORD-MicroStrain-microstrain_inertial-7bdb7e863d35f328480f3cd5e6b55d35a79cbfd9";
  });
in
{
  microstrain_inertial_driver = pkg "sha256-mlq/A2lY3jKnObqJe7P/GDgtWRwnxbV8R2Vk4OTcN68=" "microstrain_inertial_driver";
  microstrain_inertial_examples = pkg "sha256-aAuIuqmSi8VjyzRol63E9VQGL0Vk9sAn2RYK1RhAVWI=" "microstrain_inertial_examples";
  microstrain_inertial_msgs = pkg "sha256-KirQtm8qMgkxoM5C1NPutFUBBkh/ar8a0zbdFqhM0aQ=" "microstrain_inertial_msgs";
  microstrain_inertial_rqt = pkg "sha256-R8RKH5KAilcOjVb/jSdDpAjWuwR2kVsvARFKEs42eMg=" "microstrain_inertial_rqt";
}
