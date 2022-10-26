//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Oct 26 00:35:11 2022
//Host        : DESKTOP-I5HHF0K running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input sysclk;

  wire ar10;
  wire ar11;
  wire ar12;
  wire ar2;
  wire ar3;
  wire ar4;
  wire ar5;
  wire ar6;
  wire ar7;
  wire ar8;
  wire ar9;
  wire btn0;
  wire sysclk;

  design_1 design_1_i
       (.ar10(ar10),
        .ar11(ar11),
        .ar12(ar12),
        .ar2(ar2),
        .ar3(ar3),
        .ar4(ar4),
        .ar5(ar5),
        .ar6(ar6),
        .ar7(ar7),
        .ar8(ar8),
        .ar9(ar9),
        .btn0(btn0),
        .sysclk(sysclk));
endmodule
