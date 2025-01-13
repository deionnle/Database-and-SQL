1. EmployeeTerritories связана с Employees и Territories как многие-ко-многим.
Они представляют собой справочники по сотрудникам и территориям, а таблица
EmployeeTerritories хранит пары ключей "сотрудник-территория"

2. Orders связана с Customers, Employees и  Shippers как один-ко-многим, т.к. таблица заказов содержит
поля для хранения первичных ключей. При этом значения ключей повторяются.

3. Order_Details связана с Products и Orders как многие-ко-многим т.к. Order_Details хранит пары ключей
"OrderID и ProductID"

4. Products связана с Categories и Suppliers как один-ко-многим т.к. Products содержит
поля для хранения первичных ключей "SupplerID" и "CategoryID" которые повторяются.

5. Territories связана с Region как один-ко-многим т.к. таблица Territories содержит
поле для хранения первичных ключей "RegionID" которые повторяются.