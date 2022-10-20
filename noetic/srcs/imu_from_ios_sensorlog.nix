{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pietrocolombo";
    repo = "imu_from_ios_sensorlog";
    rev = "71b141e7aaefa131b04689cc1d9b2a7c28e594bf";
    hash = "sha256-gUHdmv81m02KKSLUtfaE0uFkNgd750DoSUB46Tqpus4=";
    name = "pietrocolombo-imu_from_ios_sensorlog-71b141e7aaefa131b04689cc1d9b2a7c28e594bf";
  });
in
{
  imu_from_ios_sensorlog = pkg "sha256-gUHdmv81m02KKSLUtfaE0uFkNgd750DoSUB46Tqpus4=" ".";
}
