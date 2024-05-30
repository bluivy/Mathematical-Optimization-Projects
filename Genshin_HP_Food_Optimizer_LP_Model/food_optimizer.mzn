enum DISH;
int: MORA_BUDGET;
int: MAX_PROCESSING_TIME;
array[DISH] of int: HP;
array[DISH] of int: PROCESSING_TIME;
array[DISH] of int:COST;
enum raw_ingridients;
array[raw_ingridients] of int: inventory;

array[DISH] of var int: final_items;
array[DISH, raw_ingridients] of int: ingredients_required;
constraint forall( i in DISH)(final_items[i] >= 0);
constraint forall(i in DISH) (final_items[i] * COST[i] <= MORA_BUDGET);
constraint forall(i in DISH)(final_items[i] * PROCESSING_TIME[i] <= MAX_PROCESSING_TIME);
constraint forall(j in raw_ingridients)(
    sum(i in DISH)(final_items[i] * ingredients_required[i, j]) <= inventory[j]
);


var int: total_hp = sum(i in DISH)(final_items[i] * HP[i]);
solve maximize total_hp;