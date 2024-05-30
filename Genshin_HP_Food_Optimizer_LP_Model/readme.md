# Genshin Healing Foods Optimization with MiniZinc

This repository contains a linear programming (LP) model that optimizes the usage of healing foods to maximize HP (hit points) in Genshin Impact using Mini Zinc. The model takes the current inventory of farmable raw ingridients. 



## Requirements

To run the LP model, you'll need the following:

- Mini Zinc: A constraint modeling language.
- Solver: A solver compatible with Mini Zinc (e.g., Gecode, Chuffed, OR-Tools).

## Usage

1. **Input Data:** Before running the model, prepare the input data:
   - Inventory of ingirdients: List of quantities of all ingridents available

Sample Input 

|          Food         | Sweet Flower | Fowl | Pinecone | Potato | Sunsettia | Berry |Jam|
|:---------------------:|:------------:|:----:|:--------:|:------:|:---------:|:-----:|:-----:|
| Sweet Madame          |            2 |    2 |        0 |      0 |         0 |     0 |0|
| Monstadt Hash Browns |            2 |    0 |        2 |      1 |         3 |     2 |1|

constraints 

| Food                  | HP    | Max HP low | Max HP high | Processing Time | Cost |
|-----------------------|-------|------------|-------------|-----------------|------|
| Sweet Madame          | 1,200 | 20%        | 24%         | 0               | 0    |
| Mondstadt Hash Browns | 1,250 | 32%        | 0           | 30              | 270  |


Currently, the model only uses the flat HP that the model and does not consider the additional HP boosts. 
Complexity is the amount of processed ingridients and Cost is the amount of Mora that is needed process ingridients. 
Store bought ingridients such as rice, shrimp does not count and are accounted as inventory count.



2. **Model Execution:**
   - Run the Mini Zinc model with the provided input data.
   - The model will optimize the distribution of healing foods to maximize HP.

3. **Output:**
   - The optimized distribution of healing foods.
   - The maximum HP achievable with the given inventory.


