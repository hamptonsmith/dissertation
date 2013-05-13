Procedure Sort(updates Q : Queue);
	Var Sorted_Queue : Queue;
	Var Lowest_Remaining : Entry;

	While (Length(Q) > 0)
		changing Q, Sorted_Queue, Lowest_Remaining;
		maintaining Is_Permutation(Q o Sorted_Queue, #Q) and
			Is_Conformal_With(LEQV, Sorted_Queue) and 
			Is_Universally_Related(Sorted_Queue, Q, LEQV);;
		decreasing |Q|;
	do
		Remove_Min(Q, Lowest_Remaining);
		Enqueue(Lowest_Remaining, Sorted_Queue);
	end;

	Q :=: Sorted_Queue;
end;
