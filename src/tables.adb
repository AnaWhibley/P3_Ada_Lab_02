package body Tables is

   function Minimum (Table : T_Table) return Integer is
      min : Integer := Table(1);
      --min : Integer := Table(Table'First);
   begin
      for I in Table'Range loop
         if Table(I) < min then
            min := Table(I);
         end if;
      end loop;
      return min;
   end Minimum;

   function Pos_Minimum (Table : T_Table) return Natural is
      min : Integer := Table(1);
      --min : Integer := Table(Table'First);
      pos : Integer := 1;
   begin
      for I in Table'Range loop
         if Table(I) < min then
            min := Table(I);
            pos := I;
         end if;
      end loop;
      return pos;
   end Pos_Minimum;

   function Linear_Search
     (Table : T_Table; Value : Integer) return Integer is
   begin
      for I in Table'Range loop
         if Table(I) = Value then
            return I;
         end if;
      end loop;
      return Integer'First;
   end Linear_Search;


function Binary_Search
     (Table : T_Table; Value : Integer) return Integer is
      firstIndex : Integer := Table'First;
      lastIndex : Integer := Table'Last;
      midIndex : Integer;
   begin
      while firstIndex <= lastIndex loop
         ----7 cosas, index 1 a 8
         ---1 2 3 4 5 6 7 8 9
         midIndex := (firstIndex + lastIndex) / 2;
         if Table(midIndex) < Value then
            firstIndex := midIndex + 1;
         elsif Table(midIndex) > Value then
            lastIndex := midIndex - 1;
         else
            return midIndex;
         end if;
      end loop;
      return Integer'First;
   end Binary_Search;

   procedure Swap
     (A : in out Integer;
      B : in out Integer) is
      C : Integer;
   begin
      C := A;
      A := B;
      B := C;
   end Swap;

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural) is
--        A : Integer;
--        B : Integer;
      C : Integer;
   begin

--          for I in Table'Range loop
--             if (I = Pos_1) then
--                A := Table(I);
--             elsif (I = Pos_2) then
--                B := Table(I);
--              end if;
--          end loop;
--
--
--           C := A;
--
--           for J in Table'Range loop
--              if (J = Pos_1) then
--                Table(J) := B;
--             elsif (J = Pos_2) then
--                Table(J) := C;
--             end if;
--        end loop;

      C := Table(Pos_1);
      Table(Pos_1) := Table(Pos_2);
      Table(Pos_2) := C;

   end Swap;

   procedure Bubble_Sort (Table : in out T_Table) is
   begin
      null;
   end Bubble_Sort;

   procedure Selection_Sort (Table : in out T_Table) is
   begin
      null;
   end Selection_Sort;

   procedure Insertion_Sort (Table : in out T_Table) is
   begin
      null;
   end Insertion_Sort;

   procedure Shell_Sort (Table : in out T_Table) is
   begin
      null;
   end Shell_Sort;

   procedure Merge_Sort (Table : in out T_Table) is
   begin
      null;
   end Merge_Sort;

   procedure Quick_Sort (Table : in out T_Table) is
   begin
      null;
   end Quick_Sort;

end Tables;
