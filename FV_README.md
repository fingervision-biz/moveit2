# FingerVision build of moveit_servo (jazzy)

This branch is MoveIt 2.12.4 (the jazzy release, as shipped in apt) with one upstream fix
cherry-picked into moveit_servo:

- moveit/moveit2#3529 "Adjust moveit_servo clock to work with fake_hardware" (fixes #3040:
  Servo never starts with mock/fake hardware). It is on `main` only, not in any jazzy release.

FingerVision's own addition:

- The collision monitor publishes each of its checks on `<servo node>/collision_state`
  (`fv_servo_msgs/ServoCollisionState`, package `fv_servo_msgs` at the top of this repository):
  the robot state it checked (every joint of the scene's robot), the shortest scene and self
  distances, the collision flags, the slow-down thresholds and the velocity scale.  It is
  published from the monitor's own thread (at `collision_check_rate`, while servo checks
  collisions, i.e. not while paused), so servo's command loop is not affected.

Every other package of the repository has a COLCON_IGNORE: only `moveit_servo` and
`fv_servo_msgs` are built from here, on top of the rest of MoveIt from apt (ros-jazzy-moveit).
The fix above can be dropped once a jazzy release contains it; the collision state cannot.
