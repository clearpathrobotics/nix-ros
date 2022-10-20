{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_lite";
    rev = "3ca3a4939f60fdabca764ff97065a6b4eecb7bea";
    hash = "sha256-wpmSKOVPxLJBClpG3aPy3oen+a0LM6HAQdI/vP0atfs=";
    name = "stonier-ecl_lite-3ca3a4939f60fdabca764ff97065a6b4eecb7bea";
  });
in
{
  ecl_config = pkg "sha256-S7xn/99oHfag3NfdLS7ZH84oNNP1KUpIy768tFBYXMk=" "ecl_config";
  ecl_console = pkg "sha256-U80/WQjhe/jwjU3uIXnLoAiv6iYHRB6ZmIYmT25Lw6o=" "ecl_console";
  ecl_converters_lite = pkg "sha256-IfnDZd3OkuxUKkpmyp9nEu/l7BHnkCWWtcQlk7sm5Ak=" "ecl_converters_lite";
  ecl_errors = pkg "sha256-4DIby9C1Z0gGOjQxuV9Mk11JDhEd/0U5Ng2Qgkw0yQs=" "ecl_errors";
  ecl_io = pkg "sha256-BzfnkqKow3+4/LaN7sRKgwfZMKGLjTot/RWiYPhc7wA=" "ecl_io";
  ecl_lite = pkg "sha256-+aO11JAcqDfLzHAoQ+7m7x5ponH/sAxnsV1LACmzH/E=" "ecl_lite";
  ecl_sigslots_lite = pkg "sha256-XRh+v69rNxpzDX3jNqCvJ14M9uF2Xe78WIKnnBt2rb8=" "ecl_sigslots_lite";
  ecl_time_lite = pkg "sha256-2/4IOE82PggPsK4P4D+qVFsMXkPZ+i+Ht+HUsmj3Uug=" "ecl_time_lite";
}
