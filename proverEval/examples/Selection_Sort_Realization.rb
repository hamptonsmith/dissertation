Realization Selection_Sort_Realization(
			Operation Compare(restores E1, E2 : Entry) 
				: Boolean;
				ensures Compare = LEQV(E1, E2);)
		for Sorting_Capability of Queue_Template;
	uses String_Theory;

	Procedure Sort(updates Q : Queue);
		Var Sorted_Queue : Queue;
		Var Lowest_Remaining : Entry;

		While (Length(Q) > 0)
			changing Q, Sorted_Queue, Lowest_Remaining;
			maintaining ...;
			decreasing |Q|;
		do
			Remove_Min(Q, Lowest_Remaining);
			Enqueue(Lowest_Remaining, Sorted_Queue);
		end;
		Q :=: Sorted_Queue;
	end;

	Operation Remove_Min(updates Q : Queue; replaces Min : Entry);
		requires |Q| /= 0;
		ensures ...;
	Procedure
		Var Considered_Entry : Entry;
		Var New_Queue : Queue;
		Dequeue(Min, Q);		
		While (Length(Q) > 0)
			changing Q, New_Queue, Min, Considered_Entry;
			maintaining ...;
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
end;
