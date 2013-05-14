Realization Array_Realiz for Stack_Template;
		uses Binary_Iterator_Theory;

	Type Stack is represented by Record
			Contents: Array 1..Max_Depth of Entry;
			Top: Integer;
		end;
		convention (* representation invariant *)
			0 <= S.Top <= Max_Depth;
		correspondence (* abstraction function *)
			Conc.S = Reverse(Concatenate(S.Contents, S.Top));

   ...
end;
