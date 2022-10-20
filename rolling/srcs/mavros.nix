{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mavlink";
    repo = "mavros";
    rev = "f6f6aa0d61275384a8a6e0d7b76775c38c3162e3";
    hash = "sha256-iRDsSqhr6Fv9HBfws74dVHWdcKS+LmWQpy6mI/YWPwk=";
    name = "mavlink-mavros-f6f6aa0d61275384a8a6e0d7b76775c38c3162e3";
  });
in
{
  libmavconn = pkg "sha256-DnVAvMZWWWVV6/y4KjN4Kv9730jJeIUsXTdLTwx0m2o=" "libmavconn";
  mavros = pkg "sha256-iEqZZ0GT84Ti3Nsmn+E1Qqm+p02tMFxcbicXhZagPb4=" "mavros";
  mavros_extras = pkg "sha256-0Pfx2Dqa3pKSGRqPtdtmJFnanqdK6ASDJXudaGLYDSA=" "mavros_extras";
  mavros_msgs = pkg "sha256-Dhlm0Y98yjIsPuEniwaom4dP6ZQp0txaegrHVoCXi/E=" "mavros_msgs";
}
