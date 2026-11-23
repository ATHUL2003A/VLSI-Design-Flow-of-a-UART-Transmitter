module top (clk,
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

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
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
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
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
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire uclk;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire [3:0] bit_cnt;
 wire [31:0] count;

 INV_X1 _179_ (.A(bit_cnt[0]),
    .ZN(_082_));
 INV_X1 _180_ (.A(_001_),
    .ZN(_083_));
 INV_X1 _181_ (.A(rst_n),
    .ZN(_038_));
 NOR2_X2 _182_ (.A1(_082_),
    .A2(bit_cnt[1]),
    .ZN(_084_));
 NAND2_X1 _183_ (.A1(_038_),
    .A2(start),
    .ZN(_085_));
 NAND2_X1 _184_ (.A1(bit_cnt[3]),
    .A2(_084_),
    .ZN(_086_));
 NOR3_X2 _185_ (.A1(bit_cnt[2]),
    .A2(_085_),
    .A3(_086_),
    .ZN(_087_));
 OR2_X1 _186_ (.A1(done_tx),
    .A2(_087_),
    .ZN(_080_));
 NOR2_X1 _187_ (.A1(bit_cnt[0]),
    .A2(bit_cnt[1]),
    .ZN(_088_));
 OR3_X1 _188_ (.A1(bit_cnt[0]),
    .A2(bit_cnt[1]),
    .A3(bit_cnt[2]),
    .ZN(_089_));
 AOI21_X2 _189_ (.A(_085_),
    .B1(_089_),
    .B2(bit_cnt[3]),
    .ZN(_090_));
 NOR2_X2 _190_ (.A1(_087_),
    .A2(_090_),
    .ZN(_091_));
 AND2_X1 _191_ (.A1(bit_cnt[0]),
    .A2(bit_cnt[1]),
    .ZN(_092_));
 NAND2_X1 _192_ (.A1(bit_cnt[0]),
    .A2(bit_cnt[1]),
    .ZN(_093_));
 OAI21_X1 _193_ (.A(_089_),
    .B1(_093_),
    .B2(bit_cnt[3]),
    .ZN(_094_));
 OAI21_X1 _194_ (.A(_094_),
    .B1(bit_cnt[2]),
    .B2(bit_cnt[3]),
    .ZN(_095_));
 NAND2_X1 _195_ (.A1(bit_cnt[3]),
    .A2(_091_),
    .ZN(_096_));
 OAI21_X1 _196_ (.A(_096_),
    .B1(_095_),
    .B2(_091_),
    .ZN(_079_));
 MUX2_X1 _197_ (.A(_090_),
    .B(_091_),
    .S(bit_cnt[0]),
    .Z(_046_));
 NOR2_X1 _198_ (.A1(_091_),
    .A2(_093_),
    .ZN(_097_));
 NOR3_X1 _199_ (.A1(bit_cnt[3]),
    .A2(_088_),
    .A3(_092_),
    .ZN(_098_));
 MUX2_X1 _200_ (.A(_098_),
    .B(bit_cnt[1]),
    .S(_091_),
    .Z(_045_));
 XOR2_X1 _201_ (.A(bit_cnt[2]),
    .B(_097_),
    .Z(_044_));
 AND3_X1 _202_ (.A1(count[2]),
    .A2(count[1]),
    .A3(count[0]),
    .ZN(_099_));
 AND4_X4 _203_ (.A1(count[0]),
    .A2(count[2]),
    .A3(count[1]),
    .A4(count[3]),
    .ZN(_100_));
 AND2_X1 _204_ (.A1(count[4]),
    .A2(_100_),
    .ZN(_101_));
 AND2_X1 _205_ (.A1(count[5]),
    .A2(_101_),
    .ZN(_102_));
 AND4_X4 _206_ (.A1(_100_),
    .A2(count[5]),
    .A3(count[4]),
    .A4(count[6]),
    .ZN(_103_));
 AND2_X1 _207_ (.A1(count[7]),
    .A2(_103_),
    .ZN(_104_));
 AND2_X1 _208_ (.A1(count[8]),
    .A2(_104_),
    .ZN(_105_));
 AND4_X4 _209_ (.A1(_103_),
    .A2(count[8]),
    .A3(count[7]),
    .A4(count[9]),
    .ZN(_106_));
 AND2_X1 _210_ (.A1(count[10]),
    .A2(_106_),
    .ZN(_107_));
 AND2_X1 _211_ (.A1(count[11]),
    .A2(_107_),
    .ZN(_108_));
 AND4_X4 _212_ (.A1(_106_),
    .A2(count[11]),
    .A3(count[10]),
    .A4(count[12]),
    .ZN(_109_));
 AND2_X1 _213_ (.A1(count[13]),
    .A2(net3),
    .ZN(_110_));
 AND2_X1 _214_ (.A1(count[14]),
    .A2(_110_),
    .ZN(_111_));
 AND4_X4 _215_ (.A1(_109_),
    .A2(count[14]),
    .A3(count[13]),
    .A4(count[15]),
    .ZN(_112_));
 AND2_X4 _216_ (.A1(count[16]),
    .A2(net5),
    .ZN(_113_));
 AND2_X2 _217_ (.A1(count[17]),
    .A2(_113_),
    .ZN(_114_));
 AND4_X4 _218_ (.A1(_112_),
    .A2(count[17]),
    .A3(count[16]),
    .A4(count[18]),
    .ZN(_115_));
 AND2_X1 _219_ (.A1(count[19]),
    .A2(_115_),
    .ZN(_116_));
 AND2_X1 _220_ (.A1(count[20]),
    .A2(_116_),
    .ZN(_117_));
 AND4_X4 _221_ (.A1(_115_),
    .A2(count[20]),
    .A3(count[19]),
    .A4(count[21]),
    .ZN(_118_));
 AND2_X1 _222_ (.A1(count[22]),
    .A2(_118_),
    .ZN(_119_));
 AND4_X4 _223_ (.A1(_118_),
    .A2(count[23]),
    .A3(count[22]),
    .A4(count[24]),
    .ZN(_120_));
 AND2_X1 _224_ (.A1(count[25]),
    .A2(_120_),
    .ZN(_121_));
 AND2_X1 _225_ (.A1(count[26]),
    .A2(_121_),
    .ZN(_122_));
 AND4_X4 _226_ (.A1(_120_),
    .A2(count[26]),
    .A3(count[25]),
    .A4(count[27]),
    .ZN(_123_));
 AND2_X1 _227_ (.A1(count[28]),
    .A2(_123_),
    .ZN(_124_));
 AND3_X4 _228_ (.A1(_123_),
    .A2(count[28]),
    .A3(count[29]),
    .ZN(_125_));
 NAND4_X2 _229_ (.A1(_014_),
    .A2(_013_),
    .A3(_012_),
    .A4(_011_),
    .ZN(_126_));
 NAND4_X2 _230_ (.A1(_018_),
    .A2(_017_),
    .A3(_016_),
    .A4(_015_),
    .ZN(_127_));
 NAND3_X2 _231_ (.A1(_006_),
    .A2(_005_),
    .A3(_004_),
    .ZN(_128_));
 NAND4_X2 _232_ (.A1(_010_),
    .A2(_009_),
    .A3(_008_),
    .A4(_007_),
    .ZN(_129_));
 NOR4_X4 _233_ (.A1(_126_),
    .A2(_127_),
    .A3(_128_),
    .A4(_129_),
    .ZN(_130_));
 NAND4_X2 _234_ (.A1(_030_),
    .A2(_029_),
    .A3(_028_),
    .A4(_027_),
    .ZN(_131_));
 NAND4_X2 _235_ (.A1(_034_),
    .A2(_033_),
    .A3(_032_),
    .A4(_031_),
    .ZN(_132_));
 NAND4_X2 _236_ (.A1(_022_),
    .A2(_021_),
    .A3(_020_),
    .A4(_019_),
    .ZN(_133_));
 NAND4_X2 _237_ (.A1(_026_),
    .A2(_025_),
    .A3(_024_),
    .A4(_023_),
    .ZN(_134_));
 NOR4_X4 _238_ (.A1(_131_),
    .A2(_132_),
    .A3(_133_),
    .A4(_134_),
    .ZN(_135_));
 AOI21_X4 _239_ (.A(_083_),
    .B1(_130_),
    .B2(_135_),
    .ZN(_136_));
 XNOR2_X2 _240_ (.A(_125_),
    .B(count[30]),
    .ZN(_137_));
 NOR2_X1 _241_ (.A1(_137_),
    .A2(_136_),
    .ZN(_047_));
 NOR2_X1 _242_ (.A1(count[29]),
    .A2(_124_),
    .ZN(_138_));
 NOR3_X1 _243_ (.A1(_125_),
    .A2(_136_),
    .A3(_138_),
    .ZN(_048_));
 NOR2_X1 _244_ (.A1(count[28]),
    .A2(_123_),
    .ZN(_139_));
 NOR3_X1 _245_ (.A1(_139_),
    .A2(_136_),
    .A3(_124_),
    .ZN(_049_));
 NOR2_X1 _246_ (.A1(count[27]),
    .A2(_122_),
    .ZN(_140_));
 NOR3_X1 _247_ (.A1(_123_),
    .A2(_136_),
    .A3(_140_),
    .ZN(_050_));
 NOR2_X1 _248_ (.A1(count[26]),
    .A2(_121_),
    .ZN(_141_));
 NOR3_X1 _249_ (.A1(_122_),
    .A2(_136_),
    .A3(_141_),
    .ZN(_051_));
 NOR2_X1 _250_ (.A1(count[25]),
    .A2(_120_),
    .ZN(_142_));
 NOR3_X1 _251_ (.A1(_121_),
    .A2(_136_),
    .A3(_142_),
    .ZN(_052_));
 AOI21_X1 _252_ (.A(count[24]),
    .B1(count[23]),
    .B2(_119_),
    .ZN(_143_));
 NOR3_X1 _253_ (.A1(_120_),
    .A2(_136_),
    .A3(_143_),
    .ZN(_053_));
 XNOR2_X1 _254_ (.A(count[23]),
    .B(_119_),
    .ZN(_144_));
 NOR2_X1 _255_ (.A1(_136_),
    .A2(_144_),
    .ZN(_054_));
 NOR2_X1 _256_ (.A1(count[22]),
    .A2(_118_),
    .ZN(_145_));
 NOR3_X1 _257_ (.A1(_119_),
    .A2(_136_),
    .A3(_145_),
    .ZN(_055_));
 NOR2_X1 _258_ (.A1(count[21]),
    .A2(_117_),
    .ZN(_146_));
 NOR3_X1 _259_ (.A1(_118_),
    .A2(_136_),
    .A3(_146_),
    .ZN(_056_));
 NOR2_X1 _260_ (.A1(count[20]),
    .A2(_116_),
    .ZN(_147_));
 NOR3_X1 _261_ (.A1(_117_),
    .A2(_136_),
    .A3(_147_),
    .ZN(_057_));
 NOR2_X1 _262_ (.A1(count[19]),
    .A2(_115_),
    .ZN(_148_));
 NOR3_X1 _263_ (.A1(_116_),
    .A2(_136_),
    .A3(_148_),
    .ZN(_058_));
 NOR2_X1 _264_ (.A1(count[18]),
    .A2(_114_),
    .ZN(_149_));
 NOR3_X1 _265_ (.A1(_149_),
    .A2(_136_),
    .A3(_115_),
    .ZN(_059_));
 NOR2_X1 _266_ (.A1(count[17]),
    .A2(_113_),
    .ZN(_150_));
 NOR3_X1 _267_ (.A1(_114_),
    .A2(_136_),
    .A3(_150_),
    .ZN(_060_));
 NOR2_X1 _268_ (.A1(count[16]),
    .A2(net6),
    .ZN(_151_));
 NOR3_X1 _269_ (.A1(_113_),
    .A2(_136_),
    .A3(_151_),
    .ZN(_061_));
 NOR2_X1 _270_ (.A1(count[15]),
    .A2(_111_),
    .ZN(_152_));
 NOR3_X1 _271_ (.A1(_112_),
    .A2(_136_),
    .A3(_152_),
    .ZN(_062_));
 NOR2_X1 _272_ (.A1(count[14]),
    .A2(_110_),
    .ZN(_153_));
 NOR3_X1 _273_ (.A1(_111_),
    .A2(_136_),
    .A3(_153_),
    .ZN(_063_));
 NOR2_X1 _274_ (.A1(count[13]),
    .A2(net3),
    .ZN(_154_));
 NOR3_X1 _275_ (.A1(_110_),
    .A2(_136_),
    .A3(_154_),
    .ZN(_064_));
 NOR2_X1 _276_ (.A1(count[12]),
    .A2(_108_),
    .ZN(_155_));
 NOR3_X1 _277_ (.A1(_109_),
    .A2(_136_),
    .A3(_155_),
    .ZN(_065_));
 NOR2_X1 _278_ (.A1(count[11]),
    .A2(_107_),
    .ZN(_156_));
 NOR3_X1 _279_ (.A1(_108_),
    .A2(_136_),
    .A3(_156_),
    .ZN(_066_));
 NOR2_X1 _280_ (.A1(count[10]),
    .A2(_106_),
    .ZN(_157_));
 NOR3_X1 _281_ (.A1(_107_),
    .A2(_136_),
    .A3(_157_),
    .ZN(_067_));
 NOR2_X1 _282_ (.A1(count[9]),
    .A2(_105_),
    .ZN(_158_));
 NOR3_X1 _283_ (.A1(_106_),
    .A2(_136_),
    .A3(_158_),
    .ZN(_068_));
 NOR2_X1 _284_ (.A1(count[8]),
    .A2(_104_),
    .ZN(_159_));
 NOR3_X1 _285_ (.A1(_105_),
    .A2(_136_),
    .A3(_159_),
    .ZN(_069_));
 NOR2_X1 _286_ (.A1(count[7]),
    .A2(_103_),
    .ZN(_160_));
 NOR3_X1 _287_ (.A1(_104_),
    .A2(_136_),
    .A3(_160_),
    .ZN(_070_));
 NOR2_X1 _288_ (.A1(count[6]),
    .A2(_102_),
    .ZN(_161_));
 NOR3_X1 _289_ (.A1(net4),
    .A2(_136_),
    .A3(_161_),
    .ZN(_071_));
 NOR2_X1 _290_ (.A1(count[5]),
    .A2(_101_),
    .ZN(_162_));
 NOR3_X1 _291_ (.A1(_102_),
    .A2(_136_),
    .A3(_162_),
    .ZN(_072_));
 NOR2_X1 _292_ (.A1(count[4]),
    .A2(net2),
    .ZN(_163_));
 NOR3_X1 _293_ (.A1(_101_),
    .A2(_136_),
    .A3(_163_),
    .ZN(_073_));
 NOR2_X1 _294_ (.A1(count[3]),
    .A2(_099_),
    .ZN(_164_));
 NOR3_X1 _295_ (.A1(net1),
    .A2(_136_),
    .A3(_164_),
    .ZN(_074_));
 AOI21_X1 _296_ (.A(count[2]),
    .B1(count[1]),
    .B2(count[0]),
    .ZN(_165_));
 NOR3_X1 _297_ (.A1(_099_),
    .A2(_136_),
    .A3(_165_),
    .ZN(_075_));
 XNOR2_X1 _298_ (.A(count[1]),
    .B(count[0]),
    .ZN(_166_));
 NOR2_X1 _299_ (.A1(_136_),
    .A2(_166_),
    .ZN(_076_));
 NOR2_X1 _300_ (.A1(count[0]),
    .A2(_136_),
    .ZN(_077_));
 MUX2_X1 _301_ (.A(uclk),
    .B(_003_),
    .S(_136_),
    .Z(_078_));
 AND3_X4 _302_ (.A1(count[30]),
    .A2(count[31]),
    .A3(_125_),
    .ZN(_167_));
 AOI21_X1 _303_ (.A(count[31]),
    .B1(_125_),
    .B2(count[30]),
    .ZN(_168_));
 NOR3_X1 _304_ (.A1(_168_),
    .A2(_167_),
    .A3(_136_),
    .ZN(_081_));
 AND2_X1 _305_ (.A1(_082_),
    .A2(bit_cnt[1]),
    .ZN(_169_));
 AOI222_X2 _306_ (.A1(data[2]),
    .A2(_092_),
    .B1(_169_),
    .B2(data[1]),
    .C1(data[0]),
    .C2(_084_),
    .ZN(_170_));
 NOR3_X1 _307_ (.A1(bit_cnt[3]),
    .A2(bit_cnt[2]),
    .A3(_170_),
    .ZN(_171_));
 AOI22_X1 _308_ (.A1(data[3]),
    .A2(_088_),
    .B1(_092_),
    .B2(data[6]),
    .ZN(_172_));
 AOI22_X1 _309_ (.A1(data[4]),
    .A2(_084_),
    .B1(_169_),
    .B2(data[5]),
    .ZN(_173_));
 NAND2_X1 _310_ (.A1(_172_),
    .A2(_173_),
    .ZN(_174_));
 NAND2_X1 _311_ (.A1(bit_cnt[2]),
    .A2(_174_),
    .ZN(_175_));
 AOI21_X1 _312_ (.A(_171_),
    .B1(data[7]),
    .B2(bit_cnt[3]),
    .ZN(_176_));
 NAND3_X1 _313_ (.A1(_090_),
    .A2(_175_),
    .A3(_176_),
    .ZN(_000_));
 INV_X1 _314_ (.A(rst_n),
    .ZN(_039_));
 INV_X1 _315_ (.A(rst_n),
    .ZN(_040_));
 INV_X1 _316_ (.A(rst_n),
    .ZN(_041_));
 INV_X1 _317_ (.A(rst_n),
    .ZN(_042_));
 INV_X1 _318_ (.A(rst_n),
    .ZN(_043_));
 DFF_X2 _319_ (.D(_078_),
    .CK(clknet_2_0__leaf_clk),
    .Q(uclk),
    .QN(_003_));
 DFFS_X1 _320_ (.D(_000_),
    .SN(_043_),
    .CK(uclk),
    .Q(rs232_tx),
    .QN(_177_));
 DFF_X2 _321_ (.D(_077_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[0]),
    .QN(_004_));
 DFF_X1 _322_ (.D(_076_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[1]),
    .QN(_005_));
 DFF_X1 _323_ (.D(_075_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[2]),
    .QN(_006_));
 DFF_X1 _324_ (.D(_074_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[3]),
    .QN(_007_));
 DFF_X1 _325_ (.D(_073_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[4]),
    .QN(_008_));
 DFF_X1 _326_ (.D(_072_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[5]),
    .QN(_009_));
 DFF_X1 _327_ (.D(_071_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[6]),
    .QN(_010_));
 DFF_X1 _328_ (.D(_070_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[7]),
    .QN(_011_));
 DFF_X1 _329_ (.D(_069_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[8]),
    .QN(_012_));
 DFF_X1 _330_ (.D(_068_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[9]),
    .QN(_013_));
 DFF_X1 _331_ (.D(_067_),
    .CK(clknet_2_1__leaf_clk),
    .Q(count[10]),
    .QN(_014_));
 DFF_X1 _332_ (.D(_066_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[11]),
    .QN(_015_));
 DFF_X1 _333_ (.D(_065_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[12]),
    .QN(_016_));
 DFF_X1 _334_ (.D(_064_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[13]),
    .QN(_017_));
 DFF_X1 _335_ (.D(_063_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[14]),
    .QN(_018_));
 DFF_X1 _336_ (.D(_062_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[15]),
    .QN(_019_));
 DFF_X1 _337_ (.D(_061_),
    .CK(clknet_2_0__leaf_clk),
    .Q(count[16]),
    .QN(_020_));
 DFF_X1 _338_ (.D(_060_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[17]),
    .QN(_021_));
 DFF_X1 _339_ (.D(_059_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[18]),
    .QN(_022_));
 DFF_X1 _340_ (.D(_058_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[19]),
    .QN(_023_));
 DFF_X1 _341_ (.D(_057_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[20]),
    .QN(_024_));
 DFF_X1 _342_ (.D(_056_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[21]),
    .QN(_025_));
 DFF_X1 _343_ (.D(_055_),
    .CK(clknet_2_2__leaf_clk),
    .Q(count[22]),
    .QN(_026_));
 DFF_X1 _344_ (.D(_054_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[23]),
    .QN(_027_));
 DFF_X1 _345_ (.D(_053_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[24]),
    .QN(_028_));
 DFF_X1 _346_ (.D(_052_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[25]),
    .QN(_029_));
 DFF_X1 _347_ (.D(_051_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[26]),
    .QN(_030_));
 DFF_X1 _348_ (.D(_050_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[27]),
    .QN(_031_));
 DFF_X1 _349_ (.D(_049_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[28]),
    .QN(_032_));
 DFF_X1 _350_ (.D(_048_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[29]),
    .QN(_033_));
 DFF_X1 _351_ (.D(_047_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[30]),
    .QN(_034_));
 DFF_X1 _352_ (.D(_081_),
    .CK(clknet_2_3__leaf_clk),
    .Q(count[31]),
    .QN(_001_));
 DFFR_X1 _353_ (.D(_080_),
    .RN(_042_),
    .CK(uclk),
    .Q(done_tx),
    .QN(_178_));
 DFFR_X2 _354_ (.D(_046_),
    .RN(_040_),
    .CK(uclk),
    .Q(bit_cnt[0]),
    .QN(_035_));
 DFFR_X2 _355_ (.D(_045_),
    .RN(_039_),
    .CK(uclk),
    .Q(bit_cnt[1]),
    .QN(_036_));
 DFFR_X2 _356_ (.D(_044_),
    .RN(_038_),
    .CK(uclk),
    .Q(bit_cnt[2]),
    .QN(_037_));
 DFFR_X2 _357_ (.D(_079_),
    .RN(_041_),
    .CK(uclk),
    .Q(bit_cnt[3]),
    .QN(_002_));
 TAPCELL_X1 PHY_EDGE_ROW_0_Right_0 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Right_1 ();
 TAPCELL_X1 PHY_EDGE_ROW_2_Right_2 ();
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
 INV_X1 clkload1 (.A(clknet_2_2__leaf_clk));
 BUF_X1 rebuffer1 (.A(_100_),
    .Z(net1));
 BUF_X1 rebuffer2 (.A(_100_),
    .Z(net2));
 BUF_X1 rebuffer3 (.A(_109_),
    .Z(net3));
 BUF_X1 rebuffer4 (.A(_103_),
    .Z(net4));
 BUF_X4 rebuffer5 (.A(net7),
    .Z(net5));
 BUF_X1 rebuffer6 (.A(net5),
    .Z(net6));
 BUF_X4 rebuffer7 (.A(net8),
    .Z(net7));
 BUF_X4 rebuffer8 (.A(net9),
    .Z(net8));
 BUF_X4 rebuffer9 (.A(net10),
    .Z(net9));
 BUF_X4 rebuffer10 (.A(net11),
    .Z(net10));
 BUF_X4 rebuffer11 (.A(net12),
    .Z(net11));
 BUF_X4 rebuffer12 (.A(net13),
    .Z(net12));
 BUF_X4 rebuffer13 (.A(net14),
    .Z(net13));
 BUF_X4 rebuffer14 (.A(net15),
    .Z(net14));
 BUF_X1 rebuffer15 (.A(_112_),
    .Z(net15));
endmodule
