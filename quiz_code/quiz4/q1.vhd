-- What’s the Z value after the following VHDL code ____ (1 point)
process
begin
  X <= '1'; Y <= '0'; Z <= '0';
  Z <= '1' after 4 ns when X='1' and Y='0';
  wait;
end process;

-- Answer Z=0 at 2ns and Z=0 1 at 6ns
