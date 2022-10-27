{
  inputs = {
    base.url = "ros-base/841f287ca5fea12b3e0b66d4033af0f2960ca9df";
  };

  # Everything, including nixpkgs, is passed through the single input flake
  # so that that's the one locking all the versions, and we're defacto locked
  # here as long as we're at a specific hash for the input above.
  outputs = { self, base }:
    let
      base-overlays = [
        (import ./noetic)
        (import ./rolling)
      ];
      refs = {
        rosdistro = "refs/tags/snapshot/20221026";
        flake = "20221026-0";
      };
    in base.eachRosSystem (system: rec {
      packages = (base.makeRosPackages {
        system = system;
        base-overlays = base-overlays;
        top-level-metadata = refs;
      }) // {
        ci = (base.nixpkgs.legacyPackages.${system}.linkFarm "ros-ci"
            (base.ciPackages packages));
      };

      # Defines the package that is used for a bare "nix develop"
      defaultPackage = packages.noetic.desktop_full;

      # Pass this through so it's conveniently usable for workspace flakes.
      inherit (base.nixpkgs.legacyPackages.${system}) mkShell;
    }) // {
      # Also for workspace flake usage.
      inherit (base) eachRosSystem makeRosPackages;
      inherit base-overlays refs;
    };
}
