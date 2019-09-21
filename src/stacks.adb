package body Stacks is

   procedure Clear (Stack : out Stack_Type) is
   begin
      Stack.Length := 0;
   end Clear;

   function Is_Empty (Stack : Stack_Type) return Boolean is
   begin
      if Stack.Contents'Length = 0 then
         return True;
      end if;
      return False;
   end Is_Empty;

   function Is_Full  (Stack : Stack_Type) return Boolean is
   begin
      if Stack.Contents'Last = 0 then
         return True;
      end if;
      return False;
   end Is_Full;

   procedure Push (Stack : in out Stack_Type;
                   Item  : in     Integer) is
   begin
      null;
   end Push;

   procedure Pop (Stack : in out Stack_Type;
                  Item  :    out Integer) is
   begin
      null;
   end Pop;

   function Top (Stack : Stack_Type) return Integer is
   begin
      return -1;
   end Top;

end Stacks;
