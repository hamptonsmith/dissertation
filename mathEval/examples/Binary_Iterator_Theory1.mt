Theory Binary_Iterator_Theory;
		uses Integer_Theory, String_Theory;

	Definition Iterative_Apply(Step : ((R : MType) * (V : MType)) -> R,
		Start : R, Value_Function : Z -> V, Value_Count : Z) : R;

	Definition Concatenate(Value_Function : Z -> (T : MType), 
			Value_Count : Z) : Str(T) = 
		Iterative_Apply(lambda (s : Str(T), t : T).(s o <t>),
			Empty_String, Value_Function, Value_Count);

   ...
end;
