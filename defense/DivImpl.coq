Function div (p:nat*nat) {measure fst} : nat*nat :=
    match p with
    | (_,0) => (0,0)
    | (a,b) => if le_lt_dec b a
               then let (x,y):=div (a-b,b) in (1+x,y)
               else (0,a)
    end.
