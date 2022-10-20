{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "navigation_msgs";
    rev = "793d06ff51d20fcd94832161ccde268cb4ce5e38";
    hash = "sha256-pShohiq+D4JCwih9KRCoJHpciORAphIXqvemKG2tkvg=";
    name = "ros-planning-navigation_msgs-793d06ff51d20fcd94832161ccde268cb4ce5e38";
  });
in
{
  map_msgs = pkg "sha256-7IurC6RLbfmueYraUPE0560XMCKFL7Ld61V9DfOD5eE=" "map_msgs";
  move_base_msgs = pkg "sha256-M04IFEmWhE3/U8wT5cMz1LjWX9Vgfkc1FP0R54QQoKg=" "move_base_msgs";
}
