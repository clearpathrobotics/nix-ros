{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "warthog-cpr";
    repo = "warthog";
    rev = "22da3517d753c9b8076e40586fd1f54e0eb96d6a";
    hash = "sha256-uXOuh/mrxUYi6wkv+67VDmE6Tg+KGUTa6ErtnYfptDY=";
    name = "warthog-cpr-warthog-22da3517d753c9b8076e40586fd1f54e0eb96d6a";
  });
in
{
  warthog_control = pkg "sha256-H+Wg0A+1CO5K5BJHSKvwdyVvHLC6GNre3a/bfvuq8Ac=" "warthog_control";
  warthog_description = pkg "sha256-kEXGm6q6B0ETda8NMoWpwv3yO2M1mbcZprduOFq+yv4=" "warthog_description";
  warthog_msgs = pkg "sha256-lNdo260uBHWNJ+ZsqxuknESJmrKVSjdo4AEBrhrQeMA=" "warthog_msgs";
}
