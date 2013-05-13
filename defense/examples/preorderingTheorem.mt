For all f : (Entity * Entity) -> B,
For all E1, E2 : Entity,
For all S : String,
	Is_Total_Preordering(f) and
	f(E1, E2) and
	Is_Universally_Related(<E2>, S, f)
		implies Is_Unversally_Related(<E1>, S);
