ACTION TEST_CASE_1_SETUP :
    IF vTestCases[0].state = ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[0].id := 1;
    	vTestCases[0].desc[0] := 'RETURNS TRUE WHEN PARAMETERS EQUAL';
        vTestCases[0].desc[1] := 'Tests if the function returns True if the passed in parameters hold the same value';
    	vTestCases[0].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	vTestCase1_act := TRUE;
    	vTestCase1_xp := TRUE;
    END_IF
END_ACTION
ACTION TEST_CASE_1_EXEC :
    IF vTestCases[0].state = ut_RUNNING THEN
    	(*Run the test case*)
    	IF assertEqual_BOOL(vTestCase1_act, vTestCase1_xp) THEN
    		vTestCases[0].state := ut_PASSED;
    		vTestCases[0].msg := 'Passed parameters were equal and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[0].state := ut_FAILED;
    		vTestCases[0].msg := 'Passed parameters were equal and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_2_SETUP :
    IF vTestCases[1].state = ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[1].id := 2;
    	vTestCases[1].desc[0] := 'RETURNS FALSE WHEN PARAMETERS NOT EQUAL';
        vTestCases[1].desc[1] := 'Tests if the function returns False if the passed in parameters do not hold the same value';
    	vTestCases[1].desc[2] := 'PASS IF: Return value is FALSE';
    	
    	(*Setup needed variables*)
    	vTestCase2_act := TRUE;
    	vTestCase2_xp := FALSE;
    END_IF
END_ACTION
ACTION TEST_CASE_2_EXEC :
    IF vTestCases[1].state = ut_RUNNING THEN
    	(*Run the test case*)
    	IF NOT assertEqual_BOOL(vTestCase2_act, vTestCase2_xp) THEN
    		vTestCases[1].state := ut_PASSED;
    		vTestCases[1].msg := 'Passed parameters were not equal and function returned FALSE -> PASS';
    	ELSE
    		vTestCases[1].state := ut_FAILED;
    		vTestCases[1].msg := 'Passed parameters were not equal and function returned TRUE -> FAIL';
    	END_IF
    END_IF
END_ACTION