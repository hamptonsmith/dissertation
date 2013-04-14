Theory Basic_Function_Properties_Theory;
	uses ...;

   ...

	Implicit Definition Is_Injective(F : (D : MType) -> (R : MType)) : B is
		For all d1, d2 : D,
			F(d1) = F(d2) implies d1 = d2;

   ...
end;
