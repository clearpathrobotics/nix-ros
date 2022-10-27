{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "warthog-cpr";
    repo = "warthog";
    rev = "2b305c4d363b8efdeef6e3af43fdf27ca7d7f8ef";
    hash = "sha256-mPte5HF7i+rxikfU5SPzzKNIVENIEHPub2TzDfCuXcg=";
    name = "warthog-cpr-warthog-2b305c4d363b8efdeef6e3af43fdf27ca7d7f8ef";
  });
in
{
  warthog_control = pkg "sha256-H+Wg0A+1CO5K5BJHSKvwdyVvHLC6GNre3a/bfvuq8Ac=" "warthog_control";
  warthog_description = pkg "sha256-p1l3d8TAZBtwdmBcRWt3og/4ZhkRy5XRfWVQT8HzrA4=" "warthog_description";
  warthog_msgs = pkg "sha256-lNdo260uBHWNJ+ZsqxuknESJmrKVSjdo4AEBrhrQeMA=" "warthog_msgs";
}
