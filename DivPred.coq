Definition divPre (args:nat*nat) : Prop := (snd args)<>0.

Definition divRel (args:nat*nat) (res:nat*nat) : Prop :=
    let (n, d):=args in let (q,r):=res in q*d+r=n /\ r<d.
