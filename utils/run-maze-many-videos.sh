cd train-procgen
python run_maze_videos.py --env_name maze_pure_yellowline --use_backgrounds --world_dim 5 --vid_path ../videos/episodes02.avi --model_file logs/train/maze_pure_yellowline/maze-5x5-with-backgrounds/2023-03-13__10-37-13__seed_7164/model_10027008.pth
python run_maze_videos.py --env_name maze_colorsobjects_duel --obj1 red_line_diag --obj2 yellow_gem --use_backgrounds --world_dim 5 --vid_path ../videos/episodes01.avi --model_file logs/train/maze_pure_yellowline/maze-5x5-with-backgrounds/2023-03-13__10-37-13__seed_7164/model_10027008.pth --obj1 red_line_diag --obj2 yellow_gem
