{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "up2metric";
    repo = "cam2lidar";
    rev = "45b095bb2e15275efd55360f845405255a719b77";
    hash = "sha256-PUn7SGWHXqQhq57aEE4B1+u+e56Ply31EnBkQmjtzoQ=";
    name = "up2metric-cam2lidar-45b095bb2e15275efd55360f845405255a719b77";
  });
in
{
  cam2lidar = pkg "sha256-PUn7SGWHXqQhq57aEE4B1+u+e56Ply31EnBkQmjtzoQ=" ".";
}
