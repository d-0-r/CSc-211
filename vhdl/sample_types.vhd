type STD_ULOGIC is (  'U',  -- Uninitialied
                      'X',  -- Forced Unknown
                      '0',  -- Forcing 0
                      '1',  -- Forcing 1
                      'Z',  -- High Impedance
                      'W',  -- Weak Unknown
                      'L',  -- Weak 0
                      'H',  -- weak 1
                      '-'   -- Don't care
                    );

subtype STD_LOGIC is resolved STD_ULOGIC;
