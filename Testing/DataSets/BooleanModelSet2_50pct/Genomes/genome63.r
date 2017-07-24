library(BoolNet)

network <- loadNetwork("~/PycharmProjects/scrap/booleanTestNetwork.txt")



fixGenes( network, "CDH1", 0)
fixGenes( network, "NICD", 1)




fixGenes( network, "AKT2", 1)
fixGenes( network, "AKT1", 1)

attr <- getAttractors(network, method = "chosen", startStates = list(c(0,
1,
1,
1,
1,
0,
0,
0,
0,
0,
0,
0,
1,
0,
1,
1,
0,
0,
0,
1,
1,
1,
0,
0,
0, 0, 0,
0,
1,
0, 1, 1)))

attrSeq <- getAttractorSequence(attr, 1)

if (all(attrSeq[ , 26] == 1)){
  print(0)
} else {
  print(1)
}