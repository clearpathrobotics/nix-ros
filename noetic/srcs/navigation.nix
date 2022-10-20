{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "navigation";
    rev = "47c9c629fc93e6c6bbcd3109eb2d5b55efce400d";
    hash = "sha256-DpJPCaOiLZgWb6N9EJ2h68VhLiyoqRWxNVzzIw2ksd0=";
    name = "ros-planning-navigation-47c9c629fc93e6c6bbcd3109eb2d5b55efce400d";
  });
in
{
  amcl = pkg "sha256-J7reS5aEx0jwq7vYnrJI3ukEli3rHjaFn0VaWw7bTAI=" "amcl";
  base_local_planner = pkg "sha256-UGiwEGPz3MtVWZI4EKHtDEl5ux5QTq5ttFWZuabTLuw=" "base_local_planner";
  carrot_planner = pkg "sha256-ficgY/Rm8pH+TJoBYAFUgj2b6NCEsGA6WTOmZw0gHY0=" "carrot_planner";
  clear_costmap_recovery = pkg "sha256-4Tg95llkdbccekdvcq5OJ41dCu8kVZoO2XX65UaVq24=" "clear_costmap_recovery";
  costmap_2d = pkg "sha256-EsViKGECzNqkL/W178ULbC5nn5thB0cBSJzvR4Uvtao=" "costmap_2d";
  dwa_local_planner = pkg "sha256-pkLtLtgZYEeRbDi+OtxAKdJe2UwBgwvi/5Wh1ROk3zE=" "dwa_local_planner";
  fake_localization = pkg "sha256-ZGvRXibtDfo84IoRs3me+kSCZF6zSNm2e+XBjcHzBCM=" "fake_localization";
  global_planner = pkg "sha256-7hEpH1WG5c4RLGiN4cHtDT/lYVzKzaEEcANyvUBujGU=" "global_planner";
  map_server = pkg "sha256-731WnhYItxaRhYB71y1wdyv9cQuzq87mdQdsYYAByNc=" "map_server";
  move_base = pkg "sha256-7ojSdwejPSv7uizpK+5uihBA/tgLQSQodaaI+xNXH+s=" "move_base";
  move_slow_and_clear = pkg "sha256-Zdb9Q9GvKVgwhvQ/Pb/Y5C8hEtOOU8OuCLZHiiVYMvE=" "move_slow_and_clear";
  nav_core = pkg "sha256-oUItURQor6DDW07zYn3lczOdwJD0tgJM3EL8QA1vD8c=" "nav_core";
  navfn = pkg "sha256-OV8ezkE+SvIk2t7BPj4hjgtHdoZc0UaiFlxQ6eQPBoI=" "navfn";
  navigation = pkg "sha256-3HrIVygLcmJugkzgQHggxzUkvky4FzvLahqkHvX7nEc=" "navigation";
  rotate_recovery = pkg "sha256-m5Vrkv9fa0X5Z8h72LNu+M2f075YCzHaYNccIIxJR1E=" "rotate_recovery";
  voxel_grid = pkg "sha256-X0c+XqbAhq4rSH4Vn64oPXTXskqxStcNFI0XoxmbWaQ=" "voxel_grid";
}
