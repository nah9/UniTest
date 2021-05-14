FUNCTION assertArrayEqual_BYTE
    (*https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_BYTE.md*)
    vStop := (size / SIZEOF(act^[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 := ADR(act^[i]);
    	pt2 := ADR(xp^[i]);
    	IF pt1^ <> pt2^ THEN
    		assertArrayEqual_BYTE := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_BYTE := TRUE;
    RETURN;

END_FUNCTION