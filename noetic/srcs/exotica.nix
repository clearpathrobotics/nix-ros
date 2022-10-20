{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipab-slmc";
    repo = "exotica";
    rev = "be580d162c5798d976f138cc1cd99474aef9c6fe";
    hash = "sha256-puWN8hbq/ixzz6kb0ls28EeUehDTt4guDe81Yo2qQwI=";
    name = "ipab-slmc-exotica-be580d162c5798d976f138cc1cd99474aef9c6fe";
  });
in
{
  exotica = pkg "sha256-2v/rClXRaSOzwiS3Qly+5s4Z2WTpnCNBq7JlvqFaU/c=" "exotica";
  exotica_aico_solver = pkg "sha256-XGMugHnBgoMkIp3U3Jn9dsn5l14AMAFBiigygbodZsQ=" "exotations/solvers/exotica_aico_solver";
  exotica_cartpole_dynamics_solver = pkg "sha256-46GX8+6hpXfuZFwnn2TnQy+Dq+eN0iPxfFnJ+uBjSm0=" "exotations/dynamics_solvers/exotica_cartpole_dynamics_solver";
  exotica_collision_scene_fcl_latest = pkg "sha256-U8N+5YjAsxmFGGGCXCyo8NByX7mRvwGxfna494d3Bh4=" "exotations/exotica_collision_scene_fcl_latest";
  exotica_core = pkg "sha256-TIKmG971BTb80QyMS4v7f0CBCECVHXzK29QaayoiE1E=" "exotica_core";
  exotica_core_task_maps = pkg "sha256-m8KH231s/FWOrD0gsM166x4VlyOxRPlIn7jCpYROvzY=" "exotations/exotica_core_task_maps";
  exotica_ddp_solver = pkg "sha256-BkUusXl/YxioP2YDdwN4gPBjfpcpAcnQSn7CrsurawQ=" "exotations/solvers/exotica_ddp_solver";
  exotica_double_integrator_dynamics_solver = pkg "sha256-uBiD6XuDhv656o26eut036UXavYkAfxdUxneTK/KQ2Y=" "exotations/dynamics_solvers/exotica_double_integrator_dynamics_solver";
  exotica_dynamics_solvers = pkg "sha256-GokAu3SM9Iwel7j6NTm90HArXxpFUU2dPG7QhEy8t30=" "exotations/dynamics_solvers/exotica_dynamics_solvers";
  exotica_examples = pkg "sha256-4JDg7fRqtmhfIQkZld+nyp99YZav/vmn3L/gU9CipMM=" "exotica_examples";
  exotica_ik_solver = pkg "sha256-WVxw+U3AIKbxBWZqa6f6MxIArxvgHytg73F2QLsHPEA=" "exotations/solvers/exotica_ik_solver";
  exotica_ilqg_solver = pkg "sha256-UHz/UyAupE+yMN1vXsLt7eAgFfdP3KlxhNkA/dZ0728=" "exotations/solvers/exotica_ilqg_solver";
  exotica_ilqr_solver = pkg "sha256-aTqXEZ+k42nRlgVmvLS1QB7t2mF/C7ZHKq1SHU46QUY=" "exotations/solvers/exotica_ilqr_solver";
  exotica_levenberg_marquardt_solver = pkg "sha256-MoKLbKXkYLJYuzK0y2S5k6MXb/ePEMTLQBfmecPE7YY=" "exotations/solvers/exotica_levenberg_marquardt_solver";
  exotica_ompl_control_solver = pkg "sha256-aFwrdhW9pG+Y4ooimbuqiC1Khf1Jraz2JBNAqURgvRQ=" "exotations/solvers/exotica_ompl_control_solver";
  exotica_ompl_solver = pkg "sha256-j52A4liFnqNJSlgEK+zUAQ71kZqNS+MUxdo5skmbgV8=" "exotations/solvers/exotica_ompl_solver";
  exotica_pendulum_dynamics_solver = pkg "sha256-GgjRMUyY9F9oyhbigD8D+lWZXNHX0pZE1UHxaNqQDxA=" "exotations/dynamics_solvers/exotica_pendulum_dynamics_solver";
  exotica_pinocchio_dynamics_solver = pkg "sha256-jS0hrEhAiEYYKq6wJK2vg+HYbbC/iSoQJ+BpiPIdToI=" "exotations/dynamics_solvers/exotica_pinocchio_dynamics_solver";
  exotica_python = pkg "sha256-2tRKK60yA2t2PtgbQV5wvHU3seE6qNZW1909e3SysR0=" "exotica_python";
  exotica_quadrotor_dynamics_solver = pkg "sha256-1MpruibjjwenRP6V9C1gx6x1lJiha07tm597tIiBTFw=" "exotations/dynamics_solvers/exotica_quadrotor_dynamics_solver";
  exotica_scipy_solver = pkg "sha256-CggoxRV9IGNIxfQ7XQw7mz91JtbthH40E0SfUQ0XDOs=" "exotations/solvers/exotica_scipy_solver";
  exotica_time_indexed_rrt_connect_solver = pkg "sha256-lW8070NEgj6wzUb7WJwvFwQhKvP15bUQ7AHCsxAzo4Y=" "exotations/solvers/exotica_time_indexed_rrt_connect_solver";
}
