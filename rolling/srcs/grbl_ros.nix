{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "flynneva";
    repo = "grbl_ros";
    rev = "9e70ee49d6c0a8166df79199207bd008da7a198b";
    hash = "sha256-Jx5bnvkF83ib+7QAbp08+W3sR1oEVwtU5ah6KFpwLtk=";
    name = "flynneva-grbl_ros-9e70ee49d6c0a8166df79199207bd008da7a198b";
  });
in
{
  grbl_ros = pkg "sha256-Jx5bnvkF83ib+7QAbp08+W3sR1oEVwtU5ah6KFpwLtk=" ".";
}
