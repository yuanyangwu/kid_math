# --user root -e NB_UID=$(id -u) # grant write permission to docker
# -v $(pwd)/src:/work --NotebookApp.notebook_dir=/work # make src/ as default ipython notebook directory
docker run -it --rm \
  -p 8888:8888 -v $(pwd)/src:/work --user root -e NB_UID=$(id -u) \
  --name notebook jupyter/scipy-notebook \
  start-notebook.sh --NotebookApp.notebook_dir=/work

#docker run -it           \
#   -p 8888:8888          \
#   -v $(pwd)/src:/usr/data   \
#   -w /usr/data          \
#   ipython/scipystack    \
#   ipython notebook --ip=0.0.0.0 --no-browser
