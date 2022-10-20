{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fkie";
    repo = "message_filters";
    rev = "4437729f01479c8ee7e5b40e7e868d7b219bd813";
    hash = "sha256-Dp5WZ7Nx2w1kbo6Fbu9WohgU61bkjgLrXP6LXLDnxsw=";
    name = "fkie-message_filters-4437729f01479c8ee7e5b40e7e868d7b219bd813";
  });
in
{
  fkie_message_filters = pkg "sha256-mSrMSYpLy8/HwFqxcXjS1zLTPUAmIuXM8HgKFUul5Ho=" "fkie_message_filters";
}
