{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "geometry_tutorials";
    rev = "c9bc222f286562dfbc8c02789cb1fb8ea00e31a2";
    hash = "sha256-s1hjcXajCQECNn846dblVNaOhB906WrL65Rya21lntw=";
    name = "ros-geometry_tutorials-c9bc222f286562dfbc8c02789cb1fb8ea00e31a2";
  });
in
{
  geometry_tutorials = pkg "sha256-Md8QxkwXqo4SDF8pHOfVGXLe+6MbjaINZvcBMs8AEJ8=" "geometry_tutorials";
  turtle_tf = pkg "sha256-mm+mu28PNvjmav8NDsiiFBpYUax8rJ/rvAykWq6QM7w=" "turtle_tf";
  turtle_tf2 = pkg "sha256-2YqUGLInXdesWtJIFoIoOEO6btqsGreMyRvsFRbMlUk=" "turtle_tf2";
}
