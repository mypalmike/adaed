adacomp -v -nl demolib random
adacomp -v -l demolib semaphor
adacomp -v -l demolib intio
adacomp -v -l demolib screenio
adacomp -v -l demolib maze
adacomp -v -l demolib new_maze
adacomp -v -l demolib draw
adacomp -v -l demolib hilbert
adabind  -m draw -l demolib
adabind  -m hilbert -l demolib
adaexec -m draw -l demolib <maze.dat
