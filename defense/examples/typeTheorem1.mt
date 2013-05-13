Definition Str : MType -> MType = ...;

Type Theorem Str_Subset_Theorem:
	For all T1 : MType,
	For all T2 : Powerset(T1),
	For all S : Str(T2),
		S : Str(T1);
