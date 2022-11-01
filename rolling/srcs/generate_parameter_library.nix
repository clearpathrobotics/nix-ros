{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "generate_parameter_library";
    rev = "ea928e1788595a376831ee3d22a910ee573a69bf";
    hash = "sha256-G2HlkfuLTiiOI7YQymF+E1rcecGtFE+4oOVPZNY7OGc=";
    name = "PickNikRobotics-generate_parameter_library-ea928e1788595a376831ee3d22a910ee573a69bf";
  });
in
{
  generate_parameter_library = pkg "sha256-M+DkT9N5RTtM8X8LNf5bo66LozGN/tjL2XowpL8D0Ow=" "generate_parameter_library";
  generate_parameter_library_example = pkg "sha256-BBz7BU3BGi8cDFZ4LkW4UNL846jije1Ywd5SqRpowaQ=" "example";
  generate_parameter_library_py = pkg "sha256-CqGnr05I0oZD0ZAQPSnrJoFv9lcXm5RdHZhXS6JVQ3M=" "generate_parameter_library_py";
  parameter_traits = pkg "sha256-uLcRL57mZ5aZghIfm0zCw7KudCcHL6eIdUQzoU8W+N8=" "parameter_traits";
}
