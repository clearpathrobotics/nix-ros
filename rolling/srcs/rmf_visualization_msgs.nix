{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_visualization_msgs";
    rev = "c5352e03cd47c92f14c62d9947174ba53b67b664";
    hash = "sha256-0HzeubbMXNK20EQxVP4oZ2TRnAoY8Uz6xyhbUXdY6dI=";
    name = "open-rmf-rmf_visualization_msgs-c5352e03cd47c92f14c62d9947174ba53b67b664";
  });
in
{
  rmf_visualization_msgs = pkg "sha256-f0qmm88R8ojtHtOAJxyMJRQyfj2ycFGIOQVZfRMWkyE=" "rmf_visualization_msgs";
}
