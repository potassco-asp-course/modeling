% Not so relevant, just for nicer layout
attr(graph,default, rankdir, "LR").
attr(graph,default, nodesep, "0.2").


edge((X,Y)):- edge(X,Y), not edge(Y,X).
edge((X,Y)):- edge(X,Y), edge(Y,X), Y>X.
attr(edge,(X,Y),dir,both):- edge(X,Y), edge(Y,X), Y>X.
attr(edge,(X,Y),color,"#fff49e"):- edge((X,Y)).
attr(node,X,color,"#fff49e"):- node(X).
attr(node, N, style, filled):- node(N).
color_name(r, "red"). color_name(b, "blue"). color_name(g, "green").
attr(node, N, fillcolor, NAME) :- assign(N, C), color_name(C, NAME).
