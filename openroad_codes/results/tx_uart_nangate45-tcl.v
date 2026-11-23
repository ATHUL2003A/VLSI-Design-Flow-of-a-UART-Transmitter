module tx_uart (clk,
    done_tx,
    rs232_tx,
    rst_n,
    start,
    data);
 input clk;
 output done_tx;
 output rs232_tx;
 input rst_n;
 input start;
 input [7:0] data;

 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _10_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _11_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _12_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _13_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _14_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _15_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _168_;
 wire clknet_0_clk;
 wire _16_;
 wire _170_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _1_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _2_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;
 wire _39_;
 wire _3_;
 wire _40_;
 wire _41_;
 wire _42_;
 wire _43_;
 wire _44_;
 wire _45_;
 wire _46_;
 wire _47_;
 wire _48_;
 wire _49_;
 wire _4_;
 wire _50_;
 wire _51_;
 wire _52_;
 wire _53_;
 wire _54_;
 wire _55_;
 wire _56_;
 wire _57_;
 wire _58_;
 wire _59_;
 wire _5_;
 wire _60_;
 wire _61_;
 wire _62_;
 wire _63_;
 wire _64_;
 wire _65_;
 wire _66_;
 wire _67_;
 wire _68_;
 wire _69_;
 wire _6_;
 wire _70_;
 wire _71_;
 wire _72_;
 wire _73_;
 wire _74_;
 wire _75_;
 wire _76_;
 wire _77_;
 wire _78_;
 wire _79_;
 wire _7_;
 wire _80_;
 wire _81_;
 wire _82_;
 wire _83_;
 wire _84_;
 wire _85_;
 wire _86_;
 wire _87_;
 wire _88_;
 wire _89_;
 wire _8_;
 wire _90_;
 wire _91_;
 wire _92_;
 wire _93_;
 wire _94_;
 wire _95_;
 wire _96_;
 wire _97_;
 wire _98_;
 wire _99_;
 wire _9_;
 wire busy;
 wire uclk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire [0:0] _110_;
 wire [31:0] _167_;
 wire [3:0] bit_cnt;
 wire [31:0] count;
 wire [7:0] tx_data;
 wire [7:0] tx_dataq;

 TAPCELL_X1 PHY_EDGE_ROW_2_Right_2 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Right_1 ();
 INV_X1 _173_ (.A(count[7]),
    .ZN(_159_));
 INV_X1 _174_ (.A(count[20]),
    .ZN(_160_));
 INV_X1 _175_ (.A(count[25]),
    .ZN(_43_));
 INV_X1 _176_ (.A(count[14]),
    .ZN(_63_));
 INV_X1 _177_ (.A(count[21]),
    .ZN(_64_));
 INV_X1 _178_ (.A(count[19]),
    .ZN(_65_));
 INV_X1 _179_ (.A(count[26]),
    .ZN(_66_));
 INV_X1 _180_ (.A(count[15]),
    .ZN(_67_));
 INV_X1 _181_ (.A(count[27]),
    .ZN(_68_));
 INV_X1 _182_ (.A(count[13]),
    .ZN(_69_));
 INV_X1 _183_ (.A(_94_),
    .ZN(_70_));
 NAND2_X1 _184_ (.A1(count[1]),
    .A2(count[0]),
    .ZN(_71_));
 NAND3_X1 _185_ (.A1(count[2]),
    .A2(count[1]),
    .A3(count[0]),
    .ZN(_72_));
 AND4_X1 _186_ (.A1(count[2]),
    .A2(count[3]),
    .A3(count[1]),
    .A4(count[0]),
    .ZN(_73_));
 NAND2_X1 _187_ (.A1(count[4]),
    .A2(_73_),
    .ZN(_74_));
 NAND3_X1 _188_ (.A1(count[5]),
    .A2(count[4]),
    .A3(_73_),
    .ZN(_75_));
 AND4_X1 _189_ (.A1(count[5]),
    .A2(count[6]),
    .A3(count[4]),
    .A4(_73_),
    .ZN(_76_));
 AND2_X1 _190_ (.A1(count[7]),
    .A2(_76_),
    .ZN(_77_));
 AND4_X2 _191_ (.A1(count[7]),
    .A2(count[8]),
    .A3(count[9]),
    .A4(_76_),
    .ZN(_78_));
 AND2_X1 _192_ (.A1(count[10]),
    .A2(_78_),
    .ZN(_79_));
 NAND2_X1 _193_ (.A1(count[11]),
    .A2(_79_),
    .ZN(_80_));
 NAND4_X4 _194_ (.A1(count[12]),
    .A2(count[11]),
    .A3(count[10]),
    .A4(_78_),
    .ZN(_81_));
 NOR2_X1 _195_ (.A1(_69_),
    .A2(_81_),
    .ZN(_82_));
 NOR4_X4 _196_ (.A1(_63_),
    .A2(_67_),
    .A3(_69_),
    .A4(_81_),
    .ZN(_83_));
 AND2_X1 _197_ (.A1(count[16]),
    .A2(_83_),
    .ZN(_84_));
 NAND2_X1 _198_ (.A1(count[17]),
    .A2(_84_),
    .ZN(_85_));
 NAND4_X4 _199_ (.A1(count[16]),
    .A2(count[17]),
    .A3(count[18]),
    .A4(_83_),
    .ZN(_86_));
 NOR2_X1 _200_ (.A1(_65_),
    .A2(_86_),
    .ZN(_87_));
 NOR4_X4 _201_ (.A1(_160_),
    .A2(_64_),
    .A3(_65_),
    .A4(_86_),
    .ZN(_88_));
 AND2_X1 _202_ (.A1(count[22]),
    .A2(_88_),
    .ZN(_89_));
 NAND2_X1 _203_ (.A1(count[23]),
    .A2(_89_),
    .ZN(_90_));
 NAND4_X4 _204_ (.A1(count[24]),
    .A2(count[22]),
    .A3(count[23]),
    .A4(_88_),
    .ZN(_91_));
 NOR2_X1 _205_ (.A1(_43_),
    .A2(_91_),
    .ZN(_92_));
 NOR4_X4 _206_ (.A1(_43_),
    .A2(_66_),
    .A3(_68_),
    .A4(_91_),
    .ZN(_93_));
 NAND2_X1 _207_ (.A1(count[28]),
    .A2(_93_),
    .ZN(_95_));
 NAND3_X1 _208_ (.A1(count[28]),
    .A2(count[29]),
    .A3(_93_),
    .ZN(_96_));
 NAND4_X1 _209_ (.A1(count[30]),
    .A2(count[28]),
    .A3(count[29]),
    .A4(_93_),
    .ZN(_98_));
 XNOR2_X1 _210_ (.A(count[30]),
    .B(_96_),
    .ZN(_167_[30]));
 XNOR2_X1 _211_ (.A(count[29]),
    .B(_95_),
    .ZN(_167_[29]));
 XOR2_X1 _212_ (.A(count[28]),
    .B(_93_),
    .Z(_167_[28]));
 AOI21_X1 _213_ (.A(count[27]),
    .B1(_92_),
    .B2(count[26]),
    .ZN(_99_));
 NOR2_X1 _214_ (.A1(_93_),
    .A2(_99_),
    .ZN(_167_[27]));
 XNOR2_X1 _215_ (.A(_66_),
    .B(_92_),
    .ZN(_167_[26]));
 XNOR2_X1 _216_ (.A(count[25]),
    .B(_91_),
    .ZN(_167_[25]));
 XNOR2_X1 _217_ (.A(count[24]),
    .B(_90_),
    .ZN(_167_[24]));
 XOR2_X1 _218_ (.A(count[23]),
    .B(_89_),
    .Z(_167_[23]));
 XOR2_X1 _219_ (.A(count[22]),
    .B(_88_),
    .Z(_167_[22]));
 AOI21_X1 _220_ (.A(count[21]),
    .B1(_87_),
    .B2(count[20]),
    .ZN(_100_));
 NOR2_X1 _221_ (.A1(_88_),
    .A2(_100_),
    .ZN(_167_[21]));
 XNOR2_X1 _222_ (.A(_160_),
    .B(_87_),
    .ZN(_167_[20]));
 XNOR2_X1 _223_ (.A(count[19]),
    .B(_86_),
    .ZN(_167_[19]));
 XNOR2_X1 _224_ (.A(count[18]),
    .B(_85_),
    .ZN(_167_[18]));
 XOR2_X1 _225_ (.A(count[17]),
    .B(_84_),
    .Z(_167_[17]));
 XOR2_X1 _226_ (.A(count[16]),
    .B(_83_),
    .Z(_167_[16]));
 AOI21_X1 _227_ (.A(count[15]),
    .B1(_82_),
    .B2(count[14]),
    .ZN(_101_));
 NOR2_X1 _228_ (.A1(_83_),
    .A2(_101_),
    .ZN(_167_[15]));
 XNOR2_X1 _229_ (.A(_63_),
    .B(_82_),
    .ZN(_167_[14]));
 XNOR2_X1 _230_ (.A(count[13]),
    .B(_81_),
    .ZN(_167_[13]));
 XNOR2_X1 _231_ (.A(count[12]),
    .B(_80_),
    .ZN(_167_[12]));
 XOR2_X1 _232_ (.A(count[11]),
    .B(_79_),
    .Z(_167_[11]));
 XOR2_X1 _233_ (.A(count[10]),
    .B(_78_),
    .Z(_167_[10]));
 AOI21_X1 _234_ (.A(count[9]),
    .B1(_77_),
    .B2(count[8]),
    .ZN(_102_));
 NOR2_X1 _235_ (.A1(_78_),
    .A2(_102_),
    .ZN(_167_[9]));
 XOR2_X1 _236_ (.A(count[8]),
    .B(_77_),
    .Z(_167_[8]));
 XNOR2_X1 _237_ (.A(_159_),
    .B(_76_),
    .ZN(_167_[7]));
 XNOR2_X1 _238_ (.A(count[6]),
    .B(_75_),
    .ZN(_167_[6]));
 XNOR2_X1 _239_ (.A(count[5]),
    .B(_74_),
    .ZN(_167_[5]));
 XOR2_X1 _240_ (.A(count[4]),
    .B(_73_),
    .Z(_167_[4]));
 XNOR2_X1 _241_ (.A(count[3]),
    .B(_72_),
    .ZN(_167_[3]));
 XNOR2_X1 _242_ (.A(count[2]),
    .B(_71_),
    .ZN(_167_[2]));
 NOR4_X1 _243_ (.A1(count[2]),
    .A2(count[3]),
    .A3(_110_[0]),
    .A4(count[1]),
    .ZN(_103_));
 NOR4_X1 _244_ (.A1(count[14]),
    .A2(count[21]),
    .A3(count[19]),
    .A4(count[18]),
    .ZN(_104_));
 NOR4_X1 _245_ (.A1(count[13]),
    .A2(count[29]),
    .A3(count[22]),
    .A4(count[23]),
    .ZN(_105_));
 NOR4_X1 _246_ (.A1(count[26]),
    .A2(count[15]),
    .A3(count[27]),
    .A4(count[31]),
    .ZN(_106_));
 NAND4_X1 _247_ (.A1(_103_),
    .A2(_104_),
    .A3(_105_),
    .A4(_106_),
    .ZN(_107_));
 NOR4_X1 _248_ (.A1(count[20]),
    .A2(count[25]),
    .A3(count[4]),
    .A4(count[24]),
    .ZN(_108_));
 NOR4_X1 _249_ (.A1(count[10]),
    .A2(count[16]),
    .A3(count[17]),
    .A4(count[28]),
    .ZN(_109_));
 NOR4_X1 _250_ (.A1(count[6]),
    .A2(count[8]),
    .A3(count[9]),
    .A4(count[11]),
    .ZN(_111_));
 NOR3_X1 _251_ (.A1(count[5]),
    .A2(count[12]),
    .A3(count[30]),
    .ZN(_112_));
 NAND2_X1 _252_ (.A1(_111_),
    .A2(_112_),
    .ZN(_113_));
 NAND3_X1 _253_ (.A1(_159_),
    .A2(_108_),
    .A3(_109_),
    .ZN(_114_));
 NOR3_X2 _254_ (.A1(_107_),
    .A2(_113_),
    .A3(_114_),
    .ZN(_115_));
 XNOR2_X1 _255_ (.A(count[1]),
    .B(count[0]),
    .ZN(_116_));
 NOR2_X1 _256_ (.A1(_115_),
    .A2(_116_),
    .ZN(_167_[1]));
 NAND2_X4 _257_ (.A1(start),
    .A2(_94_),
    .ZN(_119_));
 MUX2_X1 _258_ (.A(tx_dataq[6]),
    .B(tx_data[6]),
    .S(_119_),
    .Z(_62_));
 MUX2_X1 _259_ (.A(tx_dataq[5]),
    .B(tx_data[5]),
    .S(_119_),
    .Z(_61_));
 MUX2_X1 _260_ (.A(tx_dataq[4]),
    .B(tx_data[4]),
    .S(_119_),
    .Z(_60_));
 MUX2_X1 _261_ (.A(tx_dataq[3]),
    .B(tx_data[3]),
    .S(_119_),
    .Z(_59_));
 MUX2_X1 _262_ (.A(tx_dataq[2]),
    .B(tx_data[2]),
    .S(_119_),
    .Z(_58_));
 MUX2_X1 _263_ (.A(tx_dataq[1]),
    .B(tx_data[1]),
    .S(_119_),
    .Z(_57_));
 MUX2_X1 _264_ (.A(tx_dataq[0]),
    .B(tx_data[0]),
    .S(_119_),
    .Z(_56_));
 NOR2_X4 _265_ (.A1(start),
    .A2(_70_),
    .ZN(_120_));
 MUX2_X1 _266_ (.A(tx_dataq[6]),
    .B(data[6]),
    .S(_120_),
    .Z(_55_));
 MUX2_X1 _267_ (.A(tx_dataq[5]),
    .B(data[5]),
    .S(_120_),
    .Z(_54_));
 MUX2_X1 _268_ (.A(tx_dataq[4]),
    .B(data[4]),
    .S(_120_),
    .Z(_53_));
 MUX2_X1 _269_ (.A(tx_dataq[3]),
    .B(data[3]),
    .S(_120_),
    .Z(_52_));
 MUX2_X1 _270_ (.A(tx_dataq[2]),
    .B(data[2]),
    .S(_120_),
    .Z(_51_));
 MUX2_X1 _271_ (.A(tx_dataq[1]),
    .B(data[1]),
    .S(_120_),
    .Z(_48_));
 MUX2_X1 _272_ (.A(tx_dataq[0]),
    .B(data[0]),
    .S(_120_),
    .Z(_47_));
 NOR2_X2 _273_ (.A1(start),
    .A2(busy),
    .ZN(_121_));
 OR2_X1 _274_ (.A1(bit_cnt[3]),
    .A2(_118_),
    .ZN(_122_));
 NOR3_X2 _275_ (.A1(bit_cnt[0]),
    .A2(_117_),
    .A3(_122_),
    .ZN(_123_));
 NOR3_X1 _276_ (.A1(bit_cnt[1]),
    .A2(bit_cnt[0]),
    .A3(_122_),
    .ZN(_124_));
 OR2_X1 _277_ (.A1(_123_),
    .A2(_124_),
    .ZN(_125_));
 NOR2_X1 _278_ (.A1(_155_),
    .A2(bit_cnt[1]),
    .ZN(_126_));
 NOR3_X1 _279_ (.A1(_155_),
    .A2(bit_cnt[1]),
    .A3(_122_),
    .ZN(_127_));
 NOR2_X1 _280_ (.A1(bit_cnt[2]),
    .A2(bit_cnt[3]),
    .ZN(_128_));
 NOR4_X1 _281_ (.A1(bit_cnt[2]),
    .A2(_155_),
    .A3(bit_cnt[3]),
    .A4(_117_),
    .ZN(_129_));
 OR2_X1 _282_ (.A1(_123_),
    .A2(_127_),
    .ZN(_130_));
 OR3_X1 _283_ (.A1(_125_),
    .A2(_127_),
    .A3(_129_),
    .ZN(_131_));
 AOI22_X1 _284_ (.A1(bit_cnt[2]),
    .A2(_121_),
    .B1(_131_),
    .B2(busy),
    .ZN(_132_));
 INV_X1 _285_ (.A(_132_),
    .ZN(_46_));
 NAND2_X1 _286_ (.A1(bit_cnt[1]),
    .A2(_121_),
    .ZN(_133_));
 NOR4_X2 _287_ (.A1(bit_cnt[2]),
    .A2(bit_cnt[0]),
    .A3(bit_cnt[3]),
    .A4(_117_),
    .ZN(_134_));
 AOI21_X1 _288_ (.A(_134_),
    .B1(_128_),
    .B2(_126_),
    .ZN(_135_));
 INV_X1 _289_ (.A(_135_),
    .ZN(_136_));
 OAI21_X1 _290_ (.A(busy),
    .B1(_130_),
    .B2(_136_),
    .ZN(_137_));
 NAND2_X1 _291_ (.A1(_133_),
    .A2(_137_),
    .ZN(_45_));
 NOR4_X2 _292_ (.A1(bit_cnt[2]),
    .A2(_156_),
    .A3(bit_cnt[1]),
    .A4(bit_cnt[0]),
    .ZN(_138_));
 NOR4_X2 _293_ (.A1(bit_cnt[2]),
    .A2(bit_cnt[1]),
    .A3(bit_cnt[0]),
    .A4(bit_cnt[3]),
    .ZN(_139_));
 OR4_X1 _294_ (.A1(_125_),
    .A2(_134_),
    .A3(_138_),
    .A4(_139_),
    .ZN(_140_));
 AOI22_X1 _295_ (.A1(bit_cnt[0]),
    .A2(_121_),
    .B1(_140_),
    .B2(busy),
    .ZN(_141_));
 INV_X1 _296_ (.A(_141_),
    .ZN(_44_));
 NOR3_X1 _297_ (.A1(_155_),
    .A2(_117_),
    .A3(_122_),
    .ZN(_142_));
 OR2_X1 _298_ (.A1(_138_),
    .A2(_142_),
    .ZN(_143_));
 NOR4_X2 _299_ (.A1(_131_),
    .A2(_136_),
    .A3(_139_),
    .A4(_143_),
    .ZN(_144_));
 AOI21_X1 _300_ (.A(_121_),
    .B1(_144_),
    .B2(busy),
    .ZN(_158_));
 AOI22_X1 _301_ (.A1(bit_cnt[3]),
    .A2(_121_),
    .B1(_143_),
    .B2(busy),
    .ZN(_145_));
 INV_X1 _302_ (.A(_145_),
    .ZN(_42_));
 MUX2_X1 _303_ (.A(uclk),
    .B(_97_),
    .S(_115_),
    .Z(_41_));
 MUX2_X1 _304_ (.A(tx_dataq[7]),
    .B(data[7]),
    .S(_120_),
    .Z(_26_));
 MUX2_X1 _305_ (.A(tx_dataq[7]),
    .B(tx_data[7]),
    .S(_119_),
    .Z(_25_));
 NAND2_X1 _306_ (.A1(busy),
    .A2(_126_),
    .ZN(_146_));
 NOR3_X1 _307_ (.A1(bit_cnt[2]),
    .A2(_156_),
    .A3(_146_),
    .ZN(_161_));
 AND3_X1 _308_ (.A1(tx_data[0]),
    .A2(_126_),
    .A3(_128_),
    .ZN(_147_));
 AOI222_X2 _309_ (.A1(tx_data[5]),
    .A2(_123_),
    .B1(_142_),
    .B2(tx_data[6]),
    .C1(_124_),
    .C2(tx_data[3]),
    .ZN(_148_));
 AOI221_X1 _310_ (.A(_147_),
    .B1(_129_),
    .B2(tx_data[2]),
    .C1(tx_data[1]),
    .C2(_134_),
    .ZN(_149_));
 AOI22_X1 _311_ (.A1(tx_data[4]),
    .A2(_127_),
    .B1(_138_),
    .B2(tx_data[7]),
    .ZN(_150_));
 NAND3_X1 _312_ (.A1(busy),
    .A2(_149_),
    .A3(_150_),
    .ZN(_151_));
 NOR2_X1 _313_ (.A1(_144_),
    .A2(_151_),
    .ZN(_152_));
 NAND2_X1 _314_ (.A1(_148_),
    .A2(_152_),
    .ZN(_162_));
 XNOR2_X1 _315_ (.A(count[31]),
    .B(_98_),
    .ZN(_167_[31]));
 TAPCELL_X1 PHY_EDGE_ROW_0_Right_0 ();
 DFFR_X2 _317_ (.D(_45_),
    .RN(rst_n),
    .CK(uclk),
    .Q(bit_cnt[1]),
    .QN(_117_));
 DFFR_X2 _318_ (.D(_46_),
    .RN(rst_n),
    .CK(uclk),
    .Q(bit_cnt[2]),
    .QN(_118_));
 DFFR_X1 _319_ (.D(_47_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[0]),
    .QN(_40_));
 DFFR_X1 _320_ (.D(_48_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[1]),
    .QN(_39_));
 DFFR_X1 _321_ (.D(_51_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[2]),
    .QN(_38_));
 DFFR_X1 _322_ (.D(_52_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[3]),
    .QN(_37_));
 DFFR_X1 _323_ (.D(_53_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[4]),
    .QN(_36_));
 DFFR_X1 _324_ (.D(_54_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[5]),
    .QN(_35_));
 DFFR_X1 _325_ (.D(_55_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[6]),
    .QN(_34_));
 DFFR_X1 _326_ (.D(_56_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[0]),
    .QN(_33_));
 DFFR_X1 _327_ (.D(_57_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[1]),
    .QN(_32_));
 DFFR_X1 _328_ (.D(_58_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[2]),
    .QN(_31_));
 DFFR_X1 _329_ (.D(_59_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[3]),
    .QN(_30_));
 DFFR_X1 _330_ (.D(_60_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[4]),
    .QN(_29_));
 DFFR_X1 _331_ (.D(_61_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[5]),
    .QN(_28_));
 DFFR_X1 _332_ (.D(_62_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[6]),
    .QN(_27_));
 DFFR_X1 _333_ (.D(_110_[0]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[0]),
    .QN(_110_[0]));
 DFFR_X1 _334_ (.D(_167_[30]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[30]),
    .QN(_24_));
 DFFR_X1 _335_ (.D(_167_[29]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[29]),
    .QN(_23_));
 DFFR_X2 _336_ (.D(_167_[28]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[28]),
    .QN(_22_));
 DFFR_X1 _337_ (.D(_167_[27]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[27]),
    .QN(_21_));
 DFFR_X1 _338_ (.D(_167_[26]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[26]),
    .QN(_20_));
 DFFR_X1 _339_ (.D(_167_[25]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[25]),
    .QN(_19_));
 DFFR_X2 _340_ (.D(_167_[24]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[24]),
    .QN(_18_));
 DFFR_X2 _341_ (.D(_167_[23]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[23]),
    .QN(_17_));
 DFFR_X2 _342_ (.D(_167_[22]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[22]),
    .QN(_16_));
 DFFR_X1 _343_ (.D(_167_[21]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[21]),
    .QN(_15_));
 DFFR_X1 _344_ (.D(_167_[1]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[1]),
    .QN(_163_));
 DFFR_X1 _345_ (.D(_167_[20]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[20]),
    .QN(_14_));
 DFFR_X1 _346_ (.D(_167_[19]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[19]),
    .QN(_13_));
 DFFR_X2 _347_ (.D(_41_),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(uclk),
    .QN(_97_));
 DFFR_X1 _348_ (.D(_25_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_data[7]),
    .QN(_157_));
 DFFR_X2 _349_ (.D(_167_[18]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[18]),
    .QN(_12_));
 DFFS_X1 _350_ (.D(_162_),
    .SN(rst_n),
    .CK(uclk),
    .Q(rs232_tx),
    .QN(_154_));
 DFFR_X2 _351_ (.D(_167_[17]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[17]),
    .QN(_11_));
 DFFR_X2 _352_ (.D(_167_[16]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[16]),
    .QN(_10_));
 DFFR_X1 _353_ (.D(_167_[15]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[15]),
    .QN(_9_));
 DFFR_X1 _354_ (.D(_167_[14]),
    .RN(rst_n),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[14]),
    .QN(_8_));
 DFFR_X1 _355_ (.D(_167_[13]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[13]),
    .QN(_7_));
 DFFR_X2 _356_ (.D(_167_[12]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[12]),
    .QN(_6_));
 DFFR_X2 _357_ (.D(_167_[11]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[11]),
    .QN(_5_));
 DFFR_X2 _358_ (.D(_167_[10]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[10]),
    .QN(_4_));
 DFFR_X1 _359_ (.D(_167_[9]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[9]),
    .QN(_3_));
 DFFR_X1 _360_ (.D(_167_[8]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[8]),
    .QN(_2_));
 DFFR_X1 _361_ (.D(_167_[7]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[7]),
    .QN(_1_));
 DFFR_X1 _362_ (.D(_167_[6]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[6]),
    .QN(_170_));
 DFFR_X1 _363_ (.D(_167_[5]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[5]),
    .QN(_168_));
 DFFR_X2 _364_ (.D(_167_[4]),
    .RN(rst_n),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[4]),
    .QN(_166_));
 DFFR_X1 _365_ (.D(_167_[3]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[3]),
    .QN(_165_));
 DFFR_X1 _366_ (.D(_167_[2]),
    .RN(rst_n),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[2]),
    .QN(_164_));
 DFFR_X1 _367_ (.D(_167_[31]),
    .RN(rst_n),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[31]),
    .QN(_153_));
 DFFR_X2 _368_ (.D(_158_),
    .RN(rst_n),
    .CK(uclk),
    .Q(busy),
    .QN(_94_));
 DFFR_X1 _369_ (.D(_26_),
    .RN(rst_n),
    .CK(uclk),
    .Q(tx_dataq[7]),
    .QN(_50_));
 DFFR_X1 _370_ (.D(_161_),
    .RN(rst_n),
    .CK(uclk),
    .Q(done_tx),
    .QN(_49_));
 DFFR_X2 _371_ (.D(_42_),
    .RN(rst_n),
    .CK(uclk),
    .Q(bit_cnt[3]),
    .QN(_156_));
 DFFR_X2 _372_ (.D(_44_),
    .RN(rst_n),
    .CK(uclk),
    .Q(bit_cnt[0]),
    .QN(_155_));
 TAPCELL_X1 PHY_EDGE_ROW_3_Right_3 ();
 TAPCELL_X1 PHY_EDGE_ROW_4_Right_4 ();
 TAPCELL_X1 PHY_EDGE_ROW_5_Right_5 ();
 TAPCELL_X1 PHY_EDGE_ROW_6_Right_6 ();
 TAPCELL_X1 PHY_EDGE_ROW_7_Right_7 ();
 TAPCELL_X1 PHY_EDGE_ROW_8_Right_8 ();
 TAPCELL_X1 PHY_EDGE_ROW_9_Right_9 ();
 TAPCELL_X1 PHY_EDGE_ROW_10_Right_10 ();
 TAPCELL_X1 PHY_EDGE_ROW_11_Right_11 ();
 TAPCELL_X1 PHY_EDGE_ROW_12_Right_12 ();
 TAPCELL_X1 PHY_EDGE_ROW_13_Right_13 ();
 TAPCELL_X1 PHY_EDGE_ROW_14_Right_14 ();
 TAPCELL_X1 PHY_EDGE_ROW_15_Right_15 ();
 TAPCELL_X1 PHY_EDGE_ROW_16_Right_16 ();
 TAPCELL_X1 PHY_EDGE_ROW_17_Right_17 ();
 TAPCELL_X1 PHY_EDGE_ROW_18_Right_18 ();
 TAPCELL_X1 PHY_EDGE_ROW_19_Right_19 ();
 TAPCELL_X1 PHY_EDGE_ROW_20_Right_20 ();
 TAPCELL_X1 PHY_EDGE_ROW_21_Right_21 ();
 TAPCELL_X1 PHY_EDGE_ROW_22_Right_22 ();
 TAPCELL_X1 PHY_EDGE_ROW_23_Right_23 ();
 TAPCELL_X1 PHY_EDGE_ROW_24_Right_24 ();
 TAPCELL_X1 PHY_EDGE_ROW_25_Right_25 ();
 TAPCELL_X1 PHY_EDGE_ROW_26_Right_26 ();
 TAPCELL_X1 PHY_EDGE_ROW_27_Right_27 ();
 TAPCELL_X1 PHY_EDGE_ROW_28_Right_28 ();
 TAPCELL_X1 PHY_EDGE_ROW_29_Right_29 ();
 TAPCELL_X1 PHY_EDGE_ROW_30_Right_30 ();
 TAPCELL_X1 PHY_EDGE_ROW_31_Right_31 ();
 TAPCELL_X1 PHY_EDGE_ROW_32_Right_32 ();
 TAPCELL_X1 PHY_EDGE_ROW_33_Right_33 ();
 TAPCELL_X1 PHY_EDGE_ROW_34_Right_34 ();
 TAPCELL_X1 PHY_EDGE_ROW_35_Right_35 ();
 TAPCELL_X1 PHY_EDGE_ROW_36_Right_36 ();
 TAPCELL_X1 PHY_EDGE_ROW_37_Right_37 ();
 TAPCELL_X1 PHY_EDGE_ROW_38_Right_38 ();
 TAPCELL_X1 PHY_EDGE_ROW_39_Right_39 ();
 TAPCELL_X1 PHY_EDGE_ROW_40_Right_40 ();
 TAPCELL_X1 PHY_EDGE_ROW_41_Right_41 ();
 TAPCELL_X1 PHY_EDGE_ROW_42_Right_42 ();
 TAPCELL_X1 PHY_EDGE_ROW_43_Right_43 ();
 TAPCELL_X1 PHY_EDGE_ROW_44_Right_44 ();
 TAPCELL_X1 PHY_EDGE_ROW_45_Right_45 ();
 TAPCELL_X1 PHY_EDGE_ROW_46_Right_46 ();
 TAPCELL_X1 PHY_EDGE_ROW_47_Right_47 ();
 TAPCELL_X1 PHY_EDGE_ROW_48_Right_48 ();
 TAPCELL_X1 PHY_EDGE_ROW_49_Right_49 ();
 TAPCELL_X1 PHY_EDGE_ROW_50_Right_50 ();
 TAPCELL_X1 PHY_EDGE_ROW_51_Right_51 ();
 TAPCELL_X1 PHY_EDGE_ROW_52_Right_52 ();
 TAPCELL_X1 PHY_EDGE_ROW_53_Right_53 ();
 TAPCELL_X1 PHY_EDGE_ROW_54_Right_54 ();
 TAPCELL_X1 PHY_EDGE_ROW_55_Right_55 ();
 TAPCELL_X1 PHY_EDGE_ROW_56_Right_56 ();
 TAPCELL_X1 PHY_EDGE_ROW_0_Left_57 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Left_58 ();
 TAPCELL_X1 PHY_EDGE_ROW_2_Left_59 ();
 TAPCELL_X1 PHY_EDGE_ROW_3_Left_60 ();
 TAPCELL_X1 PHY_EDGE_ROW_4_Left_61 ();
 TAPCELL_X1 PHY_EDGE_ROW_5_Left_62 ();
 TAPCELL_X1 PHY_EDGE_ROW_6_Left_63 ();
 TAPCELL_X1 PHY_EDGE_ROW_7_Left_64 ();
 TAPCELL_X1 PHY_EDGE_ROW_8_Left_65 ();
 TAPCELL_X1 PHY_EDGE_ROW_9_Left_66 ();
 TAPCELL_X1 PHY_EDGE_ROW_10_Left_67 ();
 TAPCELL_X1 PHY_EDGE_ROW_11_Left_68 ();
 TAPCELL_X1 PHY_EDGE_ROW_12_Left_69 ();
 TAPCELL_X1 PHY_EDGE_ROW_13_Left_70 ();
 TAPCELL_X1 PHY_EDGE_ROW_14_Left_71 ();
 TAPCELL_X1 PHY_EDGE_ROW_15_Left_72 ();
 TAPCELL_X1 PHY_EDGE_ROW_16_Left_73 ();
 TAPCELL_X1 PHY_EDGE_ROW_17_Left_74 ();
 TAPCELL_X1 PHY_EDGE_ROW_18_Left_75 ();
 TAPCELL_X1 PHY_EDGE_ROW_19_Left_76 ();
 TAPCELL_X1 PHY_EDGE_ROW_20_Left_77 ();
 TAPCELL_X1 PHY_EDGE_ROW_21_Left_78 ();
 TAPCELL_X1 PHY_EDGE_ROW_22_Left_79 ();
 TAPCELL_X1 PHY_EDGE_ROW_23_Left_80 ();
 TAPCELL_X1 PHY_EDGE_ROW_24_Left_81 ();
 TAPCELL_X1 PHY_EDGE_ROW_25_Left_82 ();
 TAPCELL_X1 PHY_EDGE_ROW_26_Left_83 ();
 TAPCELL_X1 PHY_EDGE_ROW_27_Left_84 ();
 TAPCELL_X1 PHY_EDGE_ROW_28_Left_85 ();
 TAPCELL_X1 PHY_EDGE_ROW_29_Left_86 ();
 TAPCELL_X1 PHY_EDGE_ROW_30_Left_87 ();
 TAPCELL_X1 PHY_EDGE_ROW_31_Left_88 ();
 TAPCELL_X1 PHY_EDGE_ROW_32_Left_89 ();
 TAPCELL_X1 PHY_EDGE_ROW_33_Left_90 ();
 TAPCELL_X1 PHY_EDGE_ROW_34_Left_91 ();
 TAPCELL_X1 PHY_EDGE_ROW_35_Left_92 ();
 TAPCELL_X1 PHY_EDGE_ROW_36_Left_93 ();
 TAPCELL_X1 PHY_EDGE_ROW_37_Left_94 ();
 TAPCELL_X1 PHY_EDGE_ROW_38_Left_95 ();
 TAPCELL_X1 PHY_EDGE_ROW_39_Left_96 ();
 TAPCELL_X1 PHY_EDGE_ROW_40_Left_97 ();
 TAPCELL_X1 PHY_EDGE_ROW_41_Left_98 ();
 TAPCELL_X1 PHY_EDGE_ROW_42_Left_99 ();
 TAPCELL_X1 PHY_EDGE_ROW_43_Left_100 ();
 TAPCELL_X1 PHY_EDGE_ROW_44_Left_101 ();
 TAPCELL_X1 PHY_EDGE_ROW_45_Left_102 ();
 TAPCELL_X1 PHY_EDGE_ROW_46_Left_103 ();
 TAPCELL_X1 PHY_EDGE_ROW_47_Left_104 ();
 TAPCELL_X1 PHY_EDGE_ROW_48_Left_105 ();
 TAPCELL_X1 PHY_EDGE_ROW_49_Left_106 ();
 TAPCELL_X1 PHY_EDGE_ROW_50_Left_107 ();
 TAPCELL_X1 PHY_EDGE_ROW_51_Left_108 ();
 TAPCELL_X1 PHY_EDGE_ROW_52_Left_109 ();
 TAPCELL_X1 PHY_EDGE_ROW_53_Left_110 ();
 TAPCELL_X1 PHY_EDGE_ROW_54_Left_111 ();
 TAPCELL_X1 PHY_EDGE_ROW_55_Left_112 ();
 TAPCELL_X1 PHY_EDGE_ROW_56_Left_113 ();
 BUF_X4 clkbuf_0_clk (.A(clk),
    .Z(clknet_0_clk));
 BUF_X4 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .Z(clknet_2_0__leaf_clk));
 BUF_X4 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .Z(clknet_2_1__leaf_clk));
 BUF_X4 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .Z(clknet_2_2__leaf_clk));
 BUF_X4 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .Z(clknet_2_3__leaf_clk));
 INV_X1 clkload0 (.A(clknet_2_0__leaf_clk));
 INV_X1 clkload1 (.A(clknet_2_1__leaf_clk));
 INV_X1 clkload2 (.A(clknet_2_2__leaf_clk));
endmodule
