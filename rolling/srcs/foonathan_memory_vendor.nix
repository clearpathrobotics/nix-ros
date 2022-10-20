{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eProsima";
    repo = "foonathan_memory_vendor";
    rev = "5d315b2147585688368ecd9657ab6d628d077949";
    hash = "sha256-OAE+yB5l/5j+zFkrFium2xMdN+F0tBBO1aba1W7IuLI=";
    name = "eProsima-foonathan_memory_vendor-5d315b2147585688368ecd9657ab6d628d077949";
  });
in
{
  foonathan_memory_vendor = pkg "sha256-OAE+yB5l/5j+zFkrFium2xMdN+F0tBBO1aba1W7IuLI=" ".";
}
