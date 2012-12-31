Realization Location_Linking_Realiz for Unbounded_Stack_Template;
	uses Location_Linking_Template;

    Facility Entry_Ptr_Fac is Location_Linking_Template(Entry) 
        realized by Std_Location_Linking_Realiz;

    Type Stack is represented by Entry_Ptr_Fac.Position;
    convention Is_Void_Reachable(S, Ref);
    correspondence Conc.S = Str_Info(S, Content, Ref);

    Procedure Push(alters E: Entry; updates S: Stack); 
	Take_New_Location(Temp);
	Swap_Info(Temp, E);
	Redirect_Link(Temp, S);
	Relocate(S, Temp);
    end Push;

    Procedure Pop(replaces R: Entry; updates S: Stack);
	Swap_Info(S, R);
	Follow_Link(S);
    end Pop;

    (* Other operations omitted for brevity *)

end Location_Linking_Realiz;
