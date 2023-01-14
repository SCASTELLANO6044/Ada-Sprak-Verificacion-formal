--  Swap example (Version 2): The programmer erroneously thinks
--  that a dependency aspect is required. Hence he adds the
--  dependency (and we see that 'SPARK-> Examine file'
--  continues reporting a problem!)

package Example_V2 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer) with
      Depends => (X => Y, Y => X);

end Example_V2;

--  The formal verifier reports:
--
--     medium: incorrect dependency "Y => X"
--
--  It informs us that such dependency is incorrect for
--  the given implementation. That might be either an
--  error in the code or an error in the contract.

