{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "yujinrobot";
    repo = "kobuki_msgs";
    rev = "ec509794beaf2f7b5e8dea971054386bfee817f8";
    hash = "sha256-9TFjmgsVdFnmhESUKQmGuuvl5CO0cFANCtSTK1vX+oo=";
    name = "yujinrobot-kobuki_msgs-ec509794beaf2f7b5e8dea971054386bfee817f8";
  });
in
{
  kobuki_msgs = pkg "sha256-9TFjmgsVdFnmhESUKQmGuuvl5CO0cFANCtSTK1vX+oo=" ".";
}
