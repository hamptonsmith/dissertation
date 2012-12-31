Realization Clean_Array_Realiz for Stack_Template;
    uses Std_Boolean_Fac, Std_Character_Fac;

    Definition Array_is_Clean(SR: Stack): B =
        For all i: Integer, if SR.Top < i <= Max_Depth
            then Entry.Is_Initial(SR.Contents(i));

    Type Stack is represented by Record
            Contents: Array 1..Max_Depth of Entry;
            Top: Integer;
        end;
    convention
        0 <= S.Top <= Max_Depth and Array_is_Clean(S);
    correspondence
        Conc.S = Reverse(Concatenation i: Z
            where 1 <= i <= S.Top, <S.Contents(i)>);

    Procedure Push(alters E: Entry; updates S: Stack);
        S.Top := S.Top + 1;
        E :=: S.Contents[S.Top];
    end Push;

    Procedure Pop(replaces R: Entry; updates S: Stack);
        Var Fresh_Val: Entry;

        R :=: S.Contents[S.Top];
        S.Contents[S.Top] :=: Fresh_Val;
        S.Top := S.Top - 1; 
    end Pop;

    (* Other operations omitted for brevity *)

end Clean_Array_Realiz;
