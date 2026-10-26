# FingerVision build of moveit_servo (jazzy)

This branch is MoveIt 2.12.4 (the jazzy release, as shipped in apt) with one upstream fix
cherry-picked into moveit_servo:

- moveit/moveit2#3529 "Adjust moveit_servo clock to work with fake_hardware" (fixes #3040:
  Servo never starts with mock/fake hardware). It is on `main` only, not in any jazzy release.

Every other package of the repository has a COLCON_IGNORE: only `moveit_servo` is built from
here, on top of the rest of MoveIt from apt (ros-jazzy-moveit).  Drop this branch once a jazzy
release contains the fix.
