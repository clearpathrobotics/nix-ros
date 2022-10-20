{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "magazino";
    repo = "move_base_flex";
    rev = "43063b9577ea11a122f65b6067ac9c76dfee92f0";
    hash = "sha256-Tuer7JJx5NpEREkwJWLBRxb8GkLOHI+7gaPDxihqCSw=";
    name = "magazino-move_base_flex-43063b9577ea11a122f65b6067ac9c76dfee92f0";
  });
in
{
  mbf_abstract_core = pkg "sha256-cVZQuNJVL83ts/zUtcmLWtEIfYN7V8L2FzU+Kps9pXo=" "mbf_abstract_core";
  mbf_abstract_nav = pkg "sha256-NMwBMLkOoH275hXbeGSeDOGBS7wGy8D4+Pcf44PwYkw=" "mbf_abstract_nav";
  mbf_costmap_core = pkg "sha256-CJUL9Kmo1Uv4oA86nWfb+BkR7lEop0acl5CPCyfb4Ws=" "mbf_costmap_core";
  mbf_costmap_nav = pkg "sha256-q5tl9sG0jps/akYCjcU3kGNOs+dLovzt0GxCAHG43ew=" "mbf_costmap_nav";
  mbf_msgs = pkg "sha256-Z/JlWP+Ass+2PoNIPWVTxnqILT7ahie7aOAk/XIf0uY=" "mbf_msgs";
  mbf_simple_nav = pkg "sha256-lkt7Z5n5X3msZDshAhOQdAcM234uCHTV/CVb7gcmphI=" "mbf_simple_nav";
  mbf_utility = pkg "sha256-X87dUh60k3o/3if4RI8FGEaN/HILyXQvREPQumKEfzg=" "mbf_utility";
  move_base_flex = pkg "sha256-0iTYubCTfWaWCwoHbHiujNfqow3Z7NUxFmyKh5NLRNM=" "move_base_flex";
}
