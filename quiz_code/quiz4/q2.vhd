-- 2) What’s the Z value after the following VHDL code ____ (1 point)
process
begin
  X <= '1'; Y <= '0'; Z <= '0';
  Z <= '1' when X <='1' and Y <='0'; wait 4 ns;
  wait;
end process;

-- Z=1 at 2 ns and Z=1 at 6 ns
