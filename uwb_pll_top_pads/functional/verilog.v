// Created by ihdl
module padring_miniasic_adc_qfn40(

VDD_EXT_adc_a,
VDD_EXT_adc_d,
VDD_EXT_adc_v,
VDD_EXT_adc_b,
VDD_EXT_adc_vcm,
VDDA_adc,
VDDB_adc,
VDDD_adc,
VREFP_adc,
VCM_adc,
inp_adc,
inn_adc,
out_bits10_adc,
out_bits9_adc,
out_bits8_adc,
out_bits7_adc,
out_bits6_adc,
out_bits5_adc,
out_bits4_adc,
out_bits3_adc,
out_bits2_adc,
out_bits1_adc,
out_bits0_adc,
clk_adc,
trm0_adc,
trm1_adc,
trm2_adc,
VREFN_adc,
VSSD_adc,
VSSB_adc,
VSSA_adc);


input VDD_EXT_adc_a;
input VDD_EXT_adc_b;
input VDD_EXT_adc_d;
input VDD_EXT_adc_v;
input VDD_EXT_adc_vcm;
input VDDA_adc;
input VDDB_adc;
input VDDD_adc;
input VREFP_adc;
input VCM_adc;
input inp_adc;
input inn_adc;
output out_bits10_adc;
output out_bits9_adc;
output out_bits8_adc;
output out_bits7_adc;
output out_bits6_adc;
output out_bits5_adc;
output out_bits4_adc;
output out_bits3_adc;
output out_bits2_adc;
output out_bits1_adc;
output out_bits0_adc;
input clk_adc;
input trm0_adc;
input trm1_adc;
input trm2_adc;
input VREFN_adc;
input VSSD_adc;
input VSSA_adc;
input VSSB_adc;

PVSS2AC PADVSSring1 (.TACVSS(VSS));
PVSS2AC PADVSSring2 (.TACVSS(VSS));

PVDD3AC PADVDDA1_adc (.AVDD(VDDA_adc),.TACVDD(VDD_EXT_adc_a));
PVDD3AC PADVDDA2_adc (.AVDD(VDDA_adc),.TACVDD(VDD_EXT_adc_a));
PVDD3AC PADVDDD_adc (.AVDD(VDDD_adc),.TACVDD(VDD_EXT_adc_d));
PVDD3AC PADVDDB1_adc (.AVDD(VDDB_adc),.TACVDD(VDD_EXT_adc_b));
PVDD3AC PADVDDB2_adc (.AVDD(VDDB_adc),.TACVDD(VDD_EXT_adc_b));
PVDD3AC PADVDDB3_adc (.AVDD(VDDB_adc),.TACVDD(VDD_EXT_adc_b));
PVDD3AC PADVREFP1_adc (.AVDD(VREFP_adc),.TACVDD(VDD_EXT_adc_v));
PVDD3AC PADVREFP2_adc (.AVDD(VREFP_adc),.TACVDD(VDD_EXT_adc_v));
PVDD3AC PADVCM1_adc (.AVDD(VCM_adc),.TACVDD(VDD_EXT_adc_vcm));
PVDD3AC PADVCM2_adc (.AVDD(VCM_adc),.TACVDD(VDD_EXT_adc_vcm));
PDB1AC  PAD_inp_adc (.AIO(inp_adc));
PDB1AC  PAD_inn_adc (.AIO(inn_adc));
PDB1AC  PAD_out_bits10_adc (.AIO(out_bits10_adc));
PDB1AC  PAD_out_bits9_adc (.AIO(out_bits9_adc));
PDB1AC  PAD_out_bits8_adc (.AIO(out_bits8_adc));
PDB1AC  PAD_out_bits7_adc (.AIO(out_bits7_adc));
PDB1AC  PAD_out_bits6_adc (.AIO(out_bits6_adc));
PDB1AC  PAD_out_bits5_adc (.AIO(out_bits5_adc));
PDB1AC  PAD_out_bits4_adc (.AIO(out_bits4_adc));
PDB1AC  PAD_out_bits3_adc (.AIO(out_bits3_adc));
PDB1AC  PAD_out_bits2_adc (.AIO(out_bits2_adc));
PDB1AC  PAD_out_bits1_adc (.AIO(out_bits1_adc));
PDB1AC  PAD_out_bits0_adc (.AIO(out_bits0_adc));
PDB1AC  PAD_clk_adc (.AIO(clk_adc));
PDB1AC  PAD_trm0_adc (.AIO(trm0_adc));
PDB1AC  PAD_trm1_adc (.AIO(trm1_adc));
PDB1AC  PAD_trm2_adc (.AIO(trm2_adc));
PVSS3AC PADVREFPN1_adc (.AVSS(VREFN_adc));
PVSS3AC PADVREFPN2_adc (.AVSS(VREFN_adc));
PVSS3AC PADVSSD1_adc (.AVSS(VSSD_adc));
PVSS3AC PADVSSD2_adc (.AVSS(VSSD_adc));
PVSS3AC PADVSSB1_adc (.AVSS(VSSB_adc));
PVSS3AC PADVSSB2_adc (.AVSS(VSSB_adc));
PVSS3AC PADVSSB3_adc (.AVSS(VSSB_adc));
PVSS3AC PADVSSA1_adc (.AVSS(VSSA_adc));
PVSS3AC PADVSSA2_adc (.AVSS(VSSA_adc));
PVSS3AC PADVSSA3_adc (.AVSS(VSSA_adc));
PVSS3AC PADVSSA4_adc (.AVSS(VSSA_adc));

endmodule
