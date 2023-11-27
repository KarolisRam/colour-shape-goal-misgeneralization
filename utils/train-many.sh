# Trains 5 models to reach a yellow line on 5x5 simplified maze with black backgrounds
cd train-procgen
for i in {1..5}
do
   python train.py --exp_name maze-5x5 --env_name maze_pure_yellowline --num_levels 100000 --distribution_mode easy --param_name hard-500 --num_timesteps 5000000 --num_checkpoints 5
   echo "RUN $i FINISHED"
done
