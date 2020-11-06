#include "tsp-core.lp".

#minimize { D,X,Y : travel(X,Y), road(X,Y,D) }.
