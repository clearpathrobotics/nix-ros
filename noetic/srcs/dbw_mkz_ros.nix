{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "dataspeedinc";
    repo = "dbw_mkz_ros";
    rev = "299fcea396004db36e2a9e3308136330dd5066bf";
    hash = "sha256-9ZFSaEiPkd0ICes+quuZ1Nq72Ab4DTLRB30Szp/Ktpw=";
    name = "dataspeedinc-dbw_mkz_ros-299fcea396004db36e2a9e3308136330dd5066bf";
  });
in
{
  dbw_mkz = pkg "sha256-7y5ZO7DleizMB5NKuZxBZ1nXdPx6ZoMRTNpwQ1dysUU=" "dbw_mkz";
  dbw_mkz_can = pkg "sha256-E/4AXGVHuUcmcb3lT+kaMEXNfwa7fgMWWLbB67tB/a4=" "dbw_mkz_can";
  dbw_mkz_description = pkg "sha256-MzgoyGkvVktznzwSg+voTFBqc4VRP/trNR/8xrCylsM=" "dbw_mkz_description";
  dbw_mkz_joystick_demo = pkg "sha256-7NFjsJn7ejGbReUN9z44/b7M9qZ+/NqZiJcLZkenQO4=" "dbw_mkz_joystick_demo";
  dbw_mkz_msgs = pkg "sha256-EG8TmLqLxR1c4w7l1RW11rmsaVH+c7z26frd+/NsEvs=" "dbw_mkz_msgs";
}
