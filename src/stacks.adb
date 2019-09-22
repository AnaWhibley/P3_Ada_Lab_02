package body Stacks is

   procedure Clear (Stack : out Stack_Type) is
   begin
      for I in 1..Stack.Contents'Last loop
         Stack.Contents(I) := 0;
      end loop;
   end Clear;

   function Is_Empty (Stack : Stack_Type) return Boolean is
   begin
      if Stack.Contents(1) = 0 then
         return True;
      end if;
      return False;
   end Is_Empty;

   function Is_Full  (Stack : Stack_Type) return Boolean is
   begin
      if Stack.Length = Max then
         return True;
      end if;
      return False;
   end Is_Full;

   procedure Push (Stack : in out Stack_Type;
                   Item  : in     Integer) is
   begin
      if Is_Empty(Stack) then
         Stack.Contents(1) := Item;
      end if;
      Stack.Contents(1) := Stack.Contents(1) + 1;
      Stack.Contents(1) := Item;
   end Push;

   procedure Pop (Stack : in out Stack_Type;
                  Item  :    out Integer) is
   begin
      null;
   end Pop;

   function Top (Stack : Stack_Type) return Integer is
   begin
      return Stack.Contents(1);
   end Top;

end Stacks;
