module PC2 (
    input  [27:0] C,
    input  [27:0] D,
    output [47:0] key_n
);

wire [55:0] CD;
assign CD = {C, D};


assign key_n = {
    CD[42], CD[39], CD[45], CD[32], CD[55],  CD[51],
    CD[53],  CD[28], CD[41], CD[50],  CD[35], CD[46],
    CD[33], CD[37], CD[44], CD[52],  CD[30], CD[48],
    CD[40], CD[49],  CD[29], CD[36], CD[43], CD[54],
    CD[15], CD[4], CD[25], CD[19], CD[9], CD[1],
    CD[26], CD[16], CD[5], CD[11], CD[23], CD[8],
    CD[12], CD[7], CD[17], CD[0], CD[22], CD[3],
    CD[10], CD[14], CD[6], CD[20], CD[27], CD[24]
};

endmodule