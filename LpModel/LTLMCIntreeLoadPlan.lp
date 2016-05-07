\* Multi-commodity Flow *\
Minimize
Total_Cost: 85 TrailerFlow(ATL,Ath) + 1050 TrailerFlow(ATL,CHI)
 + 610 TrailerFlow(ATL,DAL) + 70 TrailerFlow(ATL,Mac)
 + 85 TrailerFlow(Ath,ATL) + 125 TrailerFlow(Ath,Mac)
 + 1050 TrailerFlow(CHI,ATL) + 1300 TrailerFlow(CHI,DAL)
 + 610 TrailerFlow(DAL,ATL) + 1300 TrailerFlow(DAL,CHI)
 + 70 TrailerFlow(Mac,ATL) + 125 TrailerFlow(Mac,Ath)
 + 670 TrailerFlow(Mac,DAL)
Subject To
Arc_(ATL,Ath)_Trailer_Roundup: ArcFlow(ATL,Ath)_(ATL,CHI)
 + ArcFlow(ATL,Ath)_(ATL,DAL) + ArcFlow(ATL,Ath)_(Ath,CHI)
 + ArcFlow(ATL,Ath)_(Ath,DAL) + ArcFlow(ATL,Ath)_(DAL,CHI)
 + ArcFlow(ATL,Ath)_(Mac,ATL) + ArcFlow(ATL,Ath)_(Mac,CHI)
 + ArcFlow(ATL,Ath)_(Mac,DAL) - TrailerFlow(ATL,Ath) <= 0
Arc_(ATL,CHI)_Trailer_Roundup: ArcFlow(ATL,CHI)_(ATL,CHI)
 + ArcFlow(ATL,CHI)_(ATL,DAL) + ArcFlow(ATL,CHI)_(Ath,CHI)
 + ArcFlow(ATL,CHI)_(Ath,DAL) + ArcFlow(ATL,CHI)_(DAL,CHI)
 + ArcFlow(ATL,CHI)_(Mac,ATL) + ArcFlow(ATL,CHI)_(Mac,CHI)
 + ArcFlow(ATL,CHI)_(Mac,DAL) - TrailerFlow(ATL,CHI) <= 0
Arc_(ATL,DAL)_Trailer_Roundup: ArcFlow(ATL,DAL)_(ATL,CHI)
 + ArcFlow(ATL,DAL)_(ATL,DAL) + ArcFlow(ATL,DAL)_(Ath,CHI)
 + ArcFlow(ATL,DAL)_(Ath,DAL) + ArcFlow(ATL,DAL)_(DAL,CHI)
 + ArcFlow(ATL,DAL)_(Mac,ATL) + ArcFlow(ATL,DAL)_(Mac,CHI)
 + ArcFlow(ATL,DAL)_(Mac,DAL) - TrailerFlow(ATL,DAL) <= 0
Arc_(ATL,Mac)_Trailer_Roundup: ArcFlow(ATL,Mac)_(ATL,CHI)
 + ArcFlow(ATL,Mac)_(ATL,DAL) + ArcFlow(ATL,Mac)_(Ath,CHI)
 + ArcFlow(ATL,Mac)_(Ath,DAL) + ArcFlow(ATL,Mac)_(DAL,CHI)
 + ArcFlow(ATL,Mac)_(Mac,ATL) + ArcFlow(ATL,Mac)_(Mac,CHI)
 + ArcFlow(ATL,Mac)_(Mac,DAL) - TrailerFlow(ATL,Mac) <= 0
Arc_(Ath,ATL)_Trailer_Roundup: ArcFlow(Ath,ATL)_(ATL,CHI)
 + ArcFlow(Ath,ATL)_(ATL,DAL) + ArcFlow(Ath,ATL)_(Ath,CHI)
 + ArcFlow(Ath,ATL)_(Ath,DAL) + ArcFlow(Ath,ATL)_(DAL,CHI)
 + ArcFlow(Ath,ATL)_(Mac,ATL) + ArcFlow(Ath,ATL)_(Mac,CHI)
 + ArcFlow(Ath,ATL)_(Mac,DAL) - TrailerFlow(Ath,ATL) <= 0
Arc_(Ath,Mac)_Trailer_Roundup: ArcFlow(Ath,Mac)_(ATL,CHI)
 + ArcFlow(Ath,Mac)_(ATL,DAL) + ArcFlow(Ath,Mac)_(Ath,CHI)
 + ArcFlow(Ath,Mac)_(Ath,DAL) + ArcFlow(Ath,Mac)_(DAL,CHI)
 + ArcFlow(Ath,Mac)_(Mac,ATL) + ArcFlow(Ath,Mac)_(Mac,CHI)
 + ArcFlow(Ath,Mac)_(Mac,DAL) - TrailerFlow(Ath,Mac) <= 0
Arc_(CHI,ATL)_Trailer_Roundup: ArcFlow(CHI,ATL)_(ATL,CHI)
 + ArcFlow(CHI,ATL)_(ATL,DAL) + ArcFlow(CHI,ATL)_(Ath,CHI)
 + ArcFlow(CHI,ATL)_(Ath,DAL) + ArcFlow(CHI,ATL)_(DAL,CHI)
 + ArcFlow(CHI,ATL)_(Mac,ATL) + ArcFlow(CHI,ATL)_(Mac,CHI)
 + ArcFlow(CHI,ATL)_(Mac,DAL) - TrailerFlow(CHI,ATL) <= 0
Arc_(CHI,DAL)_Trailer_Roundup: ArcFlow(CHI,DAL)_(ATL,CHI)
 + ArcFlow(CHI,DAL)_(ATL,DAL) + ArcFlow(CHI,DAL)_(Ath,CHI)
 + ArcFlow(CHI,DAL)_(Ath,DAL) + ArcFlow(CHI,DAL)_(DAL,CHI)
 + ArcFlow(CHI,DAL)_(Mac,ATL) + ArcFlow(CHI,DAL)_(Mac,CHI)
 + ArcFlow(CHI,DAL)_(Mac,DAL) - TrailerFlow(CHI,DAL) <= 0
Arc_(DAL,ATL)_Trailer_Roundup: ArcFlow(DAL,ATL)_(ATL,CHI)
 + ArcFlow(DAL,ATL)_(ATL,DAL) + ArcFlow(DAL,ATL)_(Ath,CHI)
 + ArcFlow(DAL,ATL)_(Ath,DAL) + ArcFlow(DAL,ATL)_(DAL,CHI)
 + ArcFlow(DAL,ATL)_(Mac,ATL) + ArcFlow(DAL,ATL)_(Mac,CHI)
 + ArcFlow(DAL,ATL)_(Mac,DAL) - TrailerFlow(DAL,ATL) <= 0
Arc_(DAL,CHI)_Trailer_Roundup: ArcFlow(DAL,CHI)_(ATL,CHI)
 + ArcFlow(DAL,CHI)_(ATL,DAL) + ArcFlow(DAL,CHI)_(Ath,CHI)
 + ArcFlow(DAL,CHI)_(Ath,DAL) + ArcFlow(DAL,CHI)_(DAL,CHI)
 + ArcFlow(DAL,CHI)_(Mac,ATL) + ArcFlow(DAL,CHI)_(Mac,CHI)
 + ArcFlow(DAL,CHI)_(Mac,DAL) - TrailerFlow(DAL,CHI) <= 0
Arc_(Mac,ATL)_Trailer_Roundup: ArcFlow(Mac,ATL)_(ATL,CHI)
 + ArcFlow(Mac,ATL)_(ATL,DAL) + ArcFlow(Mac,ATL)_(Ath,CHI)
 + ArcFlow(Mac,ATL)_(Ath,DAL) + ArcFlow(Mac,ATL)_(DAL,CHI)
 + ArcFlow(Mac,ATL)_(Mac,ATL) + ArcFlow(Mac,ATL)_(Mac,CHI)
 + ArcFlow(Mac,ATL)_(Mac,DAL) - TrailerFlow(Mac,ATL) <= 0
Arc_(Mac,Ath)_Trailer_Roundup: ArcFlow(Mac,Ath)_(ATL,CHI)
 + ArcFlow(Mac,Ath)_(ATL,DAL) + ArcFlow(Mac,Ath)_(Ath,CHI)
 + ArcFlow(Mac,Ath)_(Ath,DAL) + ArcFlow(Mac,Ath)_(DAL,CHI)
 + ArcFlow(Mac,Ath)_(Mac,ATL) + ArcFlow(Mac,Ath)_(Mac,CHI)
 + ArcFlow(Mac,Ath)_(Mac,DAL) - TrailerFlow(Mac,Ath) <= 0
Arc_(Mac,DAL)_Trailer_Roundup: ArcFlow(Mac,DAL)_(ATL,CHI)
 + ArcFlow(Mac,DAL)_(ATL,DAL) + ArcFlow(Mac,DAL)_(Ath,CHI)
 + ArcFlow(Mac,DAL)_(Ath,DAL) + ArcFlow(Mac,DAL)_(DAL,CHI)
 + ArcFlow(Mac,DAL)_(Mac,ATL) + ArcFlow(Mac,DAL)_(Mac,CHI)
 + ArcFlow(Mac,DAL)_(Mac,DAL) - TrailerFlow(Mac,DAL) <= 0
Intree_Arc_Selection_Node_ATL_Destination_CHI: Intree(ATL,Ath)_CHI
 + Intree(ATL,CHI)_CHI + Intree(ATL,DAL)_CHI + Intree(ATL,Mac)_CHI <= 1
Intree_Arc_Selection_Node_ATL_Destination_DAL: Intree(ATL,Ath)_DAL
 + Intree(ATL,CHI)_DAL + Intree(ATL,DAL)_DAL + Intree(ATL,Mac)_DAL <= 1
Intree_Arc_Selection_Node_Ath_Destination_ATL: Intree(Ath,ATL)_ATL
 + Intree(Ath,Mac)_ATL <= 1
Intree_Arc_Selection_Node_Ath_Destination_CHI: Intree(Ath,ATL)_CHI
 + Intree(Ath,Mac)_CHI <= 1
Intree_Arc_Selection_Node_Ath_Destination_DAL: Intree(Ath,ATL)_DAL
 + Intree(Ath,Mac)_DAL <= 1
Intree_Arc_Selection_Node_CHI_Destination_ATL: Intree(CHI,ATL)_ATL
 + Intree(CHI,DAL)_ATL <= 1
Intree_Arc_Selection_Node_CHI_Destination_DAL: Intree(CHI,ATL)_DAL
 + Intree(CHI,DAL)_DAL <= 1
Intree_Arc_Selection_Node_DAL_Destination_ATL: Intree(DAL,ATL)_ATL
 + Intree(DAL,CHI)_ATL <= 1
Intree_Arc_Selection_Node_DAL_Destination_CHI: Intree(DAL,ATL)_CHI
 + Intree(DAL,CHI)_CHI <= 1
Intree_Arc_Selection_Node_Mac_Destination_ATL: Intree(Mac,ATL)_ATL
 + Intree(Mac,Ath)_ATL + Intree(Mac,DAL)_ATL <= 1
Intree_Arc_Selection_Node_Mac_Destination_CHI: Intree(Mac,ATL)_CHI
 + Intree(Mac,Ath)_CHI + Intree(Mac,DAL)_CHI <= 1
Intree_Arc_Selection_Node_Mac_Destination_DAL: Intree(Mac,ATL)_DAL
 + Intree(Mac,Ath)_DAL + Intree(Mac,DAL)_DAL <= 1
Node_ATL_Commodity_(ATL,CHI)_Flow_Balance: ArcFlow(ATL,Ath)_(ATL,CHI)
 + ArcFlow(ATL,CHI)_(ATL,CHI) + ArcFlow(ATL,DAL)_(ATL,CHI)
 + ArcFlow(ATL,Mac)_(ATL,CHI) - ArcFlow(Ath,ATL)_(ATL,CHI)
 - ArcFlow(CHI,ATL)_(ATL,CHI) - ArcFlow(DAL,ATL)_(ATL,CHI)
 - ArcFlow(Mac,ATL)_(ATL,CHI) = 1.5
Node_ATL_Commodity_(ATL,DAL)_Flow_Balance: ArcFlow(ATL,Ath)_(ATL,DAL)
 + ArcFlow(ATL,CHI)_(ATL,DAL) + ArcFlow(ATL,DAL)_(ATL,DAL)
 + ArcFlow(ATL,Mac)_(ATL,DAL) - ArcFlow(Ath,ATL)_(ATL,DAL)
 - ArcFlow(CHI,ATL)_(ATL,DAL) - ArcFlow(DAL,ATL)_(ATL,DAL)
 - ArcFlow(Mac,ATL)_(ATL,DAL) = 2.2
Node_ATL_Commodity_(Ath,CHI)_Flow_Balance: ArcFlow(ATL,Ath)_(Ath,CHI)
 + ArcFlow(ATL,CHI)_(Ath,CHI) + ArcFlow(ATL,DAL)_(Ath,CHI)
 + ArcFlow(ATL,Mac)_(Ath,CHI) - ArcFlow(Ath,ATL)_(Ath,CHI)
 - ArcFlow(CHI,ATL)_(Ath,CHI) - ArcFlow(DAL,ATL)_(Ath,CHI)
 - ArcFlow(Mac,ATL)_(Ath,CHI) = 0
Node_ATL_Commodity_(Ath,DAL)_Flow_Balance: ArcFlow(ATL,Ath)_(Ath,DAL)
 + ArcFlow(ATL,CHI)_(Ath,DAL) + ArcFlow(ATL,DAL)_(Ath,DAL)
 + ArcFlow(ATL,Mac)_(Ath,DAL) - ArcFlow(Ath,ATL)_(Ath,DAL)
 - ArcFlow(CHI,ATL)_(Ath,DAL) - ArcFlow(DAL,ATL)_(Ath,DAL)
 - ArcFlow(Mac,ATL)_(Ath,DAL) = 0
Node_ATL_Commodity_(DAL,CHI)_Flow_Balance: ArcFlow(ATL,Ath)_(DAL,CHI)
 + ArcFlow(ATL,CHI)_(DAL,CHI) + ArcFlow(ATL,DAL)_(DAL,CHI)
 + ArcFlow(ATL,Mac)_(DAL,CHI) - ArcFlow(Ath,ATL)_(DAL,CHI)
 - ArcFlow(CHI,ATL)_(DAL,CHI) - ArcFlow(DAL,ATL)_(DAL,CHI)
 - ArcFlow(Mac,ATL)_(DAL,CHI) = 0
Node_ATL_Commodity_(Mac,ATL)_Flow_Balance: ArcFlow(ATL,Ath)_(Mac,ATL)
 + ArcFlow(ATL,CHI)_(Mac,ATL) + ArcFlow(ATL,DAL)_(Mac,ATL)
 + ArcFlow(ATL,Mac)_(Mac,ATL) - ArcFlow(Ath,ATL)_(Mac,ATL)
 - ArcFlow(CHI,ATL)_(Mac,ATL) - ArcFlow(DAL,ATL)_(Mac,ATL)
 - ArcFlow(Mac,ATL)_(Mac,ATL) = -0.7
Node_ATL_Commodity_(Mac,CHI)_Flow_Balance: ArcFlow(ATL,Ath)_(Mac,CHI)
 + ArcFlow(ATL,CHI)_(Mac,CHI) + ArcFlow(ATL,DAL)_(Mac,CHI)
 + ArcFlow(ATL,Mac)_(Mac,CHI) - ArcFlow(Ath,ATL)_(Mac,CHI)
 - ArcFlow(CHI,ATL)_(Mac,CHI) - ArcFlow(DAL,ATL)_(Mac,CHI)
 - ArcFlow(Mac,ATL)_(Mac,CHI) = 0
Node_ATL_Commodity_(Mac,DAL)_Flow_Balance: ArcFlow(ATL,Ath)_(Mac,DAL)
 + ArcFlow(ATL,CHI)_(Mac,DAL) + ArcFlow(ATL,DAL)_(Mac,DAL)
 + ArcFlow(ATL,Mac)_(Mac,DAL) - ArcFlow(Ath,ATL)_(Mac,DAL)
 - ArcFlow(CHI,ATL)_(Mac,DAL) - ArcFlow(DAL,ATL)_(Mac,DAL)
 - ArcFlow(Mac,ATL)_(Mac,DAL) = 0
Node_Ath_Commodity_(ATL,CHI)_Flow_Balance: - ArcFlow(ATL,Ath)_(ATL,CHI)
 + ArcFlow(Ath,ATL)_(ATL,CHI) + ArcFlow(Ath,Mac)_(ATL,CHI)
 - ArcFlow(Mac,Ath)_(ATL,CHI) = 0
Node_Ath_Commodity_(ATL,DAL)_Flow_Balance: - ArcFlow(ATL,Ath)_(ATL,DAL)
 + ArcFlow(Ath,ATL)_(ATL,DAL) + ArcFlow(Ath,Mac)_(ATL,DAL)
 - ArcFlow(Mac,Ath)_(ATL,DAL) = 0
Node_Ath_Commodity_(Ath,CHI)_Flow_Balance: - ArcFlow(ATL,Ath)_(Ath,CHI)
 + ArcFlow(Ath,ATL)_(Ath,CHI) + ArcFlow(Ath,Mac)_(Ath,CHI)
 - ArcFlow(Mac,Ath)_(Ath,CHI) = 0.3
Node_Ath_Commodity_(Ath,DAL)_Flow_Balance: - ArcFlow(ATL,Ath)_(Ath,DAL)
 + ArcFlow(Ath,ATL)_(Ath,DAL) + ArcFlow(Ath,Mac)_(Ath,DAL)
 - ArcFlow(Mac,Ath)_(Ath,DAL) = 0.4
Node_Ath_Commodity_(DAL,CHI)_Flow_Balance: - ArcFlow(ATL,Ath)_(DAL,CHI)
 + ArcFlow(Ath,ATL)_(DAL,CHI) + ArcFlow(Ath,Mac)_(DAL,CHI)
 - ArcFlow(Mac,Ath)_(DAL,CHI) = 0
Node_Ath_Commodity_(Mac,ATL)_Flow_Balance: - ArcFlow(ATL,Ath)_(Mac,ATL)
 + ArcFlow(Ath,ATL)_(Mac,ATL) + ArcFlow(Ath,Mac)_(Mac,ATL)
 - ArcFlow(Mac,Ath)_(Mac,ATL) = 0
Node_Ath_Commodity_(Mac,CHI)_Flow_Balance: - ArcFlow(ATL,Ath)_(Mac,CHI)
 + ArcFlow(Ath,ATL)_(Mac,CHI) + ArcFlow(Ath,Mac)_(Mac,CHI)
 - ArcFlow(Mac,Ath)_(Mac,CHI) = 0
Node_Ath_Commodity_(Mac,DAL)_Flow_Balance: - ArcFlow(ATL,Ath)_(Mac,DAL)
 + ArcFlow(Ath,ATL)_(Mac,DAL) + ArcFlow(Ath,Mac)_(Mac,DAL)
 - ArcFlow(Mac,Ath)_(Mac,DAL) = 0
Node_CHI_Commodity_(ATL,CHI)_Flow_Balance: - ArcFlow(ATL,CHI)_(ATL,CHI)
 + ArcFlow(CHI,ATL)_(ATL,CHI) + ArcFlow(CHI,DAL)_(ATL,CHI)
 - ArcFlow(DAL,CHI)_(ATL,CHI) = -1.5
Node_CHI_Commodity_(ATL,DAL)_Flow_Balance: - ArcFlow(ATL,CHI)_(ATL,DAL)
 + ArcFlow(CHI,ATL)_(ATL,DAL) + ArcFlow(CHI,DAL)_(ATL,DAL)
 - ArcFlow(DAL,CHI)_(ATL,DAL) = 0
Node_CHI_Commodity_(Ath,CHI)_Flow_Balance: - ArcFlow(ATL,CHI)_(Ath,CHI)
 + ArcFlow(CHI,ATL)_(Ath,CHI) + ArcFlow(CHI,DAL)_(Ath,CHI)
 - ArcFlow(DAL,CHI)_(Ath,CHI) = -0.3
Node_CHI_Commodity_(Ath,DAL)_Flow_Balance: - ArcFlow(ATL,CHI)_(Ath,DAL)
 + ArcFlow(CHI,ATL)_(Ath,DAL) + ArcFlow(CHI,DAL)_(Ath,DAL)
 - ArcFlow(DAL,CHI)_(Ath,DAL) = 0
Node_CHI_Commodity_(DAL,CHI)_Flow_Balance: - ArcFlow(ATL,CHI)_(DAL,CHI)
 + ArcFlow(CHI,ATL)_(DAL,CHI) + ArcFlow(CHI,DAL)_(DAL,CHI)
 - ArcFlow(DAL,CHI)_(DAL,CHI) = -1.7
Node_CHI_Commodity_(Mac,ATL)_Flow_Balance: - ArcFlow(ATL,CHI)_(Mac,ATL)
 + ArcFlow(CHI,ATL)_(Mac,ATL) + ArcFlow(CHI,DAL)_(Mac,ATL)
 - ArcFlow(DAL,CHI)_(Mac,ATL) = 0
Node_CHI_Commodity_(Mac,CHI)_Flow_Balance: - ArcFlow(ATL,CHI)_(Mac,CHI)
 + ArcFlow(CHI,ATL)_(Mac,CHI) + ArcFlow(CHI,DAL)_(Mac,CHI)
 - ArcFlow(DAL,CHI)_(Mac,CHI) = -0.6
Node_CHI_Commodity_(Mac,DAL)_Flow_Balance: - ArcFlow(ATL,CHI)_(Mac,DAL)
 + ArcFlow(CHI,ATL)_(Mac,DAL) + ArcFlow(CHI,DAL)_(Mac,DAL)
 - ArcFlow(DAL,CHI)_(Mac,DAL) = 0
Node_DAL_Commodity_(ATL,CHI)_Flow_Balance: - ArcFlow(ATL,DAL)_(ATL,CHI)
 - ArcFlow(CHI,DAL)_(ATL,CHI) + ArcFlow(DAL,ATL)_(ATL,CHI)
 + ArcFlow(DAL,CHI)_(ATL,CHI) - ArcFlow(Mac,DAL)_(ATL,CHI) = 0
Node_DAL_Commodity_(ATL,DAL)_Flow_Balance: - ArcFlow(ATL,DAL)_(ATL,DAL)
 - ArcFlow(CHI,DAL)_(ATL,DAL) + ArcFlow(DAL,ATL)_(ATL,DAL)
 + ArcFlow(DAL,CHI)_(ATL,DAL) - ArcFlow(Mac,DAL)_(ATL,DAL) = -2.2
Node_DAL_Commodity_(Ath,CHI)_Flow_Balance: - ArcFlow(ATL,DAL)_(Ath,CHI)
 - ArcFlow(CHI,DAL)_(Ath,CHI) + ArcFlow(DAL,ATL)_(Ath,CHI)
 + ArcFlow(DAL,CHI)_(Ath,CHI) - ArcFlow(Mac,DAL)_(Ath,CHI) = 0
Node_DAL_Commodity_(Ath,DAL)_Flow_Balance: - ArcFlow(ATL,DAL)_(Ath,DAL)
 - ArcFlow(CHI,DAL)_(Ath,DAL) + ArcFlow(DAL,ATL)_(Ath,DAL)
 + ArcFlow(DAL,CHI)_(Ath,DAL) - ArcFlow(Mac,DAL)_(Ath,DAL) = -0.4
Node_DAL_Commodity_(DAL,CHI)_Flow_Balance: - ArcFlow(ATL,DAL)_(DAL,CHI)
 - ArcFlow(CHI,DAL)_(DAL,CHI) + ArcFlow(DAL,ATL)_(DAL,CHI)
 + ArcFlow(DAL,CHI)_(DAL,CHI) - ArcFlow(Mac,DAL)_(DAL,CHI) = 1.7
Node_DAL_Commodity_(Mac,ATL)_Flow_Balance: - ArcFlow(ATL,DAL)_(Mac,ATL)
 - ArcFlow(CHI,DAL)_(Mac,ATL) + ArcFlow(DAL,ATL)_(Mac,ATL)
 + ArcFlow(DAL,CHI)_(Mac,ATL) - ArcFlow(Mac,DAL)_(Mac,ATL) = 0
Node_DAL_Commodity_(Mac,CHI)_Flow_Balance: - ArcFlow(ATL,DAL)_(Mac,CHI)
 - ArcFlow(CHI,DAL)_(Mac,CHI) + ArcFlow(DAL,ATL)_(Mac,CHI)
 + ArcFlow(DAL,CHI)_(Mac,CHI) - ArcFlow(Mac,DAL)_(Mac,CHI) = 0
Node_DAL_Commodity_(Mac,DAL)_Flow_Balance: - ArcFlow(ATL,DAL)_(Mac,DAL)
 - ArcFlow(CHI,DAL)_(Mac,DAL) + ArcFlow(DAL,ATL)_(Mac,DAL)
 + ArcFlow(DAL,CHI)_(Mac,DAL) - ArcFlow(Mac,DAL)_(Mac,DAL) = -0.5
Node_Mac_Commodity_(ATL,CHI)_Flow_Balance: - ArcFlow(ATL,Mac)_(ATL,CHI)
 - ArcFlow(Ath,Mac)_(ATL,CHI) + ArcFlow(Mac,ATL)_(ATL,CHI)
 + ArcFlow(Mac,Ath)_(ATL,CHI) + ArcFlow(Mac,DAL)_(ATL,CHI) = 0
Node_Mac_Commodity_(ATL,DAL)_Flow_Balance: - ArcFlow(ATL,Mac)_(ATL,DAL)
 - ArcFlow(Ath,Mac)_(ATL,DAL) + ArcFlow(Mac,ATL)_(ATL,DAL)
 + ArcFlow(Mac,Ath)_(ATL,DAL) + ArcFlow(Mac,DAL)_(ATL,DAL) = 0
Node_Mac_Commodity_(Ath,CHI)_Flow_Balance: - ArcFlow(ATL,Mac)_(Ath,CHI)
 - ArcFlow(Ath,Mac)_(Ath,CHI) + ArcFlow(Mac,ATL)_(Ath,CHI)
 + ArcFlow(Mac,Ath)_(Ath,CHI) + ArcFlow(Mac,DAL)_(Ath,CHI) = 0
Node_Mac_Commodity_(Ath,DAL)_Flow_Balance: - ArcFlow(ATL,Mac)_(Ath,DAL)
 - ArcFlow(Ath,Mac)_(Ath,DAL) + ArcFlow(Mac,ATL)_(Ath,DAL)
 + ArcFlow(Mac,Ath)_(Ath,DAL) + ArcFlow(Mac,DAL)_(Ath,DAL) = 0
Node_Mac_Commodity_(DAL,CHI)_Flow_Balance: - ArcFlow(ATL,Mac)_(DAL,CHI)
 - ArcFlow(Ath,Mac)_(DAL,CHI) + ArcFlow(Mac,ATL)_(DAL,CHI)
 + ArcFlow(Mac,Ath)_(DAL,CHI) + ArcFlow(Mac,DAL)_(DAL,CHI) = 0
Node_Mac_Commodity_(Mac,ATL)_Flow_Balance: - ArcFlow(ATL,Mac)_(Mac,ATL)
 - ArcFlow(Ath,Mac)_(Mac,ATL) + ArcFlow(Mac,ATL)_(Mac,ATL)
 + ArcFlow(Mac,Ath)_(Mac,ATL) + ArcFlow(Mac,DAL)_(Mac,ATL) = 0.7
Node_Mac_Commodity_(Mac,CHI)_Flow_Balance: - ArcFlow(ATL,Mac)_(Mac,CHI)
 - ArcFlow(Ath,Mac)_(Mac,CHI) + ArcFlow(Mac,ATL)_(Mac,CHI)
 + ArcFlow(Mac,Ath)_(Mac,CHI) + ArcFlow(Mac,DAL)_(Mac,CHI) = 0.6
Node_Mac_Commodity_(Mac,DAL)_Flow_Balance: - ArcFlow(ATL,Mac)_(Mac,DAL)
 - ArcFlow(Ath,Mac)_(Mac,DAL) + ArcFlow(Mac,ATL)_(Mac,DAL)
 + ArcFlow(Mac,Ath)_(Mac,DAL) + ArcFlow(Mac,DAL)_(Mac,DAL) = 0.5
_Consistency_Arc_(ATL,Ath)_Commodity(ATL,CHI)_: ArcFlow(ATL,Ath)_(ATL,CHI)
 - 7.9 Intree(ATL,Ath)_CHI <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(ATL,DAL)_: ArcFlow(ATL,Ath)_(ATL,DAL)
 - 7.9 Intree(ATL,Ath)_DAL <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(Ath,CHI)_: ArcFlow(ATL,Ath)_(Ath,CHI)
 - 7.9 Intree(ATL,Ath)_CHI <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(Ath,DAL)_: ArcFlow(ATL,Ath)_(Ath,DAL)
 - 7.9 Intree(ATL,Ath)_DAL <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(DAL,CHI)_: ArcFlow(ATL,Ath)_(DAL,CHI)
 - 7.9 Intree(ATL,Ath)_CHI <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(Mac,ATL)_: ArcFlow(ATL,Ath)_(Mac,ATL)
 - 7.9 Intree(ATL,Ath)_ATL <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(Mac,CHI)_: ArcFlow(ATL,Ath)_(Mac,CHI)
 - 7.9 Intree(ATL,Ath)_CHI <= 0
_Consistency_Arc_(ATL,Ath)_Commodity(Mac,DAL)_: ArcFlow(ATL,Ath)_(Mac,DAL)
 - 7.9 Intree(ATL,Ath)_DAL <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(ATL,CHI)_: ArcFlow(ATL,CHI)_(ATL,CHI)
 - 7.9 Intree(ATL,CHI)_CHI <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(ATL,DAL)_: ArcFlow(ATL,CHI)_(ATL,DAL)
 - 7.9 Intree(ATL,CHI)_DAL <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(Ath,CHI)_: ArcFlow(ATL,CHI)_(Ath,CHI)
 - 7.9 Intree(ATL,CHI)_CHI <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(Ath,DAL)_: ArcFlow(ATL,CHI)_(Ath,DAL)
 - 7.9 Intree(ATL,CHI)_DAL <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(DAL,CHI)_: ArcFlow(ATL,CHI)_(DAL,CHI)
 - 7.9 Intree(ATL,CHI)_CHI <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(Mac,ATL)_: ArcFlow(ATL,CHI)_(Mac,ATL)
 - 7.9 Intree(ATL,CHI)_ATL <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(Mac,CHI)_: ArcFlow(ATL,CHI)_(Mac,CHI)
 - 7.9 Intree(ATL,CHI)_CHI <= 0
_Consistency_Arc_(ATL,CHI)_Commodity(Mac,DAL)_: ArcFlow(ATL,CHI)_(Mac,DAL)
 - 7.9 Intree(ATL,CHI)_DAL <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(ATL,CHI)_: ArcFlow(ATL,DAL)_(ATL,CHI)
 - 7.9 Intree(ATL,DAL)_CHI <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(ATL,DAL)_: ArcFlow(ATL,DAL)_(ATL,DAL)
 - 7.9 Intree(ATL,DAL)_DAL <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(Ath,CHI)_: ArcFlow(ATL,DAL)_(Ath,CHI)
 - 7.9 Intree(ATL,DAL)_CHI <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(Ath,DAL)_: ArcFlow(ATL,DAL)_(Ath,DAL)
 - 7.9 Intree(ATL,DAL)_DAL <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(DAL,CHI)_: ArcFlow(ATL,DAL)_(DAL,CHI)
 - 7.9 Intree(ATL,DAL)_CHI <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(Mac,ATL)_: ArcFlow(ATL,DAL)_(Mac,ATL)
 - 7.9 Intree(ATL,DAL)_ATL <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(Mac,CHI)_: ArcFlow(ATL,DAL)_(Mac,CHI)
 - 7.9 Intree(ATL,DAL)_CHI <= 0
_Consistency_Arc_(ATL,DAL)_Commodity(Mac,DAL)_: ArcFlow(ATL,DAL)_(Mac,DAL)
 - 7.9 Intree(ATL,DAL)_DAL <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(ATL,CHI)_: ArcFlow(ATL,Mac)_(ATL,CHI)
 - 7.9 Intree(ATL,Mac)_CHI <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(ATL,DAL)_: ArcFlow(ATL,Mac)_(ATL,DAL)
 - 7.9 Intree(ATL,Mac)_DAL <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(Ath,CHI)_: ArcFlow(ATL,Mac)_(Ath,CHI)
 - 7.9 Intree(ATL,Mac)_CHI <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(Ath,DAL)_: ArcFlow(ATL,Mac)_(Ath,DAL)
 - 7.9 Intree(ATL,Mac)_DAL <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(DAL,CHI)_: ArcFlow(ATL,Mac)_(DAL,CHI)
 - 7.9 Intree(ATL,Mac)_CHI <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(Mac,ATL)_: ArcFlow(ATL,Mac)_(Mac,ATL)
 - 7.9 Intree(ATL,Mac)_ATL <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(Mac,CHI)_: ArcFlow(ATL,Mac)_(Mac,CHI)
 - 7.9 Intree(ATL,Mac)_CHI <= 0
_Consistency_Arc_(ATL,Mac)_Commodity(Mac,DAL)_: ArcFlow(ATL,Mac)_(Mac,DAL)
 - 7.9 Intree(ATL,Mac)_DAL <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(ATL,CHI)_: ArcFlow(Ath,ATL)_(ATL,CHI)
 - 7.9 Intree(Ath,ATL)_CHI <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(ATL,DAL)_: ArcFlow(Ath,ATL)_(ATL,DAL)
 - 7.9 Intree(Ath,ATL)_DAL <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(Ath,CHI)_: ArcFlow(Ath,ATL)_(Ath,CHI)
 - 7.9 Intree(Ath,ATL)_CHI <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(Ath,DAL)_: ArcFlow(Ath,ATL)_(Ath,DAL)
 - 7.9 Intree(Ath,ATL)_DAL <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(DAL,CHI)_: ArcFlow(Ath,ATL)_(DAL,CHI)
 - 7.9 Intree(Ath,ATL)_CHI <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(Mac,ATL)_: ArcFlow(Ath,ATL)_(Mac,ATL)
 - 7.9 Intree(Ath,ATL)_ATL <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(Mac,CHI)_: ArcFlow(Ath,ATL)_(Mac,CHI)
 - 7.9 Intree(Ath,ATL)_CHI <= 0
_Consistency_Arc_(Ath,ATL)_Commodity(Mac,DAL)_: ArcFlow(Ath,ATL)_(Mac,DAL)
 - 7.9 Intree(Ath,ATL)_DAL <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(ATL,CHI)_: ArcFlow(Ath,Mac)_(ATL,CHI)
 - 7.9 Intree(Ath,Mac)_CHI <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(ATL,DAL)_: ArcFlow(Ath,Mac)_(ATL,DAL)
 - 7.9 Intree(Ath,Mac)_DAL <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(Ath,CHI)_: ArcFlow(Ath,Mac)_(Ath,CHI)
 - 7.9 Intree(Ath,Mac)_CHI <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(Ath,DAL)_: ArcFlow(Ath,Mac)_(Ath,DAL)
 - 7.9 Intree(Ath,Mac)_DAL <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(DAL,CHI)_: ArcFlow(Ath,Mac)_(DAL,CHI)
 - 7.9 Intree(Ath,Mac)_CHI <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(Mac,ATL)_: ArcFlow(Ath,Mac)_(Mac,ATL)
 - 7.9 Intree(Ath,Mac)_ATL <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(Mac,CHI)_: ArcFlow(Ath,Mac)_(Mac,CHI)
 - 7.9 Intree(Ath,Mac)_CHI <= 0
_Consistency_Arc_(Ath,Mac)_Commodity(Mac,DAL)_: ArcFlow(Ath,Mac)_(Mac,DAL)
 - 7.9 Intree(Ath,Mac)_DAL <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(ATL,CHI)_: ArcFlow(CHI,ATL)_(ATL,CHI)
 - 7.9 Intree(CHI,ATL)_CHI <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(ATL,DAL)_: ArcFlow(CHI,ATL)_(ATL,DAL)
 - 7.9 Intree(CHI,ATL)_DAL <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(Ath,CHI)_: ArcFlow(CHI,ATL)_(Ath,CHI)
 - 7.9 Intree(CHI,ATL)_CHI <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(Ath,DAL)_: ArcFlow(CHI,ATL)_(Ath,DAL)
 - 7.9 Intree(CHI,ATL)_DAL <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(DAL,CHI)_: ArcFlow(CHI,ATL)_(DAL,CHI)
 - 7.9 Intree(CHI,ATL)_CHI <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(Mac,ATL)_: ArcFlow(CHI,ATL)_(Mac,ATL)
 - 7.9 Intree(CHI,ATL)_ATL <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(Mac,CHI)_: ArcFlow(CHI,ATL)_(Mac,CHI)
 - 7.9 Intree(CHI,ATL)_CHI <= 0
_Consistency_Arc_(CHI,ATL)_Commodity(Mac,DAL)_: ArcFlow(CHI,ATL)_(Mac,DAL)
 - 7.9 Intree(CHI,ATL)_DAL <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(ATL,CHI)_: ArcFlow(CHI,DAL)_(ATL,CHI)
 - 7.9 Intree(CHI,DAL)_CHI <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(ATL,DAL)_: ArcFlow(CHI,DAL)_(ATL,DAL)
 - 7.9 Intree(CHI,DAL)_DAL <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(Ath,CHI)_: ArcFlow(CHI,DAL)_(Ath,CHI)
 - 7.9 Intree(CHI,DAL)_CHI <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(Ath,DAL)_: ArcFlow(CHI,DAL)_(Ath,DAL)
 - 7.9 Intree(CHI,DAL)_DAL <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(DAL,CHI)_: ArcFlow(CHI,DAL)_(DAL,CHI)
 - 7.9 Intree(CHI,DAL)_CHI <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(Mac,ATL)_: ArcFlow(CHI,DAL)_(Mac,ATL)
 - 7.9 Intree(CHI,DAL)_ATL <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(Mac,CHI)_: ArcFlow(CHI,DAL)_(Mac,CHI)
 - 7.9 Intree(CHI,DAL)_CHI <= 0
_Consistency_Arc_(CHI,DAL)_Commodity(Mac,DAL)_: ArcFlow(CHI,DAL)_(Mac,DAL)
 - 7.9 Intree(CHI,DAL)_DAL <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(ATL,CHI)_: ArcFlow(DAL,ATL)_(ATL,CHI)
 - 7.9 Intree(DAL,ATL)_CHI <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(ATL,DAL)_: ArcFlow(DAL,ATL)_(ATL,DAL)
 - 7.9 Intree(DAL,ATL)_DAL <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(Ath,CHI)_: ArcFlow(DAL,ATL)_(Ath,CHI)
 - 7.9 Intree(DAL,ATL)_CHI <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(Ath,DAL)_: ArcFlow(DAL,ATL)_(Ath,DAL)
 - 7.9 Intree(DAL,ATL)_DAL <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(DAL,CHI)_: ArcFlow(DAL,ATL)_(DAL,CHI)
 - 7.9 Intree(DAL,ATL)_CHI <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(Mac,ATL)_: ArcFlow(DAL,ATL)_(Mac,ATL)
 - 7.9 Intree(DAL,ATL)_ATL <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(Mac,CHI)_: ArcFlow(DAL,ATL)_(Mac,CHI)
 - 7.9 Intree(DAL,ATL)_CHI <= 0
_Consistency_Arc_(DAL,ATL)_Commodity(Mac,DAL)_: ArcFlow(DAL,ATL)_(Mac,DAL)
 - 7.9 Intree(DAL,ATL)_DAL <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(ATL,CHI)_: ArcFlow(DAL,CHI)_(ATL,CHI)
 - 7.9 Intree(DAL,CHI)_CHI <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(ATL,DAL)_: ArcFlow(DAL,CHI)_(ATL,DAL)
 - 7.9 Intree(DAL,CHI)_DAL <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(Ath,CHI)_: ArcFlow(DAL,CHI)_(Ath,CHI)
 - 7.9 Intree(DAL,CHI)_CHI <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(Ath,DAL)_: ArcFlow(DAL,CHI)_(Ath,DAL)
 - 7.9 Intree(DAL,CHI)_DAL <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(DAL,CHI)_: ArcFlow(DAL,CHI)_(DAL,CHI)
 - 7.9 Intree(DAL,CHI)_CHI <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(Mac,ATL)_: ArcFlow(DAL,CHI)_(Mac,ATL)
 - 7.9 Intree(DAL,CHI)_ATL <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(Mac,CHI)_: ArcFlow(DAL,CHI)_(Mac,CHI)
 - 7.9 Intree(DAL,CHI)_CHI <= 0
_Consistency_Arc_(DAL,CHI)_Commodity(Mac,DAL)_: ArcFlow(DAL,CHI)_(Mac,DAL)
 - 7.9 Intree(DAL,CHI)_DAL <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(ATL,CHI)_: ArcFlow(Mac,ATL)_(ATL,CHI)
 - 7.9 Intree(Mac,ATL)_CHI <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(ATL,DAL)_: ArcFlow(Mac,ATL)_(ATL,DAL)
 - 7.9 Intree(Mac,ATL)_DAL <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(Ath,CHI)_: ArcFlow(Mac,ATL)_(Ath,CHI)
 - 7.9 Intree(Mac,ATL)_CHI <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(Ath,DAL)_: ArcFlow(Mac,ATL)_(Ath,DAL)
 - 7.9 Intree(Mac,ATL)_DAL <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(DAL,CHI)_: ArcFlow(Mac,ATL)_(DAL,CHI)
 - 7.9 Intree(Mac,ATL)_CHI <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(Mac,ATL)_: ArcFlow(Mac,ATL)_(Mac,ATL)
 - 7.9 Intree(Mac,ATL)_ATL <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(Mac,CHI)_: ArcFlow(Mac,ATL)_(Mac,CHI)
 - 7.9 Intree(Mac,ATL)_CHI <= 0
_Consistency_Arc_(Mac,ATL)_Commodity(Mac,DAL)_: ArcFlow(Mac,ATL)_(Mac,DAL)
 - 7.9 Intree(Mac,ATL)_DAL <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(ATL,CHI)_: ArcFlow(Mac,Ath)_(ATL,CHI)
 - 7.9 Intree(Mac,Ath)_CHI <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(ATL,DAL)_: ArcFlow(Mac,Ath)_(ATL,DAL)
 - 7.9 Intree(Mac,Ath)_DAL <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(Ath,CHI)_: ArcFlow(Mac,Ath)_(Ath,CHI)
 - 7.9 Intree(Mac,Ath)_CHI <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(Ath,DAL)_: ArcFlow(Mac,Ath)_(Ath,DAL)
 - 7.9 Intree(Mac,Ath)_DAL <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(DAL,CHI)_: ArcFlow(Mac,Ath)_(DAL,CHI)
 - 7.9 Intree(Mac,Ath)_CHI <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(Mac,ATL)_: ArcFlow(Mac,Ath)_(Mac,ATL)
 - 7.9 Intree(Mac,Ath)_ATL <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(Mac,CHI)_: ArcFlow(Mac,Ath)_(Mac,CHI)
 - 7.9 Intree(Mac,Ath)_CHI <= 0
_Consistency_Arc_(Mac,Ath)_Commodity(Mac,DAL)_: ArcFlow(Mac,Ath)_(Mac,DAL)
 - 7.9 Intree(Mac,Ath)_DAL <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(ATL,CHI)_: ArcFlow(Mac,DAL)_(ATL,CHI)
 - 7.9 Intree(Mac,DAL)_CHI <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(ATL,DAL)_: ArcFlow(Mac,DAL)_(ATL,DAL)
 - 7.9 Intree(Mac,DAL)_DAL <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(Ath,CHI)_: ArcFlow(Mac,DAL)_(Ath,CHI)
 - 7.9 Intree(Mac,DAL)_CHI <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(Ath,DAL)_: ArcFlow(Mac,DAL)_(Ath,DAL)
 - 7.9 Intree(Mac,DAL)_DAL <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(DAL,CHI)_: ArcFlow(Mac,DAL)_(DAL,CHI)
 - 7.9 Intree(Mac,DAL)_CHI <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(Mac,ATL)_: ArcFlow(Mac,DAL)_(Mac,ATL)
 - 7.9 Intree(Mac,DAL)_ATL <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(Mac,CHI)_: ArcFlow(Mac,DAL)_(Mac,CHI)
 - 7.9 Intree(Mac,DAL)_CHI <= 0
_Consistency_Arc_(Mac,DAL)_Commodity(Mac,DAL)_: ArcFlow(Mac,DAL)_(Mac,DAL)
 - 7.9 Intree(Mac,DAL)_DAL <= 0
Bounds
0 <= TrailerFlow(ATL,Ath)
0 <= TrailerFlow(ATL,CHI)
0 <= TrailerFlow(ATL,DAL)
0 <= TrailerFlow(ATL,Mac)
0 <= TrailerFlow(Ath,ATL)
0 <= TrailerFlow(Ath,Mac)
0 <= TrailerFlow(CHI,ATL)
0 <= TrailerFlow(CHI,DAL)
0 <= TrailerFlow(DAL,ATL)
0 <= TrailerFlow(DAL,CHI)
0 <= TrailerFlow(Mac,ATL)
0 <= TrailerFlow(Mac,Ath)
0 <= TrailerFlow(Mac,DAL)
Generals
TrailerFlow(ATL,Ath)
TrailerFlow(ATL,CHI)
TrailerFlow(ATL,DAL)
TrailerFlow(ATL,Mac)
TrailerFlow(Ath,ATL)
TrailerFlow(Ath,Mac)
TrailerFlow(CHI,ATL)
TrailerFlow(CHI,DAL)
TrailerFlow(DAL,ATL)
TrailerFlow(DAL,CHI)
TrailerFlow(Mac,ATL)
TrailerFlow(Mac,Ath)
TrailerFlow(Mac,DAL)
Binaries
Intree(ATL,Ath)_ATL
Intree(ATL,Ath)_CHI
Intree(ATL,Ath)_DAL
Intree(ATL,CHI)_ATL
Intree(ATL,CHI)_CHI
Intree(ATL,CHI)_DAL
Intree(ATL,DAL)_ATL
Intree(ATL,DAL)_CHI
Intree(ATL,DAL)_DAL
Intree(ATL,Mac)_ATL
Intree(ATL,Mac)_CHI
Intree(ATL,Mac)_DAL
Intree(Ath,ATL)_ATL
Intree(Ath,ATL)_CHI
Intree(Ath,ATL)_DAL
Intree(Ath,Mac)_ATL
Intree(Ath,Mac)_CHI
Intree(Ath,Mac)_DAL
Intree(CHI,ATL)_ATL
Intree(CHI,ATL)_CHI
Intree(CHI,ATL)_DAL
Intree(CHI,DAL)_ATL
Intree(CHI,DAL)_CHI
Intree(CHI,DAL)_DAL
Intree(DAL,ATL)_ATL
Intree(DAL,ATL)_CHI
Intree(DAL,ATL)_DAL
Intree(DAL,CHI)_ATL
Intree(DAL,CHI)_CHI
Intree(DAL,CHI)_DAL
Intree(Mac,ATL)_ATL
Intree(Mac,ATL)_CHI
Intree(Mac,ATL)_DAL
Intree(Mac,Ath)_ATL
Intree(Mac,Ath)_CHI
Intree(Mac,Ath)_DAL
Intree(Mac,DAL)_ATL
Intree(Mac,DAL)_CHI
Intree(Mac,DAL)_DAL
End
