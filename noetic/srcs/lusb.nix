{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "dataspeedinc";
    repo = "lusb";
    rev = "6a922751d2087740badde93f59fc453cb27ce37b";
    hash = "sha256-j8yduCyOR+bN6kbHX3JYZj5EvIzXDJcmFlkky3234Hk=";
    name = "dataspeedinc-lusb-6a922751d2087740badde93f59fc453cb27ce37b";
  });
in
{
  lusb = pkg "sha256-j8yduCyOR+bN6kbHX3JYZj5EvIzXDJcmFlkky3234Hk=" ".";
}
