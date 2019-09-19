package body Strings is

   procedure Clear (Str : in out T_String) is
   begin
      Str.Length:=0;
      null;
   end Clear;

   procedure Init (Str : in out T_String; Value : String) is
   begin
      Str.Length := Value'Length;
      Str.Buffer (1..Str.Length) := Value;
      null;
   end Init;

   function To_String (Str : T_String) return String is
   begin
      if Str.Length /= 0 then
         return Str.Buffer(1..Str.Length);
      end if;
      return "";
   end To_String;

   function Are_Equal
     (S1 : T_String;
      S2 : T_String) return Boolean
   is
   begin
      if S1.Length /= S2.Length then
         return False;
      end if;
      if S1.Buffer(1..S1.Length) = S2.Buffer(1..S2.Length) then
         return True;
      end if;
      return False;
   end Are_Equal;

   function Search
     (Str   : T_String;
      Value : Character) return Natural
   is
   begin

      return 0;
   end Search;

   function Search
     (Str   : T_String;
      Value : String) return Natural
   is
   begin
      return 0;
   end Search;

end Strings;
