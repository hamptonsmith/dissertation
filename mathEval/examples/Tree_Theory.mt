Precis Tree_Theory;
		uses String_Theory;

	Definition TTree : MType = ...;
	Definition Tr : MType -> MType = ...;

	Type Theorem Tree_Subset:
		For all T : MType,
		For all Tr : Tr(T),
			Tr : TTree;

	Definition Join(Root : Entity, Children : Str(TTree)) : TTree = ...;
	Definition Split(Tr : TTree) : Str(TTree) = ...;
	Definition Get_Root(Tr : TTree) : Entity = ...;

	...

	Theorem Structural_Equality:
		For all T1, T2 : TTree,
			((Get_Root(T1) = Get_Root(T2)) and 
				(Split(T1) = Split(T2))) = (T1 = T2);

	...
end;
