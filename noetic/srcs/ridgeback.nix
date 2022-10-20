{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ridgeback";
    repo = "ridgeback";
    rev = "4c0b42ca908fee08e66438cac91bdbe0c1b95c70";
    hash = "sha256-gUzJeg0o2DqZF+DoZcQyTdiT+n6rqdzn0jYByTSDLxc=";
    name = "ridgeback-ridgeback-4c0b42ca908fee08e66438cac91bdbe0c1b95c70";
  });
in
{
  ridgeback_control = pkg "sha256-ttPoxAvIEjMzVzXH07iiQ0NPgfkVvVCa62E1EBUS3Ww=" "ridgeback_control";
  ridgeback_description = pkg "sha256-08fNaVb8ChCA0Nt02RPiV1HC9r6URu0jlhbSr1GJIlE=" "ridgeback_description";
  ridgeback_msgs = pkg "sha256-9AdMPbHoE4N6jtsXL8GjsODsMhPZ0jg4J2MA95KotOk=" "ridgeback_msgs";
  ridgeback_navigation = pkg "sha256-HPEAtJhVxV4qmSiOQAAsD/JbwE/TK9UhUEvvnFfgw0E=" "ridgeback_navigation";
}
