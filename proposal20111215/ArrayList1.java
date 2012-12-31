public boolean contains(Object elem)
    /*: requires "init"
        ensures "(result = (EX i. (i, elem) : content))";
    */
    {
	int index = indexOfInt(elem);
	//: noteThat PosIndex: "0 <= index --> ((index,elem) : content)";
	//: noteThat NegIndex: "index = -1 --> ~(EX i. (i,elem) : content)";
	//: noteThat IndexLemma: "0 <= index | index = -1";
	boolean res = (0 <= index);
	/*: note ResultLemma: "res = (EX i. (i, elem) : content)" 
		from PosIndex, NegIndex, IndexLemma;
	*/
	return res;
    }
