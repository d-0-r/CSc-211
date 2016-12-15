entity InhibTBc is
end InhibTBc;

architecture InhibTBc_arch of InhibTBc is
component Inhibit port (X,Y: in BIT; Z: out BIT); end component;
signal XT, YT, ZT: BIT;
begin
  U1: Inhibit port map (XT, YT, ZT);
  process
  begin
    report "Beginning test bench for Inhibit" severity NOTE;
    XT <= '0'; YT <= '0'; wait for 10ns;
    assert(ZT = '0') report "Failed -- 0,0" severity ERROR;
    XT <= '0'; YT <= '1'; wait for 10ns;
    assert(ZT = '0') report "Failed -- 0,1" severity ERROR;
    XT <= '1'; YT <= '0'; wait for 10ns;
    assert(ZT = '0') report "Failed -- 1,0" severity ERROR;
    XT <= '1'; YT <= '1'; wait for 10ns;
    assert(ZT = '0') report "Failed -- 1,1" severity ERROR;
    report "Ending test bench for Inhibit" severity NOTE;
    wait; -- all done
  end process;
end InhibTBc_arch;
