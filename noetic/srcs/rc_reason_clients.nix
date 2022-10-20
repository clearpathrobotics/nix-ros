{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_reason_clients_ros";
    rev = "66692b768f62dcb29e76b3d8fdb4746266742247";
    hash = "sha256-J2fv/WFjmhmZmjiWI/c77Pd+aeKqty2ZY3TbF5MFDUc=";
    name = "roboception-rc_reason_clients_ros-66692b768f62dcb29e76b3d8fdb4746266742247";
  });
in
{
  rc_reason_clients = pkg "sha256-rNCT7TYaJA1hVXLsIn3RG/dRPeHpc8pQSEm/mHgwQSk=" "rc_reason_clients";
  rc_reason_msgs = pkg "sha256-uu+5yzSLHPPvfrzC9MLUH+Q1eZcKO3nlc2ceSHXlDSU=" "rc_reason_msgs";
}
