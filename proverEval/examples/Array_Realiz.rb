Realization Array_Realiz for Stack_Template;
		uses Binary_Iterator_Theory;

	Type Stack is represented by Record
		Contents: Array 1..Max_Depth of Entry;
		Top: Integer;
	end;
	convention
		0 <= S.Top <= Max_Depth;
	correspondence
		Conc.S = Reverse(Concatenate(S.Contents, S.Top));

	Procedure Push(alters E: Entry; updates S: Stack);
		S.Top := S.Top + 1;
		E :=: S.Contents[S.Top];
	end;

	Procedure Pop(replaces R: Entry; updates S: Stack); 
		R :=: S.Contents[S.Top];
		S.Top := S.Top - 1;
	end;

	Procedure Depth(preserves S: Stack): Integer;
		Depth := S.Top;
	end;

	Procedure Rem_Capacity(preserves S: Stack): Integer;
		Rem_Capacity := Max_Depth - S.Top;
	end;

	Procedure Clear(clears S: Stack);
		S.Top := 0;
	end;
end;
