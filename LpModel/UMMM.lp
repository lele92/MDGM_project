\* Multi-commodity Flow *\
Minimize
Total_Cost: 76 flow_order_0_0_3 + 56 flow_order_0_0_6 + 176 flow_order_0_0_8
 + 52 flow_order_0_1_3 + 96 flow_order_0_2_1 + 60 flow_order_0_2_3
 + 116 flow_order_0_2_5 + 40 flow_order_0_2_9 + 76 flow_order_0_3_0
 + 100 flow_order_0_3_6 + 164 flow_order_0_4_6 + 84 flow_order_0_4_8
 + 52 flow_order_0_5_4 + 96 flow_order_0_5_6 + 120 flow_order_0_5_9
 + 48 flow_order_0_6_7 + 40 flow_order_0_7_6 + 84 flow_order_0_7_8
 + 64 flow_order_0_8_0 + 48 flow_order_0_8_2 + 64 flow_order_0_8_4
 + 52 flow_order_0_9_7 + 76 flow_order_1_0_3 + 56 flow_order_1_0_6
 + 176 flow_order_1_0_8 + 52 flow_order_1_1_3 + 96 flow_order_1_2_1
 + 60 flow_order_1_2_3 + 116 flow_order_1_2_5 + 40 flow_order_1_2_9
 + 76 flow_order_1_3_0 + 100 flow_order_1_3_6 + 164 flow_order_1_4_6
 + 84 flow_order_1_4_8 + 52 flow_order_1_5_4 + 96 flow_order_1_5_6
 + 120 flow_order_1_5_9 + 48 flow_order_1_6_7 + 40 flow_order_1_7_6
 + 84 flow_order_1_7_8 + 64 flow_order_1_8_0 + 48 flow_order_1_8_2
 + 64 flow_order_1_8_4 + 52 flow_order_1_9_7 + 95 flow_order_2_0_3
 + 70 flow_order_2_0_6 + 220 flow_order_2_0_8 + 65 flow_order_2_1_3
 + 120 flow_order_2_2_1 + 75 flow_order_2_2_3 + 145 flow_order_2_2_5
 + 50 flow_order_2_2_9 + 95 flow_order_2_3_0 + 125 flow_order_2_3_6
 + 205 flow_order_2_4_6 + 105 flow_order_2_4_8 + 65 flow_order_2_5_4
 + 120 flow_order_2_5_6 + 150 flow_order_2_5_9 + 60 flow_order_2_6_7
 + 50 flow_order_2_7_6 + 105 flow_order_2_7_8 + 80 flow_order_2_8_0
 + 60 flow_order_2_8_2 + 80 flow_order_2_8_4 + 65 flow_order_2_9_7
 + 38 flow_order_3_0_3 + 28 flow_order_3_0_6 + 88 flow_order_3_0_8
 + 26 flow_order_3_1_3 + 48 flow_order_3_2_1 + 30 flow_order_3_2_3
 + 58 flow_order_3_2_5 + 20 flow_order_3_2_9 + 38 flow_order_3_3_0
 + 50 flow_order_3_3_6 + 82 flow_order_3_4_6 + 42 flow_order_3_4_8
 + 26 flow_order_3_5_4 + 48 flow_order_3_5_6 + 60 flow_order_3_5_9
 + 24 flow_order_3_6_7 + 20 flow_order_3_7_6 + 42 flow_order_3_7_8
 + 32 flow_order_3_8_0 + 24 flow_order_3_8_2 + 32 flow_order_3_8_4
 + 26 flow_order_3_9_7
Subject To
Arc_Capacity_Constraint_(0,3): 4 flow_order_0_0_3 + 4 flow_order_1_0_3
 + 5 flow_order_2_0_3 + 2 flow_order_3_0_3 <= 10
Arc_Capacity_Constraint_(0,6): 4 flow_order_0_0_6 + 4 flow_order_1_0_6
 + 5 flow_order_2_0_6 + 2 flow_order_3_0_6 <= 10
Arc_Capacity_Constraint_(0,8): 4 flow_order_0_0_8 + 4 flow_order_1_0_8
 + 5 flow_order_2_0_8 + 2 flow_order_3_0_8 <= 100
Arc_Capacity_Constraint_(1,3): 4 flow_order_0_1_3 + 4 flow_order_1_1_3
 + 5 flow_order_2_1_3 + 2 flow_order_3_1_3 <= 10
Arc_Capacity_Constraint_(2,1): 4 flow_order_0_2_1 + 4 flow_order_1_2_1
 + 5 flow_order_2_2_1 + 2 flow_order_3_2_1 <= 10
Arc_Capacity_Constraint_(2,3): 4 flow_order_0_2_3 + 4 flow_order_1_2_3
 + 5 flow_order_2_2_3 + 2 flow_order_3_2_3 <= 10
Arc_Capacity_Constraint_(2,5): 4 flow_order_0_2_5 + 4 flow_order_1_2_5
 + 5 flow_order_2_2_5 + 2 flow_order_3_2_5 <= 10
Arc_Capacity_Constraint_(2,9): 4 flow_order_0_2_9 + 4 flow_order_1_2_9
 + 5 flow_order_2_2_9 + 2 flow_order_3_2_9 <= 10
Arc_Capacity_Constraint_(3,0): 4 flow_order_0_3_0 + 4 flow_order_1_3_0
 + 5 flow_order_2_3_0 + 2 flow_order_3_3_0 <= 10
Arc_Capacity_Constraint_(3,6): 4 flow_order_0_3_6 + 4 flow_order_1_3_6
 + 5 flow_order_2_3_6 + 2 flow_order_3_3_6 <= 10
Arc_Capacity_Constraint_(4,6): 4 flow_order_0_4_6 + 4 flow_order_1_4_6
 + 5 flow_order_2_4_6 + 2 flow_order_3_4_6 <= 100
Arc_Capacity_Constraint_(4,8): 4 flow_order_0_4_8 + 4 flow_order_1_4_8
 + 5 flow_order_2_4_8 + 2 flow_order_3_4_8 <= 10
Arc_Capacity_Constraint_(5,4): 4 flow_order_0_5_4 + 4 flow_order_1_5_4
 + 5 flow_order_2_5_4 + 2 flow_order_3_5_4 <= 10
Arc_Capacity_Constraint_(5,6): 4 flow_order_0_5_6 + 4 flow_order_1_5_6
 + 5 flow_order_2_5_6 + 2 flow_order_3_5_6 <= 10
Arc_Capacity_Constraint_(5,9): 4 flow_order_0_5_9 + 4 flow_order_1_5_9
 + 5 flow_order_2_5_9 + 2 flow_order_3_5_9 <= 10
Arc_Capacity_Constraint_(6,7): 4 flow_order_0_6_7 + 4 flow_order_1_6_7
 + 5 flow_order_2_6_7 + 2 flow_order_3_6_7 <= 10
Arc_Capacity_Constraint_(7,6): 4 flow_order_0_7_6 + 4 flow_order_1_7_6
 + 5 flow_order_2_7_6 + 2 flow_order_3_7_6 <= 10
Arc_Capacity_Constraint_(7,8): 4 flow_order_0_7_8 + 4 flow_order_1_7_8
 + 5 flow_order_2_7_8 + 2 flow_order_3_7_8 <= 10
Arc_Capacity_Constraint_(8,0): 4 flow_order_0_8_0 + 4 flow_order_1_8_0
 + 5 flow_order_2_8_0 + 2 flow_order_3_8_0 <= 10
Arc_Capacity_Constraint_(8,2): 4 flow_order_0_8_2 + 4 flow_order_1_8_2
 + 5 flow_order_2_8_2 + 2 flow_order_3_8_2 <= 10
Arc_Capacity_Constraint_(8,4): 4 flow_order_0_8_4 + 4 flow_order_1_8_4
 + 5 flow_order_2_8_4 + 2 flow_order_3_8_4 <= 10
Arc_Capacity_Constraint_(9,7): 4 flow_order_0_9_7 + 4 flow_order_1_9_7
 + 5 flow_order_2_9_7 + 2 flow_order_3_9_7 <= 10
Flow_Conservation_Constraint_Node_0_Commodity_order_0: - flow_order_0_0_3
 - flow_order_0_0_6 - flow_order_0_0_8 + flow_order_0_3_0 + flow_order_0_8_0
 = -1
Flow_Conservation_Constraint_Node_0_Commodity_order_1: - flow_order_1_0_3
 - flow_order_1_0_6 - flow_order_1_0_8 + flow_order_1_3_0 + flow_order_1_8_0
 = 1
Flow_Conservation_Constraint_Node_0_Commodity_order_2: - flow_order_2_0_3
 - flow_order_2_0_6 - flow_order_2_0_8 + flow_order_2_3_0 + flow_order_2_8_0
 = 0
Flow_Conservation_Constraint_Node_0_Commodity_order_3: - flow_order_3_0_3
 - flow_order_3_0_6 - flow_order_3_0_8 + flow_order_3_3_0 + flow_order_3_8_0
 = 0
Flow_Conservation_Constraint_Node_1_Commodity_order_0: - flow_order_0_1_3
 + flow_order_0_2_1 = 0
Flow_Conservation_Constraint_Node_1_Commodity_order_1: - flow_order_1_1_3
 + flow_order_1_2_1 = 0
Flow_Conservation_Constraint_Node_1_Commodity_order_2: - flow_order_2_1_3
 + flow_order_2_2_1 = 0
Flow_Conservation_Constraint_Node_1_Commodity_order_3: - flow_order_3_1_3
 + flow_order_3_2_1 = 0
Flow_Conservation_Constraint_Node_2_Commodity_order_0: - flow_order_0_2_1
 - flow_order_0_2_3 - flow_order_0_2_5 - flow_order_0_2_9 + flow_order_0_8_2
 = 1
Flow_Conservation_Constraint_Node_2_Commodity_order_1: - flow_order_1_2_1
 - flow_order_1_2_3 - flow_order_1_2_5 - flow_order_1_2_9 + flow_order_1_8_2
 = 0
Flow_Conservation_Constraint_Node_2_Commodity_order_2: - flow_order_2_2_1
 - flow_order_2_2_3 - flow_order_2_2_5 - flow_order_2_2_9 + flow_order_2_8_2
 = 0
Flow_Conservation_Constraint_Node_2_Commodity_order_3: - flow_order_3_2_1
 - flow_order_3_2_3 - flow_order_3_2_5 - flow_order_3_2_9 + flow_order_3_8_2
 = 0
Flow_Conservation_Constraint_Node_3_Commodity_order_0: flow_order_0_0_3
 + flow_order_0_1_3 + flow_order_0_2_3 - flow_order_0_3_0 - flow_order_0_3_6
 = 0
Flow_Conservation_Constraint_Node_3_Commodity_order_1: flow_order_1_0_3
 + flow_order_1_1_3 + flow_order_1_2_3 - flow_order_1_3_0 - flow_order_1_3_6
 = 0
Flow_Conservation_Constraint_Node_3_Commodity_order_2: flow_order_2_0_3
 + flow_order_2_1_3 + flow_order_2_2_3 - flow_order_2_3_0 - flow_order_2_3_6
 = 0
Flow_Conservation_Constraint_Node_3_Commodity_order_3: flow_order_3_0_3
 + flow_order_3_1_3 + flow_order_3_2_3 - flow_order_3_3_0 - flow_order_3_3_6
 = -1
Flow_Conservation_Constraint_Node_4_Commodity_order_0: - flow_order_0_4_6
 - flow_order_0_4_8 + flow_order_0_5_4 + flow_order_0_8_4 = 0
Flow_Conservation_Constraint_Node_4_Commodity_order_1: - flow_order_1_4_6
 - flow_order_1_4_8 + flow_order_1_5_4 + flow_order_1_8_4 = -1
Flow_Conservation_Constraint_Node_4_Commodity_order_2: - flow_order_2_4_6
 - flow_order_2_4_8 + flow_order_2_5_4 + flow_order_2_8_4 = 0
Flow_Conservation_Constraint_Node_4_Commodity_order_3: - flow_order_3_4_6
 - flow_order_3_4_8 + flow_order_3_5_4 + flow_order_3_8_4 = 0
Flow_Conservation_Constraint_Node_5_Commodity_order_0: flow_order_0_2_5
 - flow_order_0_5_4 - flow_order_0_5_6 - flow_order_0_5_9 = 0
Flow_Conservation_Constraint_Node_5_Commodity_order_1: flow_order_1_2_5
 - flow_order_1_5_4 - flow_order_1_5_6 - flow_order_1_5_9 = 0
Flow_Conservation_Constraint_Node_5_Commodity_order_2: flow_order_2_2_5
 - flow_order_2_5_4 - flow_order_2_5_6 - flow_order_2_5_9 = 0
Flow_Conservation_Constraint_Node_5_Commodity_order_3: flow_order_3_2_5
 - flow_order_3_5_4 - flow_order_3_5_6 - flow_order_3_5_9 = 1
Flow_Conservation_Constraint_Node_6_Commodity_order_0: flow_order_0_0_6
 + flow_order_0_3_6 + flow_order_0_4_6 + flow_order_0_5_6 - flow_order_0_6_7
 + flow_order_0_7_6 = 0
Flow_Conservation_Constraint_Node_6_Commodity_order_1: flow_order_1_0_6
 + flow_order_1_3_6 + flow_order_1_4_6 + flow_order_1_5_6 - flow_order_1_6_7
 + flow_order_1_7_6 = 0
Flow_Conservation_Constraint_Node_6_Commodity_order_2: flow_order_2_0_6
 + flow_order_2_3_6 + flow_order_2_4_6 + flow_order_2_5_6 - flow_order_2_6_7
 + flow_order_2_7_6 = -1
Flow_Conservation_Constraint_Node_6_Commodity_order_3: flow_order_3_0_6
 + flow_order_3_3_6 + flow_order_3_4_6 + flow_order_3_5_6 - flow_order_3_6_7
 + flow_order_3_7_6 = 0
Flow_Conservation_Constraint_Node_7_Commodity_order_0: flow_order_0_6_7
 - flow_order_0_7_6 - flow_order_0_7_8 + flow_order_0_9_7 = 0
Flow_Conservation_Constraint_Node_7_Commodity_order_1: flow_order_1_6_7
 - flow_order_1_7_6 - flow_order_1_7_8 + flow_order_1_9_7 = 0
Flow_Conservation_Constraint_Node_7_Commodity_order_2: flow_order_2_6_7
 - flow_order_2_7_6 - flow_order_2_7_8 + flow_order_2_9_7 = 0
Flow_Conservation_Constraint_Node_7_Commodity_order_3: flow_order_3_6_7
 - flow_order_3_7_6 - flow_order_3_7_8 + flow_order_3_9_7 = 0
Flow_Conservation_Constraint_Node_8_Commodity_order_0: flow_order_0_0_8
 + flow_order_0_4_8 + flow_order_0_7_8 - flow_order_0_8_0 - flow_order_0_8_2
 - flow_order_0_8_4 = 0
Flow_Conservation_Constraint_Node_8_Commodity_order_1: flow_order_1_0_8
 + flow_order_1_4_8 + flow_order_1_7_8 - flow_order_1_8_0 - flow_order_1_8_2
 - flow_order_1_8_4 = 0
Flow_Conservation_Constraint_Node_8_Commodity_order_2: flow_order_2_0_8
 + flow_order_2_4_8 + flow_order_2_7_8 - flow_order_2_8_0 - flow_order_2_8_2
 - flow_order_2_8_4 = 0
Flow_Conservation_Constraint_Node_8_Commodity_order_3: flow_order_3_0_8
 + flow_order_3_4_8 + flow_order_3_7_8 - flow_order_3_8_0 - flow_order_3_8_2
 - flow_order_3_8_4 = 0
Flow_Conservation_Constraint_Node_9_Commodity_order_0: flow_order_0_2_9
 + flow_order_0_5_9 - flow_order_0_9_7 = 0
Flow_Conservation_Constraint_Node_9_Commodity_order_1: flow_order_1_2_9
 + flow_order_1_5_9 - flow_order_1_9_7 = 0
Flow_Conservation_Constraint_Node_9_Commodity_order_2: flow_order_2_2_9
 + flow_order_2_5_9 - flow_order_2_9_7 = 1
Flow_Conservation_Constraint_Node_9_Commodity_order_3: flow_order_3_2_9
 + flow_order_3_5_9 - flow_order_3_9_7 = 0
Lenght_path_between_(0,2): flow_order_0_0_3 + flow_order_0_0_6
 + flow_order_0_0_8 + flow_order_0_1_3 + flow_order_0_2_1 + flow_order_0_2_3
 + flow_order_0_2_5 + flow_order_0_2_9 + flow_order_0_3_0 + flow_order_0_3_6
 + flow_order_0_4_6 + flow_order_0_4_8 + flow_order_0_5_4 + flow_order_0_5_6
 + flow_order_0_5_9 + flow_order_0_6_7 + flow_order_0_7_6 + flow_order_0_7_8
 + flow_order_0_8_0 + flow_order_0_8_2 + flow_order_0_8_4 + flow_order_0_9_7
 <= 10
Lenght_path_between_(3,5): flow_order_3_0_3 + flow_order_3_0_6
 + flow_order_3_0_8 + flow_order_3_1_3 + flow_order_3_2_1 + flow_order_3_2_3
 + flow_order_3_2_5 + flow_order_3_2_9 + flow_order_3_3_0 + flow_order_3_3_6
 + flow_order_3_4_6 + flow_order_3_4_8 + flow_order_3_5_4 + flow_order_3_5_6
 + flow_order_3_5_9 + flow_order_3_6_7 + flow_order_3_7_6 + flow_order_3_7_8
 + flow_order_3_8_0 + flow_order_3_8_2 + flow_order_3_8_4 + flow_order_3_9_7
 <= 10
Lenght_path_between_(4,0): flow_order_1_0_3 + flow_order_1_0_6
 + flow_order_1_0_8 + flow_order_1_1_3 + flow_order_1_2_1 + flow_order_1_2_3
 + flow_order_1_2_5 + flow_order_1_2_9 + flow_order_1_3_0 + flow_order_1_3_6
 + flow_order_1_4_6 + flow_order_1_4_8 + flow_order_1_5_4 + flow_order_1_5_6
 + flow_order_1_5_9 + flow_order_1_6_7 + flow_order_1_7_6 + flow_order_1_7_8
 + flow_order_1_8_0 + flow_order_1_8_2 + flow_order_1_8_4 + flow_order_1_9_7
 <= 10
Lenght_path_between_(6,9): flow_order_2_0_3 + flow_order_2_0_6
 + flow_order_2_0_8 + flow_order_2_1_3 + flow_order_2_2_1 + flow_order_2_2_3
 + flow_order_2_2_5 + flow_order_2_2_9 + flow_order_2_3_0 + flow_order_2_3_6
 + flow_order_2_4_6 + flow_order_2_4_8 + flow_order_2_5_4 + flow_order_2_5_6
 + flow_order_2_5_9 + flow_order_2_6_7 + flow_order_2_7_6 + flow_order_2_7_8
 + flow_order_2_8_0 + flow_order_2_8_2 + flow_order_2_8_4 + flow_order_2_9_7
 <= 10
Binaries
flow_order_0_0_3
flow_order_0_0_6
flow_order_0_0_8
flow_order_0_1_3
flow_order_0_2_1
flow_order_0_2_3
flow_order_0_2_5
flow_order_0_2_9
flow_order_0_3_0
flow_order_0_3_6
flow_order_0_4_6
flow_order_0_4_8
flow_order_0_5_4
flow_order_0_5_6
flow_order_0_5_9
flow_order_0_6_7
flow_order_0_7_6
flow_order_0_7_8
flow_order_0_8_0
flow_order_0_8_2
flow_order_0_8_4
flow_order_0_9_7
flow_order_1_0_3
flow_order_1_0_6
flow_order_1_0_8
flow_order_1_1_3
flow_order_1_2_1
flow_order_1_2_3
flow_order_1_2_5
flow_order_1_2_9
flow_order_1_3_0
flow_order_1_3_6
flow_order_1_4_6
flow_order_1_4_8
flow_order_1_5_4
flow_order_1_5_6
flow_order_1_5_9
flow_order_1_6_7
flow_order_1_7_6
flow_order_1_7_8
flow_order_1_8_0
flow_order_1_8_2
flow_order_1_8_4
flow_order_1_9_7
flow_order_2_0_3
flow_order_2_0_6
flow_order_2_0_8
flow_order_2_1_3
flow_order_2_2_1
flow_order_2_2_3
flow_order_2_2_5
flow_order_2_2_9
flow_order_2_3_0
flow_order_2_3_6
flow_order_2_4_6
flow_order_2_4_8
flow_order_2_5_4
flow_order_2_5_6
flow_order_2_5_9
flow_order_2_6_7
flow_order_2_7_6
flow_order_2_7_8
flow_order_2_8_0
flow_order_2_8_2
flow_order_2_8_4
flow_order_2_9_7
flow_order_3_0_3
flow_order_3_0_6
flow_order_3_0_8
flow_order_3_1_3
flow_order_3_2_1
flow_order_3_2_3
flow_order_3_2_5
flow_order_3_2_9
flow_order_3_3_0
flow_order_3_3_6
flow_order_3_4_6
flow_order_3_4_8
flow_order_3_5_4
flow_order_3_5_6
flow_order_3_5_9
flow_order_3_6_7
flow_order_3_7_6
flow_order_3_7_8
flow_order_3_8_0
flow_order_3_8_2
flow_order_3_8_4
flow_order_3_9_7
End
