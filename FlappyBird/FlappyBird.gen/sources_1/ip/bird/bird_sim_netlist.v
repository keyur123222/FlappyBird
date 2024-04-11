// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 11 10:46:59 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/keyur/Documents/Vivado/FlappyBird/FlappyBird.gen/sources_1/ip/bird/bird_sim_netlist.v
// Design      : bird
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bird,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bird
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
  bird_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17616)
`pragma protect data_block
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
8KWS
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
