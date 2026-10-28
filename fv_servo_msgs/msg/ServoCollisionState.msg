# One collision check of MoveIt Servo's collision monitor, and the robot state it checked.
# Published on <servo node>/collision_state at collision_check_rate while servo checks
# collisions (not while it is paused).

# When the check ran.
std_msgs/Header header

# The planning group servo moves (move_group_name): its links are checked.
string group_name

# The robot state checked
sensor_msgs/JointState joint_state

# The group's links touch the scene (padded) / the robot itself (unpadded).
bool scene_collision
bool self_collision

# The shortest distances [m] (meaningful while not in collision; a very large value when
# nothing is checked).
float64 scene_distance
float64 self_distance

# Servo slows down below these distances [m] (its parameters).
float64 scene_proximity_threshold
float64 self_proximity_threshold

# The velocity scale servo derived from the check (1: none, 0: halted).
float64 velocity_scale
