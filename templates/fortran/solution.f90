PROGRAM MAIN
  INTEGER :: PART
  CHARACTER(LEN=24) :: INPUT_FILE
  CHARACTER(LEN=1) :: PART_STR

  CALL GET_COMMAND_ARGUMENT(1, INPUT_FILE)
  CALL GET_COMMAND_ARGUMENT(2, PART_STR)
  READ (PART_STR,*) PART

  IF (PART == 1) THEN
    PRINT*,"Part 1 not yet implemented"
  ELSE
    PRINT*,"Part 2 not yet implemented"
  END IF
END PROGRAM MAIN
