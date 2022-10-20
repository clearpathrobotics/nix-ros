{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ridgeback";
    repo = "ridgeback_simulator";
    rev = "86ef7cb0130a0380aee07ce2728776d535dbc124";
    hash = "sha256-MWXkBW3gCI/5qM4cq2eSjf3vQTmH7HCEENxNI+ddn0Q=";
    name = "ridgeback-ridgeback_simulator-86ef7cb0130a0380aee07ce2728776d535dbc124";
  });
in
{
  mecanum_gazebo_plugin = pkg "sha256-EOxUHcg1yURA8LURPBDkU8X6XKdYDVwW7BUoxh77Vww=" "mecanum_gazebo_plugin";
  ridgeback_gazebo = pkg "sha256-Qj7scBLf09DK/zdJZOx1lEYPn+ajhtwt348L3fiXs+Q=" "ridgeback_gazebo";
  ridgeback_gazebo_plugins = pkg "sha256-32Wr2O9lkaCZQvPOUcUdmPqcw5KKJ1bgfaXHBcAt9pU=" "ridgeback_gazebo_plugins";
  ridgeback_simulator = pkg "sha256-ANMl+apHXAevhD6t8csD5lR6hPxof8n3hghzQ+pjq+U=" "ridgeback_simulator";
}
