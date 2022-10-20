{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dingo-cpr";
    repo = "dingo_simulator";
    rev = "8b7f2ce3c6731d9fe9e908fd8e2edb02e71360ea";
    hash = "sha256-koAQGmFbtNnnIsXI/tC74I/xhv7GxeLiqQ4HyYPfLl0=";
    name = "dingo-cpr-dingo_simulator-8b7f2ce3c6731d9fe9e908fd8e2edb02e71360ea";
  });
in
{
  dingo_gazebo = pkg "sha256-2rsxF6h5srtyPcZ2URVdqy/obN4mNfwrUxO90XwDYlM=" "dingo_gazebo";
  dingo_simulator = pkg "sha256-yoTo9ii/foYixtSQ1bIK0xYu3c1TSbWXKpAkwHrxIs8=" "dingo_simulator";
}
