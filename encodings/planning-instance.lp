time(1..k).

fluent(p).     action(a).     action(b).       init(p).
fluent(q).        pre(a,p).      pre(b,q).
fluent(r).        add(a,q).      add(b,r).     query(r).
                  del(a,p).      del(b,q).
