{
  inputs = {
    base.url = "ros-base/3ccdc95e260cdcd773c06403fa5ea9c7ec6446f5";
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
        rosdistro = "refs/tags/snapshot/20221020";
        flake = "20221020-0";
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
