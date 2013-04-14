Precis String_Theory;

	--The type of all strings of heterogenous type
	Definition SStr : MType;

	--A function that restricts SStr to the type of all strings of some homogenous
	--type
	Definition Str : MType -> MType;

	Type Theorem All_Strs_In_SStr:
		For all T : MType,
		For all S : Str(T),
			S : SStr;

	--If R is a subset of T, then Str(R) is a subset of Str(T)
	Type Theorem Str_Subsets:
		For all T : MType,
		For all R : Powerset(T),
		For all s : Str(R),
			s : Str(T);

	Definition Empty_String : SStr;

	Type Theorem Empty_String_In_All_Strs:
		For all T : MType,
			Empty_String : Str(T);	

	--String length
	Definition |(s : SStr)| : N;

   ...
end;
