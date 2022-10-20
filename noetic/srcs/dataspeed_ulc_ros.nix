{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "dataspeed_ulc_ros";
    rev = "d3e5bca25d46f73e5c5eb51121a6aee94eebcec2";
    hash = "sha256-ZuyKk9y93W4jEEPz2jgcyOZAoyPiX5x2oGOA3K5bvNk=";
    name = "DataspeedInc-dataspeed_ulc_ros-d3e5bca25d46f73e5c5eb51121a6aee94eebcec2";
  });
in
{
  dataspeed_ulc = pkg "sha256-t7VUMwCrILyMzKAaARhZ+5p/2yOUQ7bprJsn2uuqvdw=" "dataspeed_ulc";
  dataspeed_ulc_can = pkg "sha256-CiXtRdRmcw68GpqShBW/VklbSuGX/7jaAhxTv0Umteo=" "dataspeed_ulc_can";
  dataspeed_ulc_msgs = pkg "sha256-xv4N2e7Dl3EtBSD9MOd36tGGZEXSpf12A6hGAmHiDK8=" "dataspeed_ulc_msgs";
}
