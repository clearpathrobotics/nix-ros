{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MITRE";
    repo = "kvh_geo_fog_3d";
    rev = "52f2c4d644207610867e5490f9c216885f705f91";
    hash = "sha256-xOTQbKtlCDP4VfdFTFzVA+LjBhfo1GYGsn8rxBjcReg=";
    name = "MITRE-kvh_geo_fog_3d-52f2c4d644207610867e5490f9c216885f705f91";
  });
in
{
  kvh_geo_fog_3d = pkg "sha256-3jNCCKMdZNlkLZS8gWJzd1KBfOEqCUC3VLZ3P29fVMI=" "kvh_geo_fog_3d";
  kvh_geo_fog_3d_driver = pkg "sha256-hTE44Ipx5Kt9rQ5rNt7bBEgv8qg/9eNwx8u0iJZ5eCw=" "kvh_geo_fog_3d_driver";
  kvh_geo_fog_3d_msgs = pkg "sha256-MYTaD+hpZDMXzl8gOnsJ2ACDa3V4nc+TvibMVehNjOk=" "kvh_geo_fog_3d_msgs";
  kvh_geo_fog_3d_rviz = pkg "sha256-ufSXI0TR+Zx3ZmiyRg0lzKZR6iR2ENyntHZ7YX3DTuw=" "kvh_geo_fog_3d_rviz";
}
