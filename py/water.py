import numpy as np

water = np.array([
  ['atom', 'x',  'y',  'z'],
  ['O',     0,    0,     0],
  ['H',     0,    1,    -1],
  ['H',     0,   -1,    -1],
])

rot_x = np.array([
    [1,  0,  0],
    [0, -1,  0],
    [0,  0, -1],
])

rot_y = np.array([
    [-1,  0,  0],
    [ 0,  1,  0],
    [ 0,  0, -1],
])

rot_z = np.array([
    [-1,  0, 0],
    [ 0, -1, 0],
    [ 0,  0, 1],
])

ref_xy = np.array([
    [1, 0,  0],
    [0, 1,  0],
    [0, 0, -1],
])

ref_xz = np.array([
    [1,  0, 0],
    [0, -1, 0],
    [0,  0, 1],
])

ref_yz = np.array([
    [-1, 0, 0],
    [ 0, 1, 0],
    [ 0, 0, 1],
])

water_xyz = np.array([x[1:] for x in water[1:]]).astype(int)

print(f"{water=}")
print(f"{water_xyz=}")
print(f"{rot_z=}")

water_xyz_rot = np.matmul(water_xyz, rot_y)
print(f"{water_xyz_rot=}")

water_xyz_ref = np.matmul(water_xyz, ref_xy)
print(f"{water_xyz_ref=}")
