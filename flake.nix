{
  inputs = {
    base.url = "ros-base/76879d57b4a4524333884516b0d06c9561d8ed49";
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
          rosdistro = "refs/tags/snapshot/20221019";
          flake = "20221019-dev";
        };
    in
    base.eachRosSystem (system: rec {
      packages = base.makeRosPackages {
        system = system;
        base-overlays = base-overlays;
        top-level-metadata = refs;
      };

      # Defines the package that is used for a bare "nix develop"
      defaultPackage = packages.sdk;

      # Hydra jobs are specified in the common flake rather than
      # hard-coded here.
      hydraJobs = base.hydraJobs packages;

      # Pass this through so it's conveniently usable for workspace flakes.
      inherit (base.nixpkgs.legacyPackages.${system}) mkShell;
    }) // {
      # Also for workspace flake usage.
      inherit (base) eachRosSystem makeRosPackages;
      inherit base-overlays refs;
    };
}
