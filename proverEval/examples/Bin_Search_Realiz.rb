Realization Bin_Search_Realiz(
		Operation Are_Ordered(restores x,y: Entry): Boolean;
			ensures Are_Ordered = (LEQ(x,y));)
	for Search_Capability of Static_Array_Template;
	uses Std_Boolean_Fac;
	
	...

	Procedure Is_Present(restores key: Entry; restores A: Static_Array): Boolean;
		Var low, mid, high, one, two : Integer;
		Var midVal : Entry;
		Var result : Boolean;

		one := One();
		two := Two();

		result := False();
		low := Lower_Bound;
		high := Upper_Bound;

		While (low <= high)
			changing low, mid, high, A, midVal, result;
			maintaining ...;
			decreasing (high - low);
		do
			Divide(Difference(high, low), two, mid);
			mid := Sum(low, mid);
			Swap_Entry(A, midVal, mid);
			if (Are_Equal(midVal, key)) then
				result := True();
				low := Sum(high, one);
			else 
				if (Are_Ordered(midVal, key)) then
					low := Sum(mid, one);
				else
					high := Difference(mid, one);
				end;
			end;
			Swap_Entry(A, midVal, mid);
		end;

		Is_Present := result;
	end;
end;
