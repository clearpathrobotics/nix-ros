{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_Client_Library";
    rev = "0bc57de328e8b0a636bc464698ad08c12bfda795";
    hash = "sha256-ZSSx1dmLeYcGuHZ3L/njv7/FBIX7NShG/GpvxQNzt+0=";
    name = "UniversalRobots-Universal_Robots_Client_Library-0bc57de328e8b0a636bc464698ad08c12bfda795";
  });
in
{
  ur_client_library = pkg "sha256-ZSSx1dmLeYcGuHZ3L/njv7/FBIX7NShG/GpvxQNzt+0=" ".";
}
