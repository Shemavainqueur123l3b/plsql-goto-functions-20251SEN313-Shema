SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := -15;

BEGIN

    IF v_number = 0 THEN
        GOTO zero_number;

    ELSIF v_number > 0 THEN
        GOTO positive_number;

    ELSE
        GOTO negative_number;
    END IF;


    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is POSITIVE.');
    GOTO finish;


    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is NEGATIVE.');
    GOTO finish;


    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('Number is ZERO.');


    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Number classification completed.');

END;
/