//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Oct 26 00:35:11 2022
//Host        : DESKTOP-I5HHF0K running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ar10,
    ar11,
    ar12,
    ar2,
    ar3,
    ar4,
    ar5,
    ar6,
    ar7,
    ar8,
    ar9,
    btn0,
    sysclk);
  output ar10;
  output ar11;
  output ar12;
  output ar2;
  output ar3;
  output ar4;
  output ar5;
  output ar6;
  output ar7;
  output ar8;
  output ar9;
  input btn0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN design_1_sysclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire btn0_1;
  wire sysclk_1;
  wire top_0_PIN_10;
  wire top_0_PIN_11;
  wire top_0_PIN_12;
  wire top_0_PIN_14;
  wire top_0_PIN_15;
  wire top_0_PIN_16;
  wire top_0_PIN_17;
  wire top_0_PIN_18;
  wire top_0_PIN_19;
  wire top_0_PIN_20;
  wire top_0_PIN_9;

  assign ar10 = top_0_PIN_15;
  assign ar11 = top_0_PIN_18;
  assign ar12 = top_0_PIN_19;
  assign ar2 = top_0_PIN_20;
  assign ar3 = top_0_PIN_17;
  assign ar4 = top_0_PIN_16;
  assign ar5 = top_0_PIN_12;
  assign ar6 = top_0_PIN_9;
  assign ar7 = top_0_PIN_10;
  assign ar8 = top_0_PIN_11;
  assign ar9 = top_0_PIN_14;
  assign btn0_1 = btn0;
  assign sysclk_1 = sysclk;
  design_1_top_0_1 top_0
       (.CLK(sysclk_1),
        .PIN_10(top_0_PIN_10),
        .PIN_11(top_0_PIN_11),
        .PIN_12(top_0_PIN_12),
        .PIN_13(btn0_1),
        .PIN_14(top_0_PIN_14),
        .PIN_15(top_0_PIN_15),
        .PIN_16(top_0_PIN_16),
        .PIN_17(top_0_PIN_17),
        .PIN_18(top_0_PIN_18),
        .PIN_19(top_0_PIN_19),
        .PIN_20(top_0_PIN_20),
        .PIN_9(top_0_PIN_9));
endmodule
