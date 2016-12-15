function CONV_INTEGER (X: STD_LOGIC_VECTOR) return INTEGER is
  variable RESULT: INTEGER;
begin
  RESULT := 0;
  for i in X'range loop
    RESULT := RESULT * 2;
    case X(i) is
      when '0' | 'L' => null;
      when '1' | 'H' => RESULT := RESULT + 1
      when others    => null;
    end case;
  end loop;
  return RESULT;
end CONV_INTEGER;
