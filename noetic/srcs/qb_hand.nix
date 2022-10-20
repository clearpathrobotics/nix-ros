{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "qbrobotics";
    repo = "qbhand-ros";
    rev = "241076bd1cd06bda515fddc4226e9782864ea060";
    hash = "sha256-mV8IWU5agxln5u/BmZnSRhZ0czTTIgTwyccrmx1bYL0=";
    name = "qbrobotics-qbhand-ros-241076bd1cd06bda515fddc4226e9782864ea060";
  });
in
{
  qb_hand = pkg "sha256-p6dSE5LApYhdEQndoyNTJACPC8vjRMcGBL0q4jpxzys=" "qb_hand";
  qb_hand_control = pkg "sha256-ZGQdy80WLkZiNRrnH0uMp79Q4K+2Yy30sw/qlPRtoTY=" "qb_hand_control";
  qb_hand_description = pkg "sha256-SLLXQHQVnqDg4RzMY5ESObejYuWZvrmGoBu8eOP3hmc=" "qb_hand_description";
  qb_hand_gazebo = pkg "sha256-FtUds7rDjHttYLe2Qh5Y11xRyMVTxcs6jKkdDhf7GBQ=" "qb_hand_gazebo";
  qb_hand_hardware_interface = pkg "sha256-zT09orYsuGTFHlcbE5AjQ/sWEf1kllU95N3cwJBaBvo=" "qb_hand_hardware_interface";
}
