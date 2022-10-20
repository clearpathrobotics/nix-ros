{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eProsima";
    repo = "Fast-DDS";
    rev = "240ae2d712d1b8925a1500df224b5e5bb404474f";
    hash = "sha256-R5aJ5ajWIYgwuhLkdhcLndLwoRdoaKUeaYsC7U1kzd0=";
    name = "eProsima-Fast-DDS-240ae2d712d1b8925a1500df224b5e5bb404474f";
  });
in
{
  fastrtps = pkg "sha256-R5aJ5ajWIYgwuhLkdhcLndLwoRdoaKUeaYsC7U1kzd0=" ".";
}
