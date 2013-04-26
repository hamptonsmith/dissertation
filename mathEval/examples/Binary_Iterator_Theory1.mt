Theory Binary_Iterator_Theory;
		uses Integer_Theory, String_Theory;

	Definition Iterative_Apply(Step : ((Range : MType) * (V : MType)) -> Range,
		Start : Range, Value_Function : Z -> V, Value_Count : Z) : Range;

	Definition Concatenate(Value_Function : Z -> (T : MType), 
			Value_Count : Z) : Str(T) = 
		Iterative_Apply(lambda (s : Str(T), t : T).(s o <t>),
			Empty_String, Value_Function, Value_Count);

   ...
end;
