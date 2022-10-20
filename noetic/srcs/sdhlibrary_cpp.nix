{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipab-slmc";
    repo = "SDHLibrary-CPP";
    rev = "0217d4edf82f34292750240bd7a3d9c63feb7e33";
    hash = "sha256-4Fg1zDkpoUwidBGO5S2wWcxswKYv0F01dLW2eu9LdAY=";
    name = "ipab-slmc-SDHLibrary-CPP-0217d4edf82f34292750240bd7a3d9c63feb7e33";
  });
in
{
  sdhlibrary_cpp = pkg "sha256-4Fg1zDkpoUwidBGO5S2wWcxswKYv0F01dLW2eu9LdAY=" ".";
}
