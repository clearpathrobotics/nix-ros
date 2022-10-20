{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "okalachev";
    repo = "vl53l1x_ros";
    rev = "f431f6c696dfc4bc9261c6c3a2225cbfdef54358";
    hash = "sha256-HtKnnPQqV5IBLtj7kInSxk88DrWDm4XYX5GSkS0+LWM=";
    name = "okalachev-vl53l1x_ros-f431f6c696dfc4bc9261c6c3a2225cbfdef54358";
  });
in
{
  vl53l1x = pkg "sha256-Cojkizq4TxodpUybeWi2ddEtU+uJggu5FEN8cqTGwqA=" "vl53l1x";
}
