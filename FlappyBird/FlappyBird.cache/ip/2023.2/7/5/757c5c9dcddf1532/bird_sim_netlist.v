// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 11 10:46:59 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bird_sim_netlist.v
// Design      : bird
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bird,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bird.mem" *) 
  (* C_INIT_FILE_NAME = "bird.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2000" *) 
  (* C_READ_DEPTH_B = "2000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2000" *) 
  (* C_WRITE_DEPTH_B = "2000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
L3xn5BmXC2NDDZqHnsyXKSTVgClGZVy0oGJ8gmE9BMCMTtrfUyHF4P/zDelSVQfbDxplVfHTTe/7
70crDHXBO/ZHX3v8hhT7W2wVFJi6d52jOp4Rgjus89MdglWMOl7sIKslXIWqotZ7dSRfTboTGsT3
N08qpGCPhbM06dsRtigH/y41HaeLXCJX53Uq3cejvodiJdpsufkJUGLDRpMo85LTXaHKO7ESF0hX
2WFqof1H6tAijL4MySUROKNC8xX4PFETwCq/LXlzUoFx7k4YjBMMT/bCri3dnYXPgAe3e9TrliEf
aPAeNms8J4w3Hu/m/D+ogg15guZAnCl0cXBvpfq4ezuiyhbmacWVXZpDcmNi/mbenRwcXDUueVWE
8YBdduHW5AxD2USpxx2yBQqp124mDioimdpnwi+NYhHPxgUh7P7gbt6i73v8PFN3Kp9Yun9hIWJe
hplKfjaRsAQtcB+y6UpoyX6MiqS6xclUtkvBJYqTyNF6kNt7SuvwqaQQ2amxMWi6f3m8gy9jI+ih
i5hOWie6kdRlsrHlGPmTtRTseSKb9s2Ts31FkB+ywZYUVEv768nEoerEn1JymBaJe6nZ8lFRBj1j
Cy4uVfg1Zh/UalljMdbXly8tEEWUoVTxptI7taxWtxKI0h+UfRRyVJgrLUB96wkGpW9dQ7kryqTb
voalPmlg2DytAUDdIGDgpDux6D2Y6JMVmv7bByHwQ38LBxBdBmJQttAKxyYU1V7igZlBG1JrBxRZ
TIDlSFyEDZDuojbH8dTbS4wL8imNbhT5XNDiRpF3IVxF7tjpAFT6ncexWoSq7vtecvGRxRmW06F1
9tJ1hh+oXsW5vCHqbLyv5Yf3apbPd8hkggrtzPKzB01Nffgr5yJMGY2m3SQpURvguSgtY+EoeTH5
EV59Fp8/H9J3ZTi6hho/LWjWqW3Fp9oh6odNDTrtEFOeiXnWWj/omSkikMdJUoBNnBo/Zcr6gBFo
twx6+G4oKXYsvImnDT3w4aQIqI+etv25wmB/lMWPMturrexGrfWGcTHPUXH3Qjz0R/WPYvZVdpC4
Yi4C1gicPQzoXv+UTne8W4t2qZpGErbHCl7kMd2cUJ6anYZVXrzNzVIfp4/4/JwnptrHuG6v5YOa
mQO7dPtQoSuc6z9Tt1bnquFytsoZN+pVqZY9GAhRJ58iSOLk4uG8muN0UQrJkD2jAOjWxNdred+a
4n2/JGZouGTr012jrx5aubO4L1vOwJZfRSU/R275GoEuWdkYlyWWn0jm3k3mS6ViGkHqEPogBdcw
V18m5kIK79a2yCUP3KnXDJ9MlFO971ufwokUsdr5zAFdXyl+DAs+UwcDs8+DbddQbeGPRwzlhPcL
e7bFNF3rfrzBnbbyrtKpNxKlAlE+sSgC7lQm9vbFfFFW8Tp4fK7g1V2FPq+l0kSI47GNGQbb/v8r
N2Oure+LNp6uDyN/Fw0dEUS3imLyarSdsZGZbTlltxeZRl2vbWps850z5xN0ou9NVz1zYWPx3fru
zdjUBZqVHu7eUrg5PTNaVrk7j5cmYyrc3kjHcXYW54GBi0gU9dmPrYl28hNNVXPfnZFE9ApPFWh+
VfbQ1ABnqRiszoEmO5Krr6x1WOYEhdnLfXJEM0Z5Mk7HyhSw/kPTx5IvFzS54FR3V35At65pUzCS
BpO4q7nUQbw/TCVauTwU54L4YsJPdUp4VEPtdex6KJtoUjjY16VROX7nKcxYXdp66fppm6BsdUCO
7YsfvUKIBMzgvzzSq9WPG/sNdn/TpFlQejrxdehX25fGPr6Zjboj5189mcfpPCduMYUhYoI9KSMk
zebk11ZzN3DYL1CVo6MZMT7tEziJzAJhOUp1hrbiKaAylKt1AQ0ZgbhmsSXtGi1ovBMBQM59mlDy
9mZDNqcIya7Iil8fziud/9sH9sJD5flp7nbzgON1HUyXPeaXYIjzieX4odH4+ADrrylPbmKtZBZq
xLdQVl7l8IpyA4MC+Ds5VCGMaylWoAXROGOhh4AIlgH2Ki30LeD5F/RvM32BwG2q9eaOI37D2et1
CFlSq/M8T9UkgF6wqnSxklImVsUwNpIhZ6zBLxmT80CTr+jsPevJSTUJZftschKaKlzf36auFaud
2e8zc2YO0vd+UALXo3nfSECFDUOM+3M5dpvW4RqQ2Ys9iB+FJlf8m/I73MNM3w/7/c5ZKmVMfNR+
aaOXjd5AHuFKnGvNzY7eZTlkdDGP27d9Nckw6i0mU5+q8p/+Je/teeR1umOl4d2nbP0aAEU5hNBK
A/1mj5jS5qQSOl1CBq94mE7Ylwkotl8EVZQr4umOFOa+9AdWfKDUumMXQ9eZvqvA8luehPj8HGC9
maN0dcgioXKkDhBqRVUDWpTsAlIR8H4h62X6fg0iOJ0pn+LqyNM3am0qH9M21ckh0N9BiGgAZAgM
jo+7eTVLP4mPsMk/+ZPP+VhkC8KhOnGSdGnC+s1FUIfbR1S+21q7nOcoapRwstDNVvNEsSAmgFRP
Jn+x1FTp4dEQXZlqcsbTYS99NZyGQTTdruSa8iMQ5jzHlqjfq55HidqLQlao/cPiotmt1nPw9/Ci
3cUj3oBjFGgiuCNKcanFLQD7HbJ2iNMPgzYKZG9r/oIjrczYrOwE11cDyGyxakkc5+eUG7u7mGsa
Av6stxWakG+QlzcuNDn58XXuT2RD9Z/uESdNESSwCy/crWq7QcwMb0+eak1KBUCMLpDykAnlfVkS
mZjop/WmGjMjXPckdfbZh7W7bMv9pGI4bOY7VmyW8SAX0aX0SEXlcFtCp5lq3HqjfZt9+g4zZpjM
rWKR+OeSUtRBWqHxN55IGRA0aPf2kJG1OiYPzPzIomiPHi98N5wKbe2DoJBb2QzLjDLr495Uqhuo
EtFImDjKVpdB4XsFjQjnsrb7MfShlbvLMkmTeBIjt+VrHSSMW4CwmnxgV8hzJOFsHUJPHAnwk/GO
lHsp7KPLumZMqoiGWBsSLeCvZr+lTt9WAXZhb9c/yIFmpPZExlNqN9CvSs7yY1P+5ZhsQmfMj1Od
4goSmhkF+58Nq6icZJec/4T5wBUaL7ex5Xj0gSKfNE6jnbCEoccMFfs0aH39Q5u9Fx2/utPreSI/
M+oU5qNe1rJ7r2wJ4AgmOMfjn6g/cv+xqzvKHkQnLmk9HxWVPJ0VCV67h+Ae/zJ0d1iUMlJ1kyML
h2eqvEra3BPTsTIjHLKq1s9x7VKRIUkHQPDHfl2LQDVoq6Hc0JptCgRsKkITlVr2JmlHbDXDOURm
dGLTJqeE1QlwSbuRfFC+xqnp2yMBvAqy5kEQFOPdPNTq6Syxz5uDdpSfnrxeYEEiEcbkl17JovEe
34A9uIyfIOxsbyc0wKfYC3DiTVl8kZSdSvFwQH2fx9RaWctfuD73U4EOBWIeydqkDa2FGc3HZw6O
YkgGzNrG2jfksqpmEL6lyc4oMEyNAbOaTpb9XwYLecmbghbpkzZDczLI6nzwCShPPrC85WnSYWWV
hfVzxQhNqW0Ri0ZOIdDrkDa7tTgx8llgYLcY/Y0yNccTpV1ZWoQVMxtcmNGv4UMLMA/X4MEech3B
lREAz7UrWb6fKlXs6+O/dhzzliKqchUoi7B7if/xDsMcd04K1xfIlrLTqGE5Rjykpkwbrq8DKd8B
cTZcVMoAMiwWVPEkn3fAHsBeeoshBw9176ilt+mNpVTqzulvUNxetmFI+5lo195zjx0z0EwsYONb
CMod2Kgl8dnm6eDmxzCn7hH7TfI6wcLdEUx+gvcDiGQy2q30a7dPUXTti4PKxs7dTsjSKz9aCLvH
iOFntE8BybIi77iYWDqXJozSUESHFhf8TaTQNHXxkVtpv6yVNo7ya9VWnvL6ICrASKQYXETLT/PJ
/1QSCdxGMfNdAj64bKkwfUOpdxhoSRsv5gwUNB3RwQrEx6haK7Gb5Y2sGMzDP3vGHe/Qf/HgUGrO
y2af9NfPvPe/ALRxUwKxF0Bw8D4zFFBgzJX2HwPJOULr0mm1+ADZdeunUtAZRxDclQ9M3MQ8SiMb
kaWptuiS10i45e9pfxxeoDVgF6CwBA/9oRbIJWJ0CpMOi6tNMtkdBjFsl3gZHONyJxblahDittN2
epNKAbGsdjSSLiVRFHIt5lcKHn2Enc2WMexvQrqgO73XWwp10pK5r+qz+P/MxxNr3OZhCFbznOn6
kkF795VMHZTHmQSADrOAnR0Joc1GIUqmxQWe77XeEPjmYFW3ZY6C6F16Kr8sCpOq8BxU+X2cLvOY
Hzyj2IysMN0PlAPiiGY0ykamQPmaBJw0vwnijpMo2mFF5qGSwcfmxhdlfzymTRWC3Oo8ZlmOU69I
CWm9OwllgRHLpmxgLW7p+lhVim0DoniPd5o3WXK6g0C+YyAGzV1fHs0ITfaHh/HxQGa8rUgx6Bk6
cMe97VhqCbbPTu8z4S3K2rvKRqDCfmEiR5ptikk3Yd+Xw7EjdKIzqEBTpWr3A7tW4Q1HW5psfuG/
KjtTsc/kpSQmRkOQk2dZhRjUCluOBU2bN3830n4MuY4PAOc3k4tK91OpkMDrI9nY41i0lwfpq1jc
du7L+rsi6NLN/zH8xw6wKNOKJhP36RDGlSYyt4xjFDgq+QdEzHGPd1WX2+d7vTvksyWF5uF58c/l
YM8NucvkTegvVFdq0yszNCX9Sr0/VRhBqyCtu/hgqqt9Yl6efXFdvqMYK2Lcmt1hzvPTiebqQ1Xh
Ibb0KJpdqPRAQ3IfGVNKn3VOyRivXTFyg7asOozuZ2g+2Jhb4162+gwDFUNDGjA/NPEDPN+3C1yq
3iEjcYxQ9uqbJiAcIVXdz25BTrKOfIpgKea6Nr7J6zyFHOobpKsS8S2z8oOH5K1TfEnn6qS5Ihkx
XGly81I43m9JgkO5reo4QFZ5gMjzlkHSFU40gbRmN0etnhtCFWMTQGOIRHNqKtl8iL4A/eu73Ehw
g5TmJ1C/8+GGlHqoLOJq1FcLblAaXj0k883ScUDeTUQhneuUDogTATP9aOqI/SNjIKW68mZVAlpj
gXlw1z8rWl+5JLBnuLPLrEwzCG5jmD4ObvQVZ51YQTPeyu7YwQiwFup8i+Ppp0z4+hU0LG7hkJvC
OuTb1OIQPnMWb56XBk1744u2CITjPPm3yiRBICSbvpBO0+CHJHvRSPkp6yuH8N031nRgBR5MhHtp
zH0pX8GHHAzsudQdR7uT9TPx2mv+1TyTmCfOTg5lUdmJdNhWZBctpEKtyfmLoY1bRHGL8jnlx3dW
oay1uLNtnicS6dLB9nhRH8t9xSi4zvy3ssd5VTk95e99DLrqgDqd9qxn2IMchpLrWYAapfMvPPYj
/MJOt3S3HG/DMAKCnhHWgFxdR3gx3DlcyOwzAOEHiyi4vYM7aM12kzRK/vc2Wp6e1saHNjShw2R6
Cz3olGeDoAHvmMS4PI+J20W7ymi5KfortsDr+QJNPWIQyQNvyW61n3Nhb7dI7VGXxSDgcs2Ra/t4
XwLTXJyCSrO77NvmjU70/8DKB9wGJ/OhdJzCg8Y4Duz1qCFoErvx79x+l3RmiMk6Qp3Nah4Qc7E2
6au1HOV5/LJ8z+WD+2uBGkcA1ZSS/enFiFEOEovnCfB/dEfHmOjDDl7uCndJLnUQsdD7sQDGzNjb
1I3vdaaQvNUxx/tyJoblkPQXRZKYj7cyvFspZq8+4fiMt4IwbXvKC6UqC5zlMp3LivZw0HYLZ/93
a1a2zmTRvNWN1kPJVZASNhhUNOpxKV6UHfaknIDzFxYHPZj3WLXApa9jTd3lh+jLIaRCgFPShcdg
GPD7zAN6Cbv5GEIykBqRo19Dymni8XhhygHsUSPfiXovO2qe6vN43GntSyo2FGAvIUjaeLp5jemH
eooN+PVIoPr4XNFbtfqvHI81W1KtvCdZssQFBqE+HSfXVZejQ7GQw1j8hZkOBMU8wkvumfbBbyOU
ax1hr8W1gC6foLA9jpKlQBqtew1MIJqZwdHJR1/BfMDGBnyZaq8bIQsh3zY71DYdnJyLpWkKCpTp
QGVRAllW0fAdcJdIcCiHnbJa7iEcE1XEwj4xVKPfxFXvZDqS7a/WF8CuClJVvupTHaHtFk9MOHGg
/Ce86iytAKd+hN6qjpEMMLKhaqiYuea2zJmPFG5Xvu3fMYydTrxh6WvLMLBLkvK+pcpSD0KTsUqf
WE1JZqmQGHfzd2SySAemaytCzjIMWXmA9/x8Dh4jJaLwfJ1ayUsBdQzrcSR1gXbT3mrpd1g0QkQD
RYhInmvB3Wqxb3gsEasy6lHI5EC+jWSoxxtbUdYQjw2Wc98MWalPZyJ4s2holikIri/0YGnPBmrw
FQABUqNqh1JYbhB/L4Sk9eNHK/IDbS8oldzPB5osl+XT6K6RI8HDm2r0H2Nfx2VYdefeszbQnbZw
+E6D3Zfx9p5YBWpH5mtyIA+e2bXGxhg9aDZzjsIbn4L+pYrKH5XJLDBoVs7pBn6cXiw13vIR3Yc7
RKwNEUGlU84/W7w1KPDsyIg1kCf2H6HSLbN1SVCcVWRwTjuW+28q7gfqE85Easj5vspjSFXin5uT
LoHNQnJBWpkGFhNew2LTr0W5/OWUB72aP9M760At6pjdp7fL/HEVALI0m+UZ+IYDuvzFUa4rFvVU
Ed+gpzAT9leKB2mW33pQvc667/wxoGPzCftMnhE352IlDep3CCfCXvL0ElYvg6lIcFwnWutBdu/S
60+UljCMLI54Ag677hZCzQdZX1Rj/GxlBYsuyZR1WsweqaWDTS+eC0aRmyXpSrzfO9iBp7m+xkxt
BQf7eW4LVg3qzhqJ0uuXizMIOR20gETddG0clO+5ltx2Ik+NSbN5OpP5B0iZYyyqX2ma5HOvM5zL
JnRxi3YRCQKCppWNSiyWGHdMrmA7Rs6X8BWzKs3MmkHWc9Is+P1YTI0rEt0zCknVbztCeVMO+v5W
Ohly3Se1n3HNI5OBvet6uR+sBOXgIoOLlALKrSlGHCVSFDjoEf7Pq/ZrwmzAJ2LbBFXk3x159475
IkvCE1aHpaPBx0epZOGkjkyGFtYVTGFqCZrW9mFtE6Bpn0T3jRbre1KJumWf1CFB3Hv7J7F+zhH+
FP/GdD37IMIQkNMEicE+up3SsIjCpNYovgUPUDVUsmBLQPMY4fyYnRwy5PfLlGD+8z23eZrkEmFy
M8+0QbRNqHxQ4X9J1hiD0XIHrfeA8vq8DRVNzRGpoGOnqmGZXWgF/k1ZuQeFY/nTSM80XEdpSy4h
fL023AXlVyzLtko5IKBMeDNsn7sC8jqe1ZzF1De6L6rmU47Qic/zcLY/8IQecxAvAg5gAy+8JgxC
4o/8YeB+YNhsVLut9ZdkMiptgzXjbdK7js5xLPekQJOirgl/YE0dkKOUuFCHun5OupXR5m/J0GHb
oHU2Bv7eTGVV2Pnmz8wkosO5NrxIlGPAulWXH/D1RoiYuo1jXXscbdCzoQ/83Z+7NCwJ2Ue/OcvF
K66CJAjkwCcuLGXeKcTHe/cXmfQn8EKXBNOsrSjtkG2aeARxNhStm4WoQu8GtiacWqIuKJIcwVWJ
ABO/+9mFNL+DJyxYaeLsnXyBQsTpjZZZaTr0c4FfvRkgzn3SgmhJffe0xQ3QZIbI4ogE+MQ759Sl
H68o/6YtJRK5WT8NhHoR3euXe+i9GuNrpIKfjq/giHHAOQUT++zGvO0BD2IRPX6JfhPh4Qb/GrHI
w0ppIGiTiwDnfMzyNajJFOUiDr3xLlDWngZBPVGxrcDbnRpSrg1oljSZz/c2RmdZdCg8QwNvN0wF
kRb6TfJlvvVtgrv3pRxCkot8FHIvV96U15iCWyYTPZWTsRDBsu8OI69liJskRH5bnZSS5PgzSxw9
D2GAomrsWEwX2A1l51EvdbAiMfF/a9LhIjJhVwaQK/PrhRZJwAbFy0V0ZqZ0gupLk3EL+v9vULl/
bgcLx/VR74JzC5NOquiePvadqiesWYnA+6VMW2kKLMXiDT250kgfuDVft814CAEU56F1stvfJW1o
B624BlaDrH75CDQ0ADMH+x8aVNMj5Fwcq6r9EDoZoeV4fdZlwtgv8Td23aFTwmMuuYuiZwR0OCsm
FDQ8lQiXEn82zhEUgLfJZCzx1Sptza1GmE79R2lglp7Td42QjUoCyFG0ntQ0PeXrChJM4NEuAckj
S8dfb0VKNUeUXOAvSjpOEXHCA4MQICFrCIR7ZCCbYQe5UJHx20eh7QTaTAFin7ihPd1qoM47WegP
U7O+DIheWFL+vD+wf8Vy1ylA5GlZSS+VMMLZCi9/C82pc67lZHz7DrvoSyj4s49tIp3N9VgCI/X0
D6lCCPpyJT3SZrRJnfXs0W1CAysGAPZWeatB2VOs34Vo57pYvm5+wbSByB4veNrXvgY62Cu5dASi
ngArPPj+tdEPBN3iAPjy/LEQTbf8HKiUklx2sAnQCMbvhZ1xoAkd3Ivk5AtzifdWktu69hRg8MD8
aOttaBu1cWyB+3IqVm6es8YTC7WZx42sDqkEruafcGuYHbHRXKc8R3FEC5AEQsWoiq5Pkv9Xd2X9
sNa/8jNiQphriFVHDHALIqe2evWsgCTlHflmNKEQhNPP+b5p6e/niO3gG/2lICOZtUBPudyva6hN
8aMFCGll4rWT2vV8NzyRZOGiwqfzU1LHkQx0DpBgwNyl7BjliR/5NMQnJk26fV87vc7R0HomVgOU
KaL0x8mfNON3wWCg6ZCyf6OZg7CvlNB4msq8dt/BWv9F4rw8JLA4AudNj3FzN/s3dQ9ngPakZJTC
Fm5PdbKV/AYoE4CbMWx2o9mUj0ZxtsZxAtqOKJWxfd5v5bjquzowIz9FPSs0w5tIKtDug34CuxxX
0nhCdG07qoEZqS5jRu5zlDEsCnqKRnPg+fRhMY6J+5m8ND67ahy3ifzEm8Yu7+9VJiGyeEpC8X8J
FQoy28/kK2ijX/o3uvsWkoaAeXBI3ZwXa5enNgFENoJ0dfBzV1VwT0Zz/cZ/SKa4pBEnw7xlbRs6
Z1Y9PYIam1QMOAoVeAOcujZSAsAFCXi0hasTlEsR7n05NGbw7DHvXnzOupOwykFhDibJ/vqkSYbL
44Y9hyNNALMnT63y7q59MQxdzG5j7U7OsaNmJOPoUzZqQvyX2mM8zaWt9mJxhVGWY+frrXonYr0V
nwMJc0suSTvfYgf/I6T2sv12gQI7cKXRS3GN0EkQX6W/7AYF92auxvrw/sRd9cgFCapVccidq5JV
9Yn7AGwIFfIypI49HLumuDfzRbmrdDj01jvIr2f+s/dVUTqn2bKf8R5EamgNru69gTjm5MWXevjD
5sSCG+iBoOEnUnSy6yd+T3qk5q5cvRlY0jN+q9BHQ2zoEJubeOkDebWjWtXWtiO+tYjISm0q91t/
jxOPHTFj3Dl+36U18Fpk/GQjWkmBMvRWF0SHmjUqBXFzD3uPolo1GTj1ta9o3SejjD4+I3bzAJ3s
8ZKTmkqiJa+ST0pO3ghzKWG6gg3Xk1+O5Sb+69NPE51xJEu/Rk7hcjyITfp0cPDaABN/EeThCjG9
lvzUVWrf1KYMNcgZ5LjNkklfHZd1NZrkfPy7HM4ymnUJcMXQVYrEwFaciF/APffENHmcOWn+36be
wtQIfeyATTWrFpHSyx3RJhTQNN2SxqmGdnB2ToUH7+FJ5HpZxOn+vNA91VBKMNtUQOxDH/m+LqjI
WNZ9MeBhqemstf+pP55eczYNHxYKywX6Vir2DKzoAlloML0WX51+Mm+VgQ1bIX6hF2I+7YQie20l
TFE+4kQMV7p8+E6Zyri4EcFaU4W21ta0TfpWB+mzRrePkEv5C7Un2HdqufAJdlY1sjfNzt+cmAci
VKmoCjdnTY7+4YZHDBkXyOnxqh5c7JdvBF6xOOCMqfysywxh+uQIV4biP7WbHbbvdCi/QmYLXH0f
xrH+zmggDsGMwrOjK8alt7Ca+yjnJmWhyfo3ixMgVNY0cuYPUzqjiTK6ulV3xbkpk1ojUpIujffB
M3w72oqvr1y9JD1dFbd89pmA3UTYvqzum2805c4gtfR3wZItyLYfu+cnAs4MBi2CHbFtFQsSAgQo
RUQrrxZMtOBLvIJ6mLyM4UIywtn2arCs3qDWqWtBZbLi7Vf1HpMbMYbkzv7rSaWEryRbrxXBu1BH
aYpf4B3VaSODuTfpBJ/YLvPx4Gd/OUmxWu1wAg49ZPa8ZPu61gHYzla9Evhz6I8lcHLlDqmWfzUC
CWz59eTaY0wVDd99Elt1FyIGL7PDGoP9Wbr5u1Bj1K3ZuOazlcXzeVEibWi65cFFcSsqp/Y9yJw7
cbHHY2vb8jlq8kxLrONku+LjyjihZ7+ki+YxLUgSRrnFuXA/rP4CHPe4FBxEzCLOldMHJdipQu9m
dOels7TWn9ZxTQzqZqTDOnS3tBeNhauLOXrqdAG0HinMePC7L1vPo+QPO8iY95a+ZVuMNjCtUawJ
/PGkJD5qTCCDmC9p+XxjJPT1LIWqWM/5xiDlemEKbj6pucQXkIOqrT+8YP/vu2HGtCzJSmCN8j+V
rQDWKgJnsXi9+DmL+im2kXDDuvXhvSWw6NCU8thrddtiHgUOfGSqkefTZoIIT5htpvSRpUK/yV3z
KxFwYHvuMaGZo/v2WkH5DF00Z6yRuk0oTENA6V+pL0f+pFQ58kHRY/uNeEV6X6Nror56M5FuVqCo
8t5ipTTYMfkNfrZ+JJ5w+2PPpslhPXbuy4dSvVRMEdJJfvRAkCJqm/C0OHLQ7PiyNlAiabTehWQl
mPk913GlR3N7ocYh1x+Rqrp0R8AA5AEe/MleXLfliCMY+qLpOCG81Xb1v+J/4Ta4JNi8l8cEe1D5
Y02Km1JMBZQ3GQVymB8rndPtQ5dds0ZF02orYbCEBIt52pW2sH10obTyCknndHvO20Q1KzBczdWj
by43RhPXOgFTIunxSz8WesUNmGnA6WEQHCAzwB3QoaJHTsvdI1oJ7L0y7U5pLUMP6oEGWS63QKmK
Cyj0B9hSNE8ceqH50Z0e+GITtBuSTCgqBIMKN9xM9vspTPRGaoJUyeTpkLwINtaMwQy+cQB2hOWH
eanHk829Mwv3zNRWtIJCafIF2ASh4JpJ/YHSitqn1w3uCXg7KC2+m6FSxz2KL0v83XXe6BcEYfAC
+13xKEbri1TvIi3DZX6VYyvv0en3p8oXitHhjtTSu129xZQbrHvUsRfMhDQesfHo9BCuhNDUbXRZ
FgyPnVABy7pNEFKEadCoC/GmTKXMySU1bLSBVmjNcUJNAeXqGgy4oDV16g49feQrESO/Tnhh6BdD
J4RRjUNAGgzGypc2p5HJZkMgt8ijzoGLDEZsn072stjxJLKgpOdKa0jxGxapJHKNYR7OKkeiCR61
Lm9+AFRqanmr8Zp3u/20uHWQnphPYaKZBI+ggjqfowCRZmff5v03htxuBRKmc5IagOEjtEkDgsTY
vuc45Ds8c/Nqu7uDL4sZbX45UNMOmmlp7txdkrDEZLSw2COTUbgssgkruvSmo5i/tTiz1FxE+gYZ
2AlQ14xSOk/CayeKRNIxcVkW2znIfViwZHrizr69xAOAVXjAYlilQlA2nbDPjph1RBhCLJNbpS8j
4NFSfQry6pLqfBhS/19ub+5zpXdDY6jV1dr1tpJpmGgCKuVDHAUaoenhhH6TiW5nUE9ZUHehskbg
igIf6eWSkB3iqbcvp5SguNvVpSRUFGshi8REiDDiAbVDXZAp54WPxIDYypIAjiNODU3jBrrmz11b
cCIJ9YYRLOT5wn+3p8ESbO9Ik5sf9kDzlFlyJXM/EREbDrmTak8akddKqIwJb3QmSEljHBCUBSes
joLdK8ldrAVfQg0OSNZaolu2r1R2M2iToMYrFBQjijTb4t7tVHugf6gLDYAGhBg6LOfAiEhxz/Wc
jBU5trgxbl2s9sw5I7XmNBAbyPYq82JEJvKt5pxkO1M73LQB5dOZOyWW3ZRc5VZo3JbijPloqqVL
aAnA26186D/oloQ7FiU94RoaR1OTjyL9TD8Qhr3h4td6fD/edhcRrKICXgdnCDy5USu/Hm691sPS
4eG1MlqdQtgwrs+zV0wENxW8hLEyuqYWfgo+ZDsEuSRCqb1QTpDNFF1WvFEV+HnmfE9LJk+uObt3
fiibk04hZK2WHTXCU5Jbq0rvP47e9pKZBMlpaAl3QSAzu3p/jZTrfP8Za0x+Q2ND9vUd0ot6mZ60
EhGmSJXXimJeGO1tbdKWst0j+pIoi11zyP0nY63m+qji0bEK9ixYGilMPHguidFLj8XFjaO71YHg
u5NMhW7UAIBEnIQnJA76Lovgt6TYZ5WNfoPnWB6Lup2fQLDzFN6D15EEO29t7LcO+v70ZarKnvpk
onY9uyrG++VdiV6Ba5TWoFdh5DO80pxCHpfG4166aBg39YNV9nI+/Q+VIRXCHMq57F9AU2Zdly3p
1UDpzKOGWyMcYqdIbnqNEiQeucW5e3TeZEGnWqMHWCaBFz8uxuhnlGQKqnMnn4imNzG+43SdypIK
tW//Y/nrKNnVRbFacWD6krz/jhyiugnTxqTNJEUi6KP8UGu8fPhUFPEn0D3Wugb49cVJJY3CL6Fh
tR+OiitrHiZuX3rwQot8EK1TLhmvJl2uAOOkSe2JM5pppggmP64MhfR/Bo1J+VIIjjhIc0sd9sRZ
vEV9kJJdiOuo6LRsLZKHU2odnY8LV6y4seOo3Tbtga0yclQ4llCEsDRsxd80QLRKl9D1OhaSme3R
tmNGv5oP+SNzCvoRShbYyfuL/oEZqvp8bJVIZBrpFpVCvAcJPFm4ILZUKhNVegsHvpWFoly47vwD
MeLPRivuK2B1JgUHDo7k+k9hjxIq3nq2D8C+PKcURKWJavBJ0TvVrkqGK/YNsQ97VpUv+9e57oDP
icQQjOadNgBAk61NvciwloUCwCPIOy13wsfDQ9LWr441+qVt3ig/3WLU8358FjbDPrV+lzjrc6av
hRo4gnNMBqgjadcyCT6j0V+XqAeiroY06R2YhdI4rsFrRjnLwOV2U+KrdARTcynxdvS0PTK1SYMx
2Q/aCMWGgKFValwIjQ+m0cp4ReHN8rKYqCc09a/hxbvyOlHfxaP8envi9o4zyQE3oc8ffWS8nfWD
yGT3vytGdrtlYH2pMJE45fdGODXOhd78d8CoSvV+bK7pTWkJIzA8cp996BCv3jre5fAup5yd+cHM
gKu0mtkPQdzy7a1b6RomtRtbo7zzkPIJDLISk+HozV+wsyMLNESBpnAI9hXtZfDREL10EhezHopL
QY+cxhQYBje2734j8b+juPxOA6A6ieG0sHT3elreE+oMo0weTJ5o0QqYHf9HYN9kAI24qKOMJCKr
SCgB/o0ue3xyTKx35k4IxrDRvLbJzzmbNhEncwB6CadY37gokxxADH8aeeoPcKihMBopv1V33vkm
/FKl6q/l2qo25OYC5ANYU8mCcelqfSjWT4qDBXu36O2dDwVJ13lb2GSjqGY772Uz88Mq6iwODOVy
e2FjReSg2gbUECTw2tPDEo/WF1dSKfyZNNA4R8w+Uanf+GyBtZpXwCL4HYmFYUBh02A030HXwS0E
FfbNccHkn6z1cCd1uV9WKSdtEa3em3bUgp8mD3afeRUYfFsW35P/YN1FFqCSRrEZHxxSs0/L2ndQ
TwUNc59CQKRQ6p68qQ7Rbn0qFW9Ou+Gd0xMiM8FNdfbedACxge2zSYQa8waJYEG1+bj33IsG/dSg
2SANBCcecMDGDKZRDEZkAVljGkbubYgvjAKphSzlwwh5Nqdq2j6uapiDuHKIRMY0hc7/SyFDV6xQ
6NCqhfl4iRZHFI3f5aUrCAB18GVr+TZ5GFS5oupaWk+jM5ndptcjtygG1WqcyZ81ebpLD+YEPnl+
YcRcS6IPmVwQYXbYyBm6QOokXlxdIBpAGMyBQeYbdbHxBxQsV7H9u3W+lJu5GiUSymQDzPJSOoVt
y1qVHD/Mr6e1nZQKPsFWVTHB4qEomYi/R67wEkA/6KHbMeDs8PxFyw/iuw9uqeV4UbOKinqyUxS0
qbK18eEd0MjcrHr2mBBNYbgfq8RC6zNLAk78dQ6v4cV6Lctxr/9ITqpV/ZH5I2ptieE2oQjhHBLm
mgtfsgW7Ay1hUtRLgr7tcVJZ0iely98uUlqqyQLW2fK1Ze11DI+sBhuoL0WFH/F3MR3W6rcdIT3D
UF75UTHr19go5gB/Kr9FeJBsl8gnFtlD4khy3IQSWg4zKGOTtEegfbQ7tFdVdlzNs3TbFaMSZMWL
DmklqbWdRFH9Rqu7O72WWISP8IZXsApjMuivxuBcnep0ID/XCEQoENlGDkVAEeB8/54T/6Qkcxbf
/G6blXm8S06yz3QjYPwp5Z6yTwbD43yc1xWMf5L2BM+zIFLT+xmBU6naSq4ldecnmZRSBsQEd0Xw
Xx22ML7L3907eG8z/tQNRXCyewnmgvznfmF5+PXzWSbOz+gZH0DFkRlmdW2sfmfh+novBUYA0iuW
xE3KCXfdt+ZrYClw8pyUBUlENrDPadfKhl+UOBVGn1f/M7RT2Gwg8HgoCx3DAXMgGYnv+kJ8UGtl
BOjnF2GNHs4PUcOUX3dbjGUDhqAAbidERy35TmDhE6QKMhMxbdzp3P7EJtV257OVQdd/vr3sK/DC
1xL+n+6CA9elWcOrxdGyWn2/jy7m0ugXNBP5aRYx+AiPnKaVglFqxw4IXpFAInIIPA1fVGdbAVgG
c2dUKDwG705I3xf74sFOe6vq8JSjtO4s88jlkWne8PBwUVCozVG+dpeZSBAAjLSEd3DIKrb/oN8g
BHTQmy9IQI3MVTm4bcFZ05v/1vaVxllmY8T26yH55qavVfl3SiM2qv+Mea59H+S8wmEx0M49VftD
L+Wjm6Stwz58zXgsi/u6xGEQdWQmbWjKxzpH+jDOETp+mR8abSHYXNYE//u18YrC3tZyrwHPDZL7
DXEPUmSI9eJ1aOnNyOF4PxdrvxSAvlzx0xwzutX+fXSyb+hsEhcYT9PlmMfJjdkoPxHgRyrOqHua
rHayOXlbGX3t/unsRJH+ypzhlx8g3Uz2wsR7uyMt9507h6OvVobmCS8jh2ACSK6cKSNO5ZzdYt69
pMV9mWT7biF2BCRq+jFuPMeMLww02GCXMewh5cMBudogiWMfRfDsH3CYEsJWEfb5Df5iGBhQ6N5D
NuIagq80vIMUdRmNtDWg/W4KUiPWgIXX0cbf5xZY6IpBnuwzwYQtCargg178ZLGtJM/NQM90o2j8
JMzIvfei7XdF8/Tts/aGjB/zR4rF9QGhBMP2i668ngSzJ78hj3V/ABB8r3zP7MRCWHWTK0qYXqCp
+vTVrRiowpxIE/Qo9XFfZKmZcVKawmyzEczbk9CwMwUM5IXNp9j9QpNPCIxGHMcJ7eZZHvnlbgtj
DlHSaTAvP+VK2Vi7Gyyogt3KDgwX1xNqzRS54LMj/24GXIGMAoTf8szRbevyCKKLExQRE9ObUDrP
UjWozVfKB4BBGxwnmI/Tvz0s2fGDbQo0qA1XmfhNqFZaGvzHxBuZPYoTCMrNtPp52fuBCGMdetRo
4nHBiZYFPbm8aPRZRJFeQk7B3g0FPq3Fxi9n3xZzXONomVC41Alw4exZrW6cUo+8YF7ihHyLJMJh
N0exjjVDxfGM8J6m4wqvrbGDIITuE8dwg2PAblBpKXEf3fOAe6G99KBogcy9pFq1b3cjXseglbF1
s6vDrj7fM7AtZlQ20ztzcDm9+OHh+ZqLRaH8dDVCx01obmCz5nV4ly22keSHTOix4PZDL4BrcAIW
nOMqJtbNi8AJtg9tDc6piQoRP4r3IISzhR8kr0HMu++qAnZ3YfZLASv86he7ClC3w0egKMCKlwZh
qtBAqj5UgPUTMw/DomS8p+K3nASArdc6Xf/UOrLJFJlw7Oqr98Gerk56rYD1QQGQVfLMFIuOQsTx
xGkmqqNMvYsSXBrtZWZ1FQNEvQX2/2s92x2nualMk6dYy+pYRcTR3TDJ8leIJxt7JSlZpuv8/hOJ
dpQlebiT7oNwoLlpKQCtIt5Dxx7wkZDPeCji8Ffzuz4qfxhEy05CFyWALc2n4ln5H7KoUtG5n4nl
xMtoj64s2ELkt3sCx9HJ3S5+ctr41dN+uVMP5V8EHETbWUFFBBieu4DVBIZkPZIGwKyFDMMxRbdw
ORNvUMJgqNTtnmDVmT9RZ8IhPJYR0d9pBJR2hI23TwUelTS73Z9LmKs0Bvq6AYXa5WEEVN2gNCWX
Umw8kxwGwZBcv3UVUsS1RAVgEfFSkitn+jcZcpWkGwKnh8Zs17YyAMerep5owDl8KHWRhuhQdrBO
hDnEN2wzw2EqCb13tsJO5Tgvid4i6k5NNKfVu7SX+vQmXWzcwc6F9Yhlfw8XhfQ/+O30K80e4c2p
VphCTyKDFggRm8BJsFsxdKCLlKGaNQK7c7+xNA9B0dOA7UZtfUChpSWmogoagQp5Q6eoKd0S3uUe
jiMQJHKc4lT5dx68jQRLpofuviFQbj6tGj5Ev8bHsv5z4fRFARz/RjeleHbl9D2P5fqhxW8eGPnu
0y04WGORcxD1YV8zEyWKKp485lQEKubM1TAoePM+vR/J/JWqvxjGTYWJuNMLT8k6URlHbSLU8Lzl
y0o2obRiDi0aWIGKR3/bpj3ofkW74Ol7/C9/gz6xNLsZIEqU9iYM/wyI/pvCs3H7bYxnzFtelUiX
jTlS5uCaJp+P2GqMREIJpLZuA6H8esFmZlfVjz6SSR9E70ObNtARBWbKKXbnneK+akR5Ry12w5/D
fxi+jLJ/Tvt4ia2j9JAUFdi/qSki9rd715pWmm5dUXY6iwKep0kSNO2A0sPKvBivd0XvcwIK17sD
/8aZ8UaQiSBxcJYzEQrKH60k4PD83BdxvCMc/8TRyv9iDy3GrybDtQkqMjPCg4BbK3gXrFXxVPuP
x+KDDkBmrA79CIT0cVweAIY4woSCPrc5zD5fs3o4reYvoo8iz6xA1zm/zQpPmNzJDRhhvaHTq4n5
bJgPhGSeavOv4b3m3Oo92WcNz9pNqAfGuIkVQ3oFbMeZJy+v0DHoyno69+l1UQs6fLx+jELORA6i
pi3h6rMEKBmAc/ZjILhWcK3WKLgHj4A0N+C5pVrqrEcT5zM9ZZaodYj+e+bdgaHiEsd4prusen+N
7kXVnlvJ2SOCEcc0G7sfPRPxJM7rgz+W5EUjEXEUrRfs9FgqMS6uEog65urZUs//ElYheE4mdWF3
JrpNy4TklSj4fsjQDkevoN9QkCUvsbPW7EvPm5R4HVhQVADwh8NKAZOeeyhkMqws9XA76fxzAtS/
NaImEKVieSG5XHrHlNG6x5Wuvu6shVrpavVFxF/CCTJLt978eL1JHnw/Q19mfJ0nJP+CIGFFbiWo
OXTKUpkLc6TRIBurtBYgjt3lukAn3Xd8sxI8zdxrr/RkZCG4eQv8bQcyj6LzQ7u/E+GdPJaEQAL0
gUI8IJQP4V7Y0h3OY3H9NbXvdSMAFSRTULWMbUb5LfMS/KWL3dCjbLPwUCUAf8tUr/DuNVXepCdz
vV5o/hoaXTvQnxs2Hpo/OGEtGcZtUnegPqFGj6pKBNaNN/sS5kr/+O1F3GvcLYdvwzz0SpLjzovL
TC9rhmPNhvVBgV+FMaKdRPa0S2WitUNDBHNHT4iJ41IvTc0A5tfgShuuKYS972bhbMTS+9gMPMsG
OIP8Xg7HJpIgXkAiMb3x42CNh8YHRrmmeErxkWuyFOpyCjx82TfP3WHweKaibPNijcaClwAlewhk
Cc1gHmQpByjym8Qr47NwWPh7SNDPwdtRZEohsmTU/VfGSEufE8wc1DU2j0k2O8diBWLPlMMBDyal
T0JV0VZPi9Vc2g4ozlubQvm1eh+MwIn6NmjUMeON8QFzh7QhAgyP9yfwREFHDTJWE8DvFBkkihP6
YFzaCgKATbDqVfCZlHYVDWopoTw6NMzenDDBjeG5A4P/PConPxvOJQiYy8S4caTMcdZbrMWibEEa
Ps5OGHFaRKT3MqpNtIUF06QdqncHREbQMlzsEPXHw6Gxtu80c6Tms8D+9vQNkLJPZJubE0QSMtUl
okx0GVDJXBxFoPlHxU1FNdNIWLI39ge9QZ32SxN/EFJw8m4Tqt3hRcFX4LWCSHxCdtYajy0hfNI3
Gdln8O40ul0YqXHI75UZNQmYPCfCsL6qr9SMpX6oGfERLjoE723T6ETGczELZ9NidzKnRtJeIaUo
MsoZfkv2TtJLYp1Aoa8ShViXyiciLwAYFhnFpYIcejhpUi91yPtCBBvnSYfcieY74wg+8wWryT6X
oU59HEqP9/VO/C4uZ/Dgdpwfxuq5I/6Y9M+EqhyUz4BFqfn+Q6EGpJTtxjNnT3YyOBe9BfRhRUoh
/KSkPfcNghzpmzd0mMKfGzUK0MtNt1o5wLote2SkGg10hVYVkSQZx4KnNGjECR8pzAQ9H1TC2+WP
zxaINwQ2l05FQ6ObZVCc4YmBt9IRdYcD9sOtbBN+ZeM/mbW66qoC+PJDOA/Y+e0URYQFBBDTUCsW
3l8abs+bFvYAK5s9iZAWjxi2hsq2/IYYGcTU8BoZvfjoq548lYw7YTsV2PCggFANHQC/mbS2a/8d
IMY1VgkEiycMO2xPfrO9qJFK1QtTGzvi+FeMZfV5/W6hQIUA1pW+D5PZfLEW+hrkGP48Z8N6DStE
nRBejTbCcVoGXo0RENYvELArrICobd/fSzYS2yH0oBRIiRPEAdh3ak4VfZYlDLsjfOBhrLIK5j+N
3eNNNxTfZuxrTSNtMsk+6ryWJnVffmFsE7yr3mMKc/gsZj1cJhGGQXvo26DTKJ78rl3DuITB87n1
i4KiH0Dll5uR2WhkiBLZ1J34ghyWJVF8ITy+wOwCSVrfGAqEM5fQWDrTKyZfuhSpVe/g0zZjeUZK
QICi4gSHnYyPvuJGkFfwIxFIgYyEp94dHJphLaPFmS7Y7vkksKT0MBxlK4EuCelTG/ytyFRZElrR
F3bXoAgM6yyxhB8i3gjoNUaH6OAxfD1vP9ga6duOrE0hYqfuIHGfntMSUpqOtthAmc9Qafh5qVZy
CyWCPCNm2Wo1F4KD4rmAJDU2OpOzUcVx1UghfVKIdGQ615St96uGV7s2itJciuSkWatFNm4yd+jd
6cuqrUMUldXpK4k20UlhIepfSlqQN6OcQIw7t5xQMCfyXwG9lkiyilxLYbbHPDqYKSwaISPmpjtf
f3cOChdVmV+gAJX4NJXaGYvY4m0pDbaR6CFI9Xj3WBkKigmjXWx2bxc2+WuzhrymtB9lQLvHSCN7
biIb9RUMjIZ3KVPcwQl0VFb3orzo6HPpZbQMbqqAEWpYUB5InEE2RqYJHdYcYegMTCqY3oxkt54x
R67+YJmwlQkhYRfKIisy+v7cHxXxkZvZpY6XdvGqC+Q13ORMQvZ4rZor9aNu0khh9OlHo8BNkk+z
umcEPkU6ahIoMtto0nZZo40vCksdVzCBTi1R2yASz1NxBRUvbiAxyQCJGhkiYlLYcxQUDfZdE40i
g5wbBpam5ODRqKdq7UthMtfNwTPh1AAiDXIVx6bt+spB+43Z19ZWJyFIzM43Max2/FHMOxpRmrel
wWYs1UOak2uC2PG0SB4N0HpSrDiZxGqCasnjc2XDDVQ6sNKLFnaDZSZtnyqnZPaBTXpNXKrn9CJK
ztIkPp8Lbci9uXvVpMCIVmAN24BhTNAQWKsrkWO3n+4Ve1DCO5wCHbx4EWkl7zYAoKrsQUZvXQvZ
+rqz06kMaxVIxzI5UEB54i9ivA9ZAL+rASjC4nyJSWmMgf1T9MovZdORdOlbXWgoINCCrqJHCDQk
ioDqy65uoRtBvzOPrHpF5nBUTkcSgAL2t1jOI9l2N0DLJkMWkbiyPsI4XZ8u6LNAgr0SKVDuLT8k
rGHViDJZYYvOZMu64aX3gcdehxFB3DauPfiwjggPwZ3Y9QH68q4lblvdsPV4StZkgq6m/qp9jrXK
DFO54JS/0UX7JTPo5ccrzQGlnuLL6CLFi+h9nvfl996+3VFNmqvY0U4ps9BUurBXNe5pqD95mw5J
M9nRnXOAYcO9vYmvna7WlzLzUxPOXPkaJwEpuXHTdPqnR6vMkjjYGKdyR4bobXmCNamSYGWc3U0F
yumKxAZBMzP/wX+GNa1zmX24+2htRp5pHoE/9qoPbYfq0Po/pYXc4tYU/t2JLsvAJGFu2OA3GXbR
15t4O4XG8rkBOUBEvVtgU91Z7A5S7/l3BAjdiNoYkYFyhxOm6VbAz/apiCHrNgfXo7wXiPcpJ1WL
sc0uKkRQM6aVhtrymaXDOMcKG4wyBJxCitepmuOGkMhTj7VXlM0TK1+jCfVgXztHqgKR7wTRt86J
j6CuvFDmD9Tpm715RC6xcp7Qox8csA2Ao5K3Ye0G43WXdHv9rIiGXmOZ4IF1mT6DagtigP+38S0P
8yzdhCTApEls5edCxY4tz9fttA+3zEQ7sD2KcFteu91SApaVQjQcSXm11dvRfvtF0UjWlDNb83wh
yczp8OZfJTyfxvr5kMGJBFuOMX1oPjFTx/LBp3QXHL0WV5FnAfsgS3/KF588dl5Omly+yIlRhThB
W7UMcQ7OKrJV+2QjeFuIFv1A7gDmttWW37fJ3f7THUHrX8KLv0zzf2F594UIlEX5Y1tSMSTk0wjf
YLmyPXWC2eqHzwgqyFGLYEWgu8urDfJbd/y9y72mQFO78thAgtH1sywvEVaRa05FVUliINn9V7dm
eKrOOt2cWmN1is6W1UA3UNCYrNOy1nj9EKFjJDfdF01ykMkXRihYKIZc/rOn7fDTgb6JLInnSpQW
wV8fGID7Et1g5dbQ/e5xRATx+abrirzmJYTmDnDE5lLg7+97s0VW4N8ExcdxotcYS/BxjAESFrVO
ojrRfOlSp4c6ALnZAYb4V1KT4SQcx6WXRRdiZf/nbvLVDPQ2wAI+DA+1+lGXotymgfQV3fQ9uWE4
SwmHXVQuv2dKHwT/3SpunoiZV0BsfztLyMP/9Ks0aUdovScWVfEjPRPPLp1CHsG1uDDkXPa5TcGz
uSkDdXaL1NvKQEf+ZBcMgHf85NGctTdt0Hw666BfSVHfys5MW+HOvxFQQQwzbtFD2k67N0xdRYEe
EGU4LSDaQeWDxPKA5+D0/hjjT4MgMoF9eHqUbYqn9nkFC7B2N6SW2UWM3GZ0sGPN6KI5Azqkny5j
7Bwj8bc7bARNIMzJn07df6B0RZYYoAPbHf0wUTfHUGKqqwWNrDj79OYuqpQHoky7R5CS6xp48R7Y
e2xiJAiWBa14aJasbhLH1wLfvTBn5aU40ZZUU8mgKmBoiNS8Ne6DdkGUMXcmCvTkaUWO+vYVkEFV
mJdZt/DdJqsb0CEvLc6oGE20OqG4CkrlpSYZYMA2jlqdcuk5mNDx0mDK/WpqgEbjjOK+B1Ddau7D
lMYviiN87zwmt3ibVbPFEmEagbGCTza1D5Rcvy2YLhUB+i24h1fMvXdEWvfDiZ3T6rGdLw+Oy0gK
9GK+7NqIXCbMCmIjJ+nt4k0chRU6CLq8SOvDfYHWQCsH+gpr/nw8gF1ew3D+pMS20jQmj5eRFqtH
OkI93XEu1/qJsDcWtS1UHFuRy8sBR29Nir9OI9ZohiFpfP06iWpomOtkVLmOVFmzFE5FJ043xSmd
252BQfJQE17Rh33ptQa4+86huxYj7VSVpLNtPrlHhNR9pSxkse2lC2nRwUA7SKj02BzXdmpPN1XB
+1q0s2HeuoLAxRWsC2ASujHhR4+aTtv2DFflJscCzXCPIakT7h+2QUT9moAbYahedPUj99HB2ZRV
PGPC9MimN+hsK01pfIWxOlGMx+7UJCBRXzyHMmzrX/pe/KaYu7mjIF4Ub0CXGK6MS4ifk7YYhb4a
Dnvu0cl6XhTCTD5drnxglJw1O5QjHyTZSumb4OLAT3+RlBlk5PojcOPSnjbHZf9OUwACHYcH9YIh
1PqymicJ2+OpzexUHjb6A/sT3aesovucCY69x+94BAipTJ29xnwV5LMzihKYYGBl8leLCDsjt8/Y
dFYj2iyMGVgveUFQJE5gGdA2y7+3AtXd7e1SI7vb8/4qUAhfzo/a3VP7t/U2BDb+y7VA3Lw/AGAi
2sfN7RqSSg9/BuPsDOTTDvvaB1tQ/KmwUtpf5LBvnRo3nX8Qpb1tOIZRxDOLAzpDXVRKEwH/wIfd
zADNJgR7tJJhy4xHhw8k1L1vl/Q4faX7rMPdwY3abgbhg87iyS7meWiNPyvNGnFAVsIpzAa2svht
h198WvI2mHe5PZM4LA2Lt0ZG8iTnD6GGM8B8fZXY/GVG95IBLkIvEETYjS/OoRaLrUFq6D8Vfpc7
Ii6KFCfqiiwbw8F76Q0UnVAW8ZTG7IrYa9SWbywXp7XEbhJ/Q5QFRNe7y65TKZv+jNV4GM3AeL0S
FOwFdD9jjGWsALQJZD/AbWZkEgM4/72FoL5oN9PSdIr4aPHsRKU0wgIw9nD1A/lgtz7CC3+rrQ1K
PeNctIdlep02WqgRsLwDpEBBv/73uV9ZSTZ3G0TcFyESyQY3dX5qPvb+5O/xTD5lwGUfCnSaDGBx
zIPSYIHpjik6hn/xBqWbVvZJ0/d23xrVEruuQ4SNvewKzqnfoHkCaDm4pj7YfH/XJ0CQw1Oby5/q
CCQhM0P7QzgWLiu9EP2vPyT/ReGfg7xcyJT4QUOQ2vvU7cKIQ+JVxnjzO9UN2S6xgGwf3CFrGKPt
2OWgwNcXuBWYrzLeQ85YmjmWRN0Vm2kSR/qJBMnb31BC+7yVeFSH0YhNFCzIVKyGAeXmP3GEV3Re
6/hKTWr0r2+n7ad30EaLthEHvg6rCjy3zBvQStxK9HGRA7wUkT26aHDyhzeFOOOFrKeEfPHC5/aT
Sa5v3NPt/3F0CMxEdiwYQiB9eBWPi4nFsIv5bot0rG/KUHTIVJMPrDLWp/TaY9ni/KeQICTkcn0d
+GGZe5m+8lI4eKwardUBsPwuQ5bASZ7wnexDW9XS1Ob+7k+IZdrsmK/G3u/g2vX6yyblC7uyfJln
JRmDfSU7ZHg+SWX1NTyQD89UOvyWln0XGO3tw21Bqmt8+SwK/Y+s/94UF1jAc095GPNh2K7+mBjH
x7Jmep6JwNkEGPFZiogiM51CqFSaPvN9p7HFzl0YRXljksfCLFKbjvvNeZrqxlBbNuti0/fwyde0
OOeqhqzcsX8murkWcVz3MITgn6t4Fx6edGYTke410fFzVJotPXOF9DPWsEoqb5AlcowFGWNWYEfh
Rol9NyY6P4uhshxzShST8bzE8h8E+06u850xOp/1yxbqmlteIAhMAg5vPCCQ0FdkrlQhQIo40bGz
oxLu0Cigp4NdFCHQXxxr5yfaQQMVbXHZ1trKGTkbvNFl9kQ8OQkUcwTXlJXbn25XnZDbhi0CbiDi
yJjrQdOD3ccgtcOhl8bv8YXoiaPKZ7DHXAaNUybp2hcMgQISyWl80Ebdl94rfVIRQptzhcC7O3iA
3rOqfeDH00c/X5G+OIaaGk7zAKHrGU/KM96jkwWeDlxfxDkrP1oR+UWBe4DwTO3QvAm9mQxpyY65
G5r6VnsQyL3nJYiy28zWifYtFuhCkISeL/xJ1pjgGlbLg5HtYnkOjsSdlJVKdFcoJaxO1OywMQ2A
9Cyh8EjLRVOmQ3ojy57EtIDoDG12JtdZkMcvm9fqvsC+r6JEZ2COSR8quaidN4cfjNhpmIA6SgZb
hx1yhLPAvPIWHcbbQyIhNDo=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
