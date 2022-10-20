{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "locusrobotics";
    repo = "fuse";
    rev = "7a453f60a21704052d0fc4aaf2cea18aeac443c7";
    hash = "sha256-g881fCvhQQ/RchkQc/dQvn4YDgr3mrUw97A17ZH7E0A=";
    name = "locusrobotics-fuse-7a453f60a21704052d0fc4aaf2cea18aeac443c7";
  });
in
{
  fuse_msgs = pkg "sha256-ih0vTOWIvIvyW3o0pQyEmZgXEno5vPVAkkD1JLJ/C8k=" "fuse_msgs";
}
