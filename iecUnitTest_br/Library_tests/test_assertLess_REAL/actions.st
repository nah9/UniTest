ACTION TEST_CASE_1_SETUP :
    IF vTestCases[0].state = utTestCaseStates.SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[0].id := 1;
    	vTestCases[0].desc[0] := 'RETURNS TRUE WHEN PARAMETER ACT LESS THAN XP';
        vTestCases[0].desc[1] := 'Tests if the function returns True if the parameter act is less than parameter xp';
    	vTestCases[0].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	vTestCase1_act := 85.4;
    	vTestCase1_xp := 115.4;
    END_IF
END_ACTION
ACTION TEST_CASE_1_EXEC :
    IF vTestCases[0].state = utTestCaseStates.RUNNING THEN
    	(*Run the test case*)
    	IF assertLess_REAL(vTestCase1_act, vTestCase1_xp) THEN
    		vTestCases[0].state := utTestCaseStates.PASSED;
    		vTestCases[0].msg := 'Parameter act was less than xp and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[0].state := utTestCaseStates.FAILED;
    		vTestCases[0].msg := 'Parameter act was less than xp and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_2_SETUP :
    IF vTestCases[1].state = utTestCaseStates.SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[1].id := 2;
        vTestCases[1].desc[0] := 'RETURNS FALSE WHEN PARAMETER ACT GREATER THAN XP';
        vTestCases[1].desc[1] := 'Tests if the function returns False if the parameter act is greater than parameter xp';
    	vTestCases[1].desc[2] := 'PASS IF: Return value is FALSE';
    	
    	(*Setup needed variables*)
    	vTestCase2_act := 115.4;
    	vTestCase2_xp := 85.4;
    END_IF
END_ACTION
ACTION TEST_CASE_2_EXEC :
    IF vTestCases[1].state = utTestCaseStates.RUNNING THEN
    	(*Run the test case*)
    	IF NOT assertLess_REAL(vTestCase2_act, vTestCase2_xp) THEN
    		vTestCases[1].state := utTestCaseStates.PASSED;
    		vTestCases[1].msg := 'Parameter act was greater than xp and function returned FALSE -> PASS';
    	ELSE
    		vTestCases[1].state := utTestCaseStates.FAILED;
    		vTestCases[1].msg := 'Parameter act was greater than xp and function returned TRUE -> FAIL';
    	END_IF
    END_IF
END_ACTION