NetArrayInterpolation[nets_List,n_]:= NetInformation[#,"Arrays"]& /@ nets // Merge[#,Identity]& //
                                      (1-t)#1 + t #2 & @@ Normal /@ #  & /@ #&  //
                                      NetReplacePart[First@nets,#] ~Table~ {t,0,1, 1/(n-1)} &
