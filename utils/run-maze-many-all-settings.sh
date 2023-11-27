# Evaluates models in each of the below two-object settings
# it stops and resumes gracefully, so you can stop running it and just rerun the script later to continue.
cd train-procgen
python run_maze_many.py --run_name maze-5x5 --obj1 yellow_line_diag --obj2 black_gem
python run_maze_many.py --run_name maze-5x5 --obj1 red_line_diag --obj2 green_line_diag
python run_maze_many.py --run_name maze-5x5 --obj1 red_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 yellow_gem --obj2 red_line_diag
python run_maze_many.py --run_name maze-5x5 --obj1 yellow_line_diag --obj2 yellow_line_diag
python run_maze_many.py --run_name maze-5x5 --obj1 black_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 blue_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 cyan_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 green_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 purple_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 white_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 yellow_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5 --obj1 green_line_diag --obj2 red_line_diag
python run_maze_many.py --run_name maze-5x5 --obj1 white_line_diag --obj2 yellow_line_diag
python run_maze_many.py --run_name maze-5x5 --obj1 black_gem --obj2 black_gem

python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 yellow_line_diag --obj2 black_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 red_line_diag --obj2 green_line_diag
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 red_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 yellow_line_diag --obj2 yellow_line_diag
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 black_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 blue_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 cyan_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 green_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 purple_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 white_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 yellow_line_diag --obj2 yellow_gem
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 green_line_diag --obj2 red_line_diag
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 white_line_diag --obj2 yellow_line_diag
python run_maze_many.py --run_name maze-5x5-with-backgrounds --use_backgrounds --obj1 black_gem --obj2 black_gem

