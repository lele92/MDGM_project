\* Multi-commodity Flow *\
Minimize
Total_Cost: 2200 flow_Pencils_1_7 + 170 flow_Pencils_2_1
 + 180 flow_Pencils_2_6 + 1190 flow_Pencils_2_9 + 1010 flow_Pencils_3_6
 + 250 flow_Pencils_3_8 + 150 flow_Pencils_3_9 + 2140 flow_Pencils_4_6
 + 200 flow_Pencils_5_0 + 230 flow_Pencils_5_3 + 220 flow_Pencils_5_4
 + 1910 flow_Pencils_5_8 + 130 flow_Pencils_6_0 + 290 flow_Pencils_7_5
 + 210 flow_Pencils_8_6 + 100 flow_Pencils_8_9 + 290 flow_Pencils_9_2
 + 120 flow_Pencils_9_4 + 180 flow_Pencils_9_5 + 2200 flow_Pens_1_7
 + 170 flow_Pens_2_1 + 180 flow_Pens_2_6 + 1190 flow_Pens_2_9
 + 1010 flow_Pens_3_6 + 250 flow_Pens_3_8 + 150 flow_Pens_3_9
 + 2140 flow_Pens_4_6 + 200 flow_Pens_5_0 + 230 flow_Pens_5_3
 + 220 flow_Pens_5_4 + 1910 flow_Pens_5_8 + 130 flow_Pens_6_0
 + 290 flow_Pens_7_5 + 210 flow_Pens_8_6 + 100 flow_Pens_8_9
 + 290 flow_Pens_9_2 + 120 flow_Pens_9_4 + 180 flow_Pens_9_5
Subject To
Arc_Capacity_Constraint_(1,7): 10 flow_Pencils_1_7 + 10 flow_Pens_1_7 <= 200
Arc_Capacity_Constraint_(2,1): 10 flow_Pencils_2_1 + 10 flow_Pens_2_1 <= 10
Arc_Capacity_Constraint_(2,6): 10 flow_Pencils_2_6 + 10 flow_Pens_2_6 <= 10
Arc_Capacity_Constraint_(2,9): 10 flow_Pencils_2_9 + 10 flow_Pens_2_9 <= 200
Arc_Capacity_Constraint_(3,6): 10 flow_Pencils_3_6 + 10 flow_Pens_3_6 <= 200
Arc_Capacity_Constraint_(3,8): 10 flow_Pencils_3_8 + 10 flow_Pens_3_8 <= 10
Arc_Capacity_Constraint_(3,9): 10 flow_Pencils_3_9 + 10 flow_Pens_3_9 <= 10
Arc_Capacity_Constraint_(4,6): 10 flow_Pencils_4_6 + 10 flow_Pens_4_6 <= 200
Arc_Capacity_Constraint_(5,0): 10 flow_Pencils_5_0 + 10 flow_Pens_5_0 <= 10
Arc_Capacity_Constraint_(5,3): 10 flow_Pencils_5_3 + 10 flow_Pens_5_3 <= 10
Arc_Capacity_Constraint_(5,4): 10 flow_Pencils_5_4 + 10 flow_Pens_5_4 <= 10
Arc_Capacity_Constraint_(5,8): 10 flow_Pencils_5_8 + 10 flow_Pens_5_8 <= 200
Arc_Capacity_Constraint_(6,0): 10 flow_Pencils_6_0 + 10 flow_Pens_6_0 <= 10
Arc_Capacity_Constraint_(7,5): 10 flow_Pencils_7_5 + 10 flow_Pens_7_5 <= 10
Arc_Capacity_Constraint_(8,6): 10 flow_Pencils_8_6 + 10 flow_Pens_8_6 <= 10
Arc_Capacity_Constraint_(8,9): 10 flow_Pencils_8_9 + 10 flow_Pens_8_9 <= 10
Arc_Capacity_Constraint_(9,2): 10 flow_Pencils_9_2 + 10 flow_Pens_9_2 <= 10
Arc_Capacity_Constraint_(9,4): 10 flow_Pencils_9_4 + 10 flow_Pens_9_4 <= 10
Arc_Capacity_Constraint_(9,5): 10 flow_Pencils_9_5 + 10 flow_Pens_9_5 <= 10
Flow_Conservation_Constraint_Node_0_Commodity_Pencils: flow_Pencils_5_0
 + flow_Pencils_6_0 = 0
Flow_Conservation_Constraint_Node_0_Commodity_Pens: flow_Pens_5_0
 + flow_Pens_6_0 = 0
Flow_Conservation_Constraint_Node_1_Commodity_Pencils: - flow_Pencils_1_7
 + flow_Pencils_2_1 = -1
Flow_Conservation_Constraint_Node_1_Commodity_Pens: - flow_Pens_1_7
 + flow_Pens_2_1 = 0
Flow_Conservation_Constraint_Node_2_Commodity_Pencils: - flow_Pencils_2_1
 - flow_Pencils_2_6 - flow_Pencils_2_9 + flow_Pencils_9_2 = 0
Flow_Conservation_Constraint_Node_2_Commodity_Pens: - flow_Pens_2_1
 - flow_Pens_2_6 - flow_Pens_2_9 + flow_Pens_9_2 = 0
Flow_Conservation_Constraint_Node_3_Commodity_Pencils: - flow_Pencils_3_6
 - flow_Pencils_3_8 - flow_Pencils_3_9 + flow_Pencils_5_3 = 1
Flow_Conservation_Constraint_Node_3_Commodity_Pens: - flow_Pens_3_6
 - flow_Pens_3_8 - flow_Pens_3_9 + flow_Pens_5_3 = 0
Flow_Conservation_Constraint_Node_4_Commodity_Pencils: - flow_Pencils_4_6
 + flow_Pencils_5_4 + flow_Pencils_9_4 = 0
Flow_Conservation_Constraint_Node_4_Commodity_Pens: - flow_Pens_4_6
 + flow_Pens_5_4 + flow_Pens_9_4 = 1
Flow_Conservation_Constraint_Node_5_Commodity_Pencils: - flow_Pencils_5_0
 - flow_Pencils_5_3 - flow_Pencils_5_4 - flow_Pencils_5_8 + flow_Pencils_7_5
 + flow_Pencils_9_5 = 0
Flow_Conservation_Constraint_Node_5_Commodity_Pens: - flow_Pens_5_0
 - flow_Pens_5_3 - flow_Pens_5_4 - flow_Pens_5_8 + flow_Pens_7_5
 + flow_Pens_9_5 = 0
Flow_Conservation_Constraint_Node_6_Commodity_Pencils: flow_Pencils_2_6
 + flow_Pencils_3_6 + flow_Pencils_4_6 - flow_Pencils_6_0 + flow_Pencils_8_6
 = 0
Flow_Conservation_Constraint_Node_6_Commodity_Pens: flow_Pens_2_6
 + flow_Pens_3_6 + flow_Pens_4_6 - flow_Pens_6_0 + flow_Pens_8_6 = 0
Flow_Conservation_Constraint_Node_7_Commodity_Pencils: flow_Pencils_1_7
 - flow_Pencils_7_5 = 0
Flow_Conservation_Constraint_Node_7_Commodity_Pens: flow_Pens_1_7
 - flow_Pens_7_5 = 0
Flow_Conservation_Constraint_Node_8_Commodity_Pencils: flow_Pencils_3_8
 + flow_Pencils_5_8 - flow_Pencils_8_6 - flow_Pencils_8_9 = 0
Flow_Conservation_Constraint_Node_8_Commodity_Pens: flow_Pens_3_8
 + flow_Pens_5_8 - flow_Pens_8_6 - flow_Pens_8_9 = -1
Flow_Conservation_Constraint_Node_9_Commodity_Pencils: flow_Pencils_2_9
 + flow_Pencils_3_9 + flow_Pencils_8_9 - flow_Pencils_9_2 - flow_Pencils_9_4
 - flow_Pencils_9_5 = 0
Flow_Conservation_Constraint_Node_9_Commodity_Pens: flow_Pens_2_9
 + flow_Pens_3_9 + flow_Pens_8_9 - flow_Pens_9_2 - flow_Pens_9_4
 - flow_Pens_9_5 = 0
Binaries
flow_Pencils_1_7
flow_Pencils_2_1
flow_Pencils_2_6
flow_Pencils_2_9
flow_Pencils_3_6
flow_Pencils_3_8
flow_Pencils_3_9
flow_Pencils_4_6
flow_Pencils_5_0
flow_Pencils_5_3
flow_Pencils_5_4
flow_Pencils_5_8
flow_Pencils_6_0
flow_Pencils_7_5
flow_Pencils_8_6
flow_Pencils_8_9
flow_Pencils_9_2
flow_Pencils_9_4
flow_Pencils_9_5
flow_Pens_1_7
flow_Pens_2_1
flow_Pens_2_6
flow_Pens_2_9
flow_Pens_3_6
flow_Pens_3_8
flow_Pens_3_9
flow_Pens_4_6
flow_Pens_5_0
flow_Pens_5_3
flow_Pens_5_4
flow_Pens_5_8
flow_Pens_6_0
flow_Pens_7_5
flow_Pens_8_6
flow_Pens_8_9
flow_Pens_9_2
flow_Pens_9_4
flow_Pens_9_5
End
