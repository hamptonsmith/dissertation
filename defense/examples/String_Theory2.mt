Precis String_Theory;
   ...

	--String concatenation
	Inductive Definition (S : SStr) o (T : SStr): SStr is
        	(i)  S o Empty_String = S;
        	(ii) For all e : Entity, S o ext(T, e) = ext(S o T, e);

	Type Theorem Concatenation_Preserves_Generic_Type:
		For all T : MType,
		For all U, V : Str(T),
			U o V : Str(T);

   ...
end;
