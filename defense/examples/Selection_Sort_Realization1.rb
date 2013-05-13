Operation Remove_Min(updates Q : Queue; replaces Min : Entry);
	requires |Q| /= 0;
	ensures Is_Permutation(Q o <Min>, #Q) and
		Is_Universally_Related(<Min>, Q, LEQV) and
		|Q| = |#Q| - 1;
Procedure
	Var Considered_Entry : Entry;
	Var New_Queue : Queue;

	Dequeue(Min, Q);		
	While (Length(Q) > 0)
		changing Q, New_Queue, Min, Considered_Entry;
		maintaining Is_Permutation(
				New_Queue o Q o <Min>, #Q) and
			Is_Universally_Related(<Min>, New_Queue, LEQV);
		decreasing |Q|;
	do
		Dequeue(Considered_Entry, Q);

		if (Compare(Considered_Entry, Min)) then
			Min :=: Considered_Entry;
		end;	

		Enqueue(Considered_Entry, New_Queue);
	end;

	New_Queue :=: Q;
end;
