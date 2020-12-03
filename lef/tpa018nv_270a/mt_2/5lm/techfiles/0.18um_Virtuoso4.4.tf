;*****************************************************************************
;  TSMC layout editor technology file - V44018um6Mv25b.tf, Ver 2.5b
;  For TSMC 0.18um LO+MM/RF+FLASH+HV processes (total 6 metal layers)
;  Document number: T-018-LO-LE-004 (Virtuoso)
;  Used for opus environment version 4.4
;*****************************************************************************
; DISCLAIMER
;
; The information contained herein is provided by TSMC on an "AS IS" basis
; without any warranty, and TSMC has no obligation to support or otherwise
; maintain the information.  TSMC disclaims any representation that the
; information does not infringe any intellectual property rights or proprietary
; rights of any third parties.  There are no other warranties given by TSMC,
; whether express, implied or statutory, including, without limitation, implied
; warranties of merchantability and fitness for a particular purpose.
;
; STATEMENT OF USE
;
; This information contains confidential and proprietary information of TSMC.
; No part of this information may be reproduced, transmitted, transcribed,
; stored in a retrieval system, or translated into any human or computer
; language, in any form or by any means, electronic, mechanical, magnetic,
; optical, chemical, manual, or otherwise, without the prior written permission
; of TSMC.  This information was prepared for informational purpose and is for
; use by TSMC's customers only.  TSMC reserves the right to make changes in the
; information at any time and without notice.
;*****************************************************************************
;
;  03/20/2000 Ver 1.0a by T.C.Chiang
;    1) Add dummy metal layers
;
;  05/08/2000 Ver 1.0b T.C.Chiang
;    1) Rename PH to P2V
;    2) Add P3V(140), INDDUMMY(139), DMN2V(184), DMP2V(149), DMEXCL(150),
;	VARDUMMY(138)
;    3) Add metal slot layers
;    4) Remove TRAN, RLDUMMY
;    5) Modify tfcDefineSymContactDevice, tfcDefineDeviceProp and
;       tfcDefineSymPinDevice sessions
;    6) Modify y0-y9 display to blink for calibre debug use
;
;  09/10/2000 Ver 1.0c T.C.Chiang
;    1) Add EMBFLASH used layers WLPO(92), WLSP(93), MPOL(95), FLGT(96),
;	HVNW(99), HVPW(100), PSUB(116), FLASH(94), MW(122), CODEP(148), CODEC(185)
;    2) Remove 0.18um process unused layers N5V, ESD5V
;	CMOS image sensor used layers (171-178)
;    3) Add POLY1 pin(47), ESD3DUMMY(234)
;    4) Rename LPP to HRI
;    5) Add FUSE(235), PMDMY(236)
;
;  02/01/2000 Ver 1.1a T.C.Chiang
;    1) Remove unused layers WLPO,WLSP
;    2) Add EMBFLASH used layers MWLDMY(92),MSLDMY(93),HVII(97),FLG2(98)
;    3) Add IP tagging layer IP(63;63)
;    4) Add Bump and RDL layers VIAD(167), MD(168), CBD(169), UBM(170), MD pin(159)
;    5) Add metal slot exclude layer SLTEXCL(158)
;
;  08/23/2001 Ver 1.1b Daniel Yan
;    1) Add ODTRM(133) for trimming spacer besides array
;    2) Add RFDUMMY(160) for RF devices
;    3) Delete FUSE(235) and add FW(235) for fuse window when Mtop or (Mtop+1) = 3
;    4) Add LMARK(63;1) for L target window dummy layer
;    5) Add LW(63;2) for L target window
;
;  01/30/2002 Ver 2.1a by lwhung
;    1) Add VARDUMMY(138;1), VARDUMMY(138;2), VARDUMMY(138;3) to define RF
;	MOSCAP_G3, MOSCAP_G6, xjvar device
;
;  04/09/2002 Ver 2.3a by lwhung
;    1) Add VTP1TC(90) for VTP lighter dosage in 1T SRAM cell
;    2) Add DIFF drain(3;3) layer for RF MOS to recognize Drain
;
;  05/07/2002 Ver 2.3b by lwhung
;    1) Add WLDM(91) for word line dummy pattern
;    2) Add WELLBODY(103), RESDUMMY(104)
;    3) Rename VTP1TC(90) to 1TDMY(90)
;
;  07/11/2002 Ver 2.3c by lwhung
;    1) Rename WLDM(91) to HNVT, MWLDMY(92) to PO1, FLGT(96) to FGT,
;       MW(122) to MCEL,
;    2) Delete MSLDMY(93), MPOL(95), FLG2(98), HVPW(100), ODTRM(133)
;    3) Remove METAL&VIA(net) and CONT(boundary) and boundary(drawing)
;       in tfcDefineLayerProp
;
;  08/02/2002 Ver 2.3d by lwhung
;    1) Modify FLG to FGT in mapping file
;    2) Add error (marker;error) (marker;warning) definition in tf file
;    3) Rename DNWELL(82) to DNW, VTN(24) to VTM_N, VTP(23) to VTM_P,
;	POLY3(9) to EPLY, POLY4(10) to BPLY	  
;    4) Add dummy layer: INDDUMMY(139:1) for inductor 3 terminals.
;
;  11/27/2002 Ver 2.3e by ytpu
;    1) Rename DNWELL(82) to DNW, VTN(24) to VTM_N, VTP(23) to VTM_P,
;	POLY3(9) to EPLY, POLY4(10) to BPLY	  
;    2) Add dummy layer: INDDUMMY(139:1) for inductor 3 terminals.
;    3) Add dummy layer: VARDUMMY(138:4) for RF moscap.
;    4) Add Image sensor layers as follow:
;	IMSOR (128;0,CELLM): Define blocking region of Cell VT implantation for medium VT NMOS.  
;	IMSOR (128;1,CELLH): Define Cell High VT implantation (only for standard CIS).
;	IMSOR (128;2,NPS): Define N type photo sensor implantation.
;	IMSOR (128;3,PL): Planarization.
;	IMSOR (128;4,GM): Green.
;	IMSOR (128;5,RM): Red.
;	IMSOR (128;6,BM): Blue.
;	IMSOR (128;7,ML): Microlens.
;	IMSOR (128;8,PPS): Define P type photo sensor implantation.
;	IMSOR (128;9,NMOS_VT): For logic VT implant.
;	IMSOR (128;10,CIDDD): Define Cell implant (only for enhanced CIS).
;	IMSOR (128;11,CIRPO): Define od salicide protection in pixel.
;	IMSOR (128;12,GM1): For green1 color filter.
;    	IMSOR (128;13,GM2): For green2 color filter.
;
;  01/10/2003 Ver 2.3e.1 ytpu
;    1) Add Image sensor layer IMSOR (CELLD;128;14) for 4T pixel layout.
;    2) Rename IMSOR (CIDDD;128;10) to IMSOR (CI;128;10).
;    3) Add MD's slot and dummy layers.
;    4) Add RFDUMMY(160,1) to define "additional terminal".
;    5) Modify IMSOR's gds numder from 128 to 133.
;
;  04/10/2003 Ver 2.5a ytpu
;    1) Remove RESDUMMY(104) for PDK use only.
;    2) Add HV_40V layers: HVTN(142), HVTP(143), HVOX(180),
;	NBL(179) which has been defined in SiGe process.
;    3) Add OVERLAP(110).
;    4) Add IMSOR(133;15,MS) and IMSOR(133;16,LS)
;    5) Add HVPSW(237) for HV_40V process.
;    6) Modify the layer number of HVPSW from 237 to 241.
;    7) Add IMSOR layers:
;	IMSOR (133;17,YM): For yellow mask.
;	IMSOR (133;18,CM): For cyan mask.
;	IMSOR (133;19,MM): For magenta mask.
;    8) Add the pin layer of two layers OD, NW at datatype 6.
;    9) Add RWDUMMY(52;1,drawing1) & RPDUMMY(54;1,drawing1) for 3 terminal
;	resistor device of NW, OD/POLY.
;    10) Add layers for 0.18um CIS process.
;	IMSOR (133;20,E_ML)
;	IMSOR (133;21,BGP)
;	IMSOR (133;22,BGN)
;	IMSOR (133;23,CELL_TX)
;	IMSOR (133;24,CELL_RS)
;	IMSOR (133;25,CAP_IMP)
;	IMSOR (133;26,CELL_TX2)
;	IMSOR (133;27,MP)
;    11) Disable ESEXCL(76) in techfile.
;    12) Add WBDMY(183) for recognition of CUP pad region.
;
;  09/05/2005 Ver 2.5b by Chen-Chia Wang, C.T.Yao, Allen Tsai
;    1) Add POLY1(47;1,lvs) for LVS.
;    2) Change HV layer number from 102 to 141 to be consistent with 0.25um HV process.
;       Add HV 40V process layers (CFCHOUA):
;	HV (141;1,SH_P): PWELL shielding.
;	HV (141;2,SH_N): NWELL shielding.
;	HV (141;3,SH_PO): poly for HV shielding. (0.25um HV 32V TCSUNG reserved layer).
;	HV (141;4,HVIO): DRC dummy layer for HV IO guard ring.
;	HV (141;5,OW): OD wing that connects HV symmetric NMOS and poly ring.
;    3) Add IMSOR(133;28,DPW), IMSOR(133;29,CF3D)
;       Add IMSOR(133;30,SEL) for Dummy Layer for Row Select NMOS Trainsistor definition.
;    4) Add legal header.
;    5) Add embedded flash low leakage device layers (SWTSAO, automotive):
;	FLASH(100;0,LLNW): definition of LLPMOS
;	FLASH(101;0,ODLL): definition of LLdevice
;    6) Remove/Correct errors in spacingRules & orderedSpacingRules.
;    7) Add metal resistor dummy layers RMDUMMY(69;1~6,drawing1~6) for PDK
;	LVS deck (metal fuse).
;    8) Remove unused commodity 4T SRAM process layers: BC1(71),BC2(72),BTC(73),VCC(74),CPDUMMY(77).
;    9) Add OTP(237) for One Time Program process.
;   10) Change IMSOR (133;0,CELLM) to IMSOR (133;0,CELLMV).
;   11) Add MTPCELL (115) to define MTPCELL Area.
;
;
;*****************************************************************************
; IMPORTANT NOTICE
;*****************************************************************************
;1.PHYSICAL RULES value is according to T-018-LO-DR-001.
;2. Though PDIFF(11;0) & NDIFF(12;0) are tape out layers, it's strongly suggested
; to use DIFF(3;0) instead, which is the standard "Gate Oxide and Diffusion"
; (OD) layer. Since PDIFF & NDIFF layers are not standard layers, the related
; design rule checks are not provided in this tech file. Be sure to check
; carefully the related mask logic operation if PDIFF/NDIFF layers are used.
;*****************************************************************************


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techPurposes(
 ;( PurposeName	Purpose# Abbreviation )
 ;( -----------	-------- ------------ )
 ;User-Defined Purposes:
  ( SEL	  	76      SEL	)     
  ( CF3D	77	CF3D	)
  ( DPW		78	DPW	)
  ( LLNW	79	LLNW	)
  ( ODLL	80	ODLL	)
  ( SH_P	81	SH_P	)
  ( SH_N	82	SH_N	)
  ( SH_PO	83	SH_PO	)
  ( HVIO	84	HVIO	)
  ( OW		85	OW	)
  ( lvs		86		)
  ( MP		87		)
  ( CELL_TX2	88		)
  ( CAP_IMP	89		)
  ( CELL_RS	90		)
  ( CELL_TX	91		)
  ( BGN		92		)
  ( BGP		93		)
  ( E_ML	94		)
  ( YM		95		)
  ( CM		96		)
  ( MM		97		)
  ( MS		98		)
  ( LS		99		)
  ( CELLMV	100		)
  ( CELLH	101		)
  ( NPS		102		)
  ( PL		103		)
  ( GM		104		)
  ( RM		105		)
  ( BM		106		)
  ( ML		107		)
  ( PPS		108		)
  ( NMOS_VT	109		)
  ( CI		110		)
  ( CIRPO	111		)
  ( GM1		112		)
  ( GM2		113		)
  ( dummy7	114	dummy7	)
  ( dummy1	115	dummy1	)
  ( dummy2	116	dummy2	)
  ( dummy3	117	dummy3	)
  ( dummy4	118	dummy4	)
  ( dummy5	119	dummy5	)
  ( dummy6	120	dummy6	)
  ( drain	121	drain	)
  ( CELLD	122		)
  ( slot	126	slot	)
  ( dummy	127	dummy	)
 ;System-Reserved Purposes:
  ( warning	234	wng	)
  ( tool1	235	tl1	)
  ( tool0	236	tl0	)
  ( label	237	lbl	)
  ( flight	238	flt	)
  ( error	239	err	)
  ( annotate	240	ant	)
  ( drawing1	241	dr1	)
  ( drawing2	242	dr2	)
  ( drawing3	243	dr3	)
  ( drawing4	244	dr4	)
  ( drawing5	245	dr5	)
  ( drawing6	246	dr6	)
  ( drawing7	247	dr7	)
  ( drawing8	248	dr8	)
  ( drawing9	249	dr9	)
  ( boundary	250	bnd	)
  ( pin		251	pin	)
  ( drawing	252	drw	)
  ( net		253	net	)
  ( cell	254	cel	)
  ( all		255	all	)
 ) ;techPurposes

 techLayers(
 ;( LayerName	Layer#	Abbreviation )
 ;( ---------	------	------------ )
 ;User-Defined Layers: remaining layers  71~74, 76
  ( ref		0	ref	)
  ( PWELL	1	PWELL	)
  ( NWELL	2	NWELL	)
  ( DIFF	3	DIFF	)
  ( OD2		4	OD2	)
  ( N3V		5	N3V	)
  ( P3V		6	P3V	)
  ( PIMP	7	PIMP	)
  ( NIMP	8	NIMP	)
  ( EPLY	9	EPLY	)
  ( BPLY	10	BPLY	)
  ( PDIFF	11	PDIFF	)
  ( NDIFF	12	NDIFF	)
  ( POLY1	13	POLY1	)
  ( POLY2	14	POLY2	)
  ( CONT	15	CONT	)
  ( METAL1	16	METAL1	)
  ( VIA12	17	VIA12	)
  ( METAL2	18	METAL2	)
  ( PAD		19	PAD	)
  ( BPI		20	BPI	)
  ( VIA67	21	VIA67	)
  ( METAL7	22	METAL7	)
  ( VTM_P	23	VTM_P	)
  ( VTM_N	24	VTM_N	)
  ( VTDP	25	VTDP	)
  ( VTDN	26	VTDN	)
  ( VIA23	27	VIA23	)
  ( METAL3	28	METAL3	)
  ( VIA34	29	VIA34	)
  ( ESD		30	ESD	)
  ( METAL4	31	METAL4	)
  ( VIA45	32	VIA45	)
  ( METAL5	33	METAL5	)
  ( RPO		34	RPO	)
  ( P2V		35	P2V	)
  ( ESD2DUMMY	36	ESD2DUM	)
  ( PTDIODE	37	PTDIODE	)
  ( METAL6	38	METAL6	)
  ( VIA56	39	VIA56	)
  ( CTM5	40	CTM5	)
  ( NTN		41	NTN	)
  ( ESD3DUMMY	42	ESD3DUM	)
  ( DRC2DUMMY	43	DRC2DUM	)
  ( CTMDUMMY	44	CTMDUMM	)
  ( RHDUMMY	45	RHDUMMY	)
  ( INDDUMMY	46	INDDUMM	)
  ( ESD1DUMMY	47	ESD1DUM	)
  ( HRI		48	HRI	)
  ( BJTDUMMY	49	BJTDUMM	)
  ( PSUB2	50	PSUB2	)
  ( HOTWL	51	HOTWL	)
  ( RWDUMMY	52	RWDUMMY	)
  ( VCDUMMY	53	VCDUMMY	)
  ( RPDUMMY	54	RPDUMMY	)
  ( EXCL	55	EXCL	)
  ( DIODUMMY	56	DIODUMM	)
  ( VARDUMMY	57	VARDUMM	)
  ( SDI		58	SDI	)
  ( TEXT	59	TEXT	)
  ( DRCDUMMY	60	DRCDUMM	)
  ( N2V		61	N2V	)
  ( RLPPDUMMY	62	RLPPDUM	)
  ( CTM2	63	CTM2	)
  ( CTM3	64	CTM3	)
  ( DPDUMMY	65	DPDUMMY	)
  ( PLDUMMY	66	PLDUMMY	)
  ( CTM4	67	CTM4	)
  ( CDUMMY	68	CDUMMY	)
  ( RMDUMMY	69	RMDUMMY	)
  ( CELLIMP	70	CELLIMP	)
;  ( BC1		71	BC1	)
;  ( BC2		72	BC2	)
;  ( BTC		73	BTC	)
;  ( VCC		74	VCC	)
  ( RODUMMY	75	RODUMMY	)
;  ( ESEXCL	76	ESEXCL	)
;  ( CPDUMMY	77	CPDUMMY	)
  ( OTP		77	OTP	)
  ( PDIMP	78	PDIMP	)
  ( PUIMP	79	PUIMP	)
  ( CELLBRC1	80	CELLBRC	)
  ( BLBRC2	81	BLBRC2	)
  ( DNW		82	DNW	)
  ( P1W		83	P1W	)
  ( P1R		84	P1R	)
  ( SAC		85	SAC	)
  ( C1		86	C1	)
  ( C2		87	C2	)
  ( DPITCH	88	DPITCH	)
  ( PLMIDE	89	PLMIDE	)
  ( LMARK	90	LMARK	)
  ( LW		91	LW	)
  ( PO1		92	PO1	)
  ( HVPSW	93	HVPSW	)
  ( FLASH	94	FLASH	)
  ( MTPCELL	95	MTPCELL	)
  ( FGT		96	FGT	)
  ( HVII	97	HVII	)
  ( HV		98	HV	)
  ( HVNW	99	HVNW	)
  ( HVOX	100	HVOX	)
  ( HNVT	101	HNVT	)
  ( "1TDMY"	102	"1TDMY"	)
  ( WELLBODY	103	WELLBOD	)
;  ( RESDUMMY	104	RESDUMM	)
  ( WBDMY	104	WBDMY	)
  ( NOOPC	105	NOOPC	)
  ( NBL		106	NBL	)
  ( OVERLAP	107	OVERLAP	)
  ( HVTN	108	HVTN	)
  ( HVTP	109	HVTP	)
  ( RFDUMMY	110	RFDUMMY	)
  ( IMSOR	111	IMSOR	)
  ( SLTEXCL	112	SLTEXCL	)
  ( IP		113	IP	)
  ( UBM		114	UBM	)
  ( CBD		115	CBD	)
  ( PSUB	116	PSUB	)
  ( MD		117	MD	)
  ( VIAD	118	VIAD	)
  ( PMDMY	119	PMDMY	)
  ( FW		120	FW	)
  ( CODEP	121	CODEP	)
  ( MCEL	122	MCEL	)
  ( CODEC	123	CODEC	)
  ( DMN2V	124	DMN2V	)
  ( DMEXCL	125	DMEXCL	)
  ( DMP2V	126	DMP2V	)
  ( boundary	127	boundar	)
 ;System-Reserved Layers:
  ( Unrouted	200	Unroute	)
  ( Row		201	Row	)
  ( Group	202	Group	)
  ( Cannotoccupy 203	Cannoto	)
  ( Canplace	204	Canplac	)
  ( hardFence	205	hardFen	)
  ( softFence	206	softFen	)
  ( y0		207	y0	)
  ( y1		208	y1	)
  ( y2		209	y2	)
  ( y3		210	y3	)
  ( y4		211	y4	)
  ( y5		212	y5	)
  ( y6		213	y6	)
  ( y7		214	y7	)
  ( y8		215	y8	)
  ( y9		216	y9	)
  ( designFlow	217	designF	)
  ( stretch	218	stretch	)
  ( edgeLayer	219	edgeLay	)
  ( changedLayer 220	changed	)
  ( unset	221	unset	)
  ( unknown	222	unknown	)
  ( spike	223	spike	)
  ( hiz		224	hiz	)
  ( resist	225	resist	)
  ( drive	226	drive	)
  ( supply	227	supply	)
  ( wire	228	wire	)
  ( pin		229	pin	)
  ( text	230	text	)
  ( device	231	device	)
  ( border	232	border	)
  ( snap	233	snap	)
  ( align	234	align	)
  ( prBoundary	235	prBound	)
  ( instance	236	instanc	)
  ( annotate	237	annotat	)
  ( marker	238	marker	)
  ( select	239	select	)
  ( grid	251	grid	)
  ( axis	252	axis	)
  ( hilite	253	hilite	)
  ( background	254	backgro	)
 ) ;techLayers
 
 techLayerPurposePriorities(
 ;layers are ordered from highest to lowest priority
 ;( LayerName	Purpose	)
 ;( ---------	-------	)
  ( ref		drawing	)
  ( PWELL	drawing	)
  ( NWELL	drawing	)
  ( HVNW	drawing	)
  ( PSUB	drawing	)
  ( DIFF	drawing	)
  ( PDIFF	drawing	)
  ( NDIFF	drawing	)
  ( OD2		drawing	)
  ( POLY1	drawing	)
  ( POLY2	drawing	)
  ( EPLY	drawing	)
  ( BPLY	drawing	)
  ( N2V		drawing	)
  ( N3V		drawing	)
  ( P2V		drawing	)
  ( P3V		drawing	)
  ( PIMP	drawing	)
  ( NIMP	drawing	)
  ( ESD		drawing	)
  ( RPO		drawing	)
  ( CONT	drawing	)
  ( METAL1	drawing	)
  ( VIA12	drawing	)
  ( METAL2	drawing	)
  ( VIA23	drawing	)
  ( METAL3	drawing	)
  ( VIA34	drawing	)
  ( METAL4	drawing	)
  ( VIA45	drawing	)
  ( METAL5	drawing	)
  ( VIA56	drawing	)
  ( METAL6	drawing	)
  ( VIA67	drawing	)
  ( METAL7	drawing	)
  ( PAD		drawing	)
  ( WBDMY	drawing	)
  ( FW		drawing	)
  ( OVERLAP	drawing	)
  ( BPI		drawing	)
  ( VTM_P	drawing	)
  ( VTM_N	drawing	)
  ( VTDP	drawing	)
  ( VTDN	drawing	)
  ( HRI		drawing	)
  ( CTM2	drawing	)
  ( CTM3	drawing	)
  ( CTM4	drawing	)
  ( CTM5	drawing	)
  ( METAL1	pin	)
  ( METAL2	pin	)
  ( METAL3	pin	)
  ( METAL4	pin	)
  ( METAL5	pin	)
  ( METAL6	pin	)
  ( METAL7	pin	)
  ( DIFF	pin	)
  ( NWELL	pin	)
  ( POLY1	pin	)
  ( POLY1	lvs	)
  ( MD		pin	)
  ( BJTDUMMY	drawing	)
  ( PSUB2	drawing	)
  ( HOTWL	drawing	)
  ( RWDUMMY	drawing	)
  ( RWDUMMY	drawing1 )
  ( RPDUMMY	drawing	)
  ( RPDUMMY	drawing1 )
  ( RMDUMMY	drawing	)
  ( RMDUMMY	drawing1 )
  ( RMDUMMY	drawing2 )
  ( RMDUMMY	drawing3 )
  ( RMDUMMY	drawing4 )
  ( RMDUMMY	drawing5 )
  ( RMDUMMY	drawing6 )
  ( VCDUMMY	drawing	)
  ( CDUMMY	drawing	)
  ( DIODUMMY	drawing	)
  ( PTDIODE	drawing	)
  ( EXCL	drawing	)
  ( SDI		drawing	)
  ( TEXT	drawing	)
  ( DRCDUMMY	drawing	)
  ( DPDUMMY	drawing	)
  ( PLDUMMY	drawing	)
  ( DRC2DUMMY	drawing	)
  ( CTMDUMMY	drawing	)
  ( RHDUMMY	drawing	)
  ( INDDUMMY	drawing	)
  ( INDDUMMY	drawing1 )
  ( RLPPDUMMY	drawing	)
  ( NOOPC	drawing	)
  ( marker	error	)
  ( marker	warning	)
  ( CELLIMP	drawing	)
;  ( BC1		drawing	)
;  ( BC2		drawing	)
;  ( BTC		drawing	)
;  ( VCC		drawing	)
  ( RODUMMY	drawing	)
;  ( ESEXCL	drawing	)
;  ( CPDUMMY	drawing	)
  ( PDIMP	drawing	)
  ( PUIMP	drawing	)
  ( "1TDMY"	drawing	)
  ( CELLBRC1	drawing	)
  ( BLBRC2	drawing	)
  ( DNW		drawing	)
  ( P1W		drawing	)
  ( P1R		drawing	)
  ( SAC		drawing	)
  ( C1		drawing	)
  ( C2		drawing	)
  ( DPITCH	drawing	)
  ( PLMIDE	drawing	)
  ( PMDMY	drawing	)
  ( NTN		drawing	)
  ( HVTP	drawing	)
  ( HVTN	drawing	)
  ( NBL		drawing	)
  ( HVOX	drawing	)
  ( HVPSW	drawing	)
  ( HV		SH_P	)
  ( HV		SH_N	)
  ( HV		SH_PO	)
  ( HV		HVIO	)
  ( HV		OW	)
  ( prBoundary drawing	)
  ( prBoundary label	)
  ( prBoundary boundary	)
  ( METAL1	net	)
  ( METAL2	net	)
  ( METAL3	net	)
  ( METAL4	net	)
  ( METAL5	net	)
  ( METAL6	net	)
  ( METAL7	net	)
  ( METAL1	boundary )
  ( METAL2	boundary )
  ( METAL3	boundary )
  ( METAL4	boundary )
  ( METAL5	boundary )
  ( METAL6	boundary )
  ( METAL7	boundary )
  ( CONT	net	)
  ( VIA12	net	)
  ( VIA23	net	)
  ( VIA34	net	)
  ( VIA45	net	)
  ( VIA56	net	)
  ( VIA67	net	)
  ( CONT	boundary )
  ( VIA12	boundary )
  ( VIA23	boundary )
  ( VIA34	boundary )
  ( VIA45	boundary )
  ( VIA56	boundary )
  ( VIA67	boundary )
  ( instance	drawing	)
  ( instance	label	)
  ( hilite	drawing	)
  ( hilite	drawing1 )
  ( hilite	drawing2 )
  ( hilite	drawing3 )
  ( hilite	drawing4 )
  ( hilite	drawing5 )
  ( hilite	drawing6 )
  ( hilite	drawing7 )
  ( hilite	drawing8 )
  ( hilite	drawing9 )
  ( y0		drawing	)
  ( y1		drawing	)
  ( y2		drawing	)
  ( y3		drawing	)
  ( y4		drawing	)
  ( y5		drawing	)
  ( y6		drawing	)
  ( y7		drawing	)
  ( y8		drawing	)
  ( y9		drawing	)
  ( grid	drawing	)
  ( grid	drawing1 )
  ( axis	drawing	)
  ( border	drawing	)
  ( align	drawing	)
  ( device	drawing	)
  ( device	drawing1 )
  ( device	drawing2 )
  ( device	annotate )
  ( device	label	)
  ( wire	drawing	)
  ( wire	label	)
  ( wire	flight	)
  ( select	drawing	)
  ( drive	drawing	)
  ( hiz		drawing	)
  ( pin		drawing	)
  ( pin		annotate )
  ( pin		label	)
  ( resist	drawing	)
  ( spike	drawing	)
  ( supply	drawing	)
  ( unknown	drawing	)
  ( unset	drawing	)
  ( annotate	drawing	)
  ( designFlow	drawing	)
  ( annotate	drawing1 )
  ( designFlow	drawing1 )
  ( annotate	drawing2 )
  ( designFlow	drawing2 )
  ( annotate	drawing3 )
  ( designFlow	drawing3 )
  ( annotate	drawing4 )
  ( designFlow	drawing4 )
  ( annotate	drawing5 )
  ( designFlow	drawing5 )
  ( annotate	drawing6 )
  ( designFlow	drawing6 )
  ( annotate	drawing7 )
  ( designFlow	drawing7 )
  ( annotate	drawing8 )
  ( designFlow	drawing8 )
  ( annotate	drawing9 )
  ( designFlow	drawing9 )
  ( edgeLayer	drawing	)
  ( edgeLayer	pin	)
  ( changedLayer tool0	)
  ( changedLayer tool1	)
  ( snap	drawing	)
  ( stretch	drawing	)
  ( Row		drawing	)
  ( Row		label	)
  ( Group	drawing	)
  ( Group	label	)
  ( Cannotoccupy drawing )
  ( Cannotoccupy boundary )
  ( boundary	drawing	)
  ( Canplace	drawing	)
  ( background	drawing	)
  ( text	drawing	)
  ( text	drawing1 )
  ( text	drawing2 )
  ( Unrouted	drawing	)
  ( Unrouted	drawing1 )
  ( Unrouted	drawing2 )
  ( Unrouted	drawing3 )
  ( Unrouted	drawing4 )
  ( Unrouted	drawing5 )
  ( Unrouted	drawing6 )
  ( Unrouted	drawing7 )
  ( Unrouted	drawing8 )
  ( Unrouted	drawing9 )
  ( hardFence	drawing	)
  ( softFence	drawing	)
  ( ESD1DUMMY	drawing	)
  ( ESD2DUMMY	drawing	)
  ( ESD3DUMMY	drawing	)
  ( METAL1	dummy	)
  ( METAL2	dummy	)
  ( METAL3	dummy	)
  ( METAL4	dummy	)
  ( METAL5	dummy	)
  ( METAL6	dummy	)
  ( METAL7	dummy	)
  ( MD		dummy	)
  ( METAL1	slot	)
  ( METAL2	slot	)
  ( METAL3	slot	)
  ( METAL4	slot	)
  ( METAL5	slot	)
  ( METAL6	slot	)
  ( METAL7	slot	)
  ( MD		slot	)
  ( DIFF	drain	)
  ( DMN2V	drawing	)
  ( DMP2V	drawing	)
  ( DMEXCL	dummy1	)
  ( DMEXCL	dummy2	)
  ( DMEXCL	dummy3	)
  ( DMEXCL	dummy4	)
  ( DMEXCL	dummy5	)
  ( DMEXCL	dummy6	)
  ( DMEXCL	dummy7	)
  ( SLTEXCL	dummy1	)
  ( SLTEXCL	dummy2	)
  ( SLTEXCL	dummy3	)
  ( SLTEXCL	dummy4	)
  ( SLTEXCL	dummy5	)
  ( SLTEXCL	dummy6	)
  ( SLTEXCL	dummy7	)
  ( VIAD	drawing	)
  ( MD		drawing	)
  ( CBD		drawing	)
  ( UBM		drawing	)
  ( HNVT	drawing	)
  ( PO1		drawing	)
  ( FGT		drawing	)
  ( IMSOR	CELLMV	)
  ( IMSOR	CELLH	)
  ( IMSOR	NPS	)
  ( IMSOR	PL	)
  ( IMSOR	GM	)
  ( IMSOR	RM	)
  ( IMSOR	BM	)
  ( IMSOR	ML	)
  ( IMSOR	PPS	)
  ( IMSOR	NMOS_VT	)
  ( IMSOR	CI	)
  ( IMSOR	CIRPO	)
  ( IMSOR	GM1	)
  ( IMSOR	GM2	)
  ( IMSOR	CELLD	)
  ( IMSOR	MS	)
  ( IMSOR	LS	)
  ( IMSOR	YM	)
  ( IMSOR	CM	)
  ( IMSOR	MM	)
  ( IMSOR	E_ML	)
  ( IMSOR	BGP	)
  ( IMSOR	BGN	)
  ( IMSOR	CELL_TX	)
  ( IMSOR	CELL_RS	)
  ( IMSOR	CAP_IMP	)
  ( IMSOR	CELL_TX2 )
  ( IMSOR	MP	)
  ( IMSOR	DPW	)
  ( IMSOR	CF3D	)
  ( IMSOR	SEL	)
  ( FLASH	drawing	)
  ( FLASH	LLNW	)
  ( FLASH	ODLL	)
  ( OTP		drawing	)
  ( HVII	drawing	)
  ( MCEL	drawing	)
  ( CODEP	drawing	)
  ( CODEC	drawing	)
  ( IP		drawing	)
  ( RFDUMMY	drawing	)
  ( RFDUMMY	drawing1 )
  ( LMARK	drawing	)
  ( LW		drawing	)
  ( VARDUMMY	drawing	)
  ( VARDUMMY	drawing1 )
  ( VARDUMMY	drawing2 )
  ( VARDUMMY	drawing3 )
  ( VARDUMMY	drawing4 )
  ( WELLBODY	drawing	)
  ( MTPCELL 	drawing	)
 ) ;techLayerPurposePriorities

 techDisplays(
 ;( LayerName	Purpose		Packet	Vis Sel Con2ChgLy DrgEnbl Valid )
 ;( ---------	-------		------	--- --- --------- ------- ----- )
  ( ref		drawing		redhidden_L		t t t t t )
  ( PWELL	drawing		creamshortDash_L	t t t t t )
  ( NWELL	drawing		creamthickLine2_L	t t t t t )
  ( HVNW	drawing		redthickLine2_L 	t t t t t )
  ( PSUB	drawing		bluethickLine2_L	t t t t t )
  ( DIFF	drawing		redbackSlash_S		t t t t t )
  ( PDIFF	drawing		reddot3_S		t t t t t )
  ( NDIFF	drawing		orangedots_S		t t t t t )
  ( OD2		drawing		winColor2winColor1daggerthickLine t t t t t )
  ( POLY1	drawing		bluecrossthickLine	t t t t t )
  ( POLY2	drawing		pinkbrick_SN		t t t t t )
  ( EPLY	drawing		limedot4_S		t t t t t )
  ( BPLY	drawing		limedot3_S		t t t t t )
  ( N2V		drawing		grayshortDash_L		t t t t t )
  ( N3V		drawing		graythickLine2_L	t t t t t )
  ( P2V		drawing		magenta			t t t t t )
  ( P3V		drawing		graythickLine_L		t t t t t )
  ( PIMP	drawing		magenta			t t t t t )
  ( NIMP	drawing		gray			t t t t t )
  ( ESD		drawing		white			t t t t t )
  ( RPO		drawing		forest			t t t t t )
  ( CONT	drawing		greencross_S		t t t t t )
  ( METAL1	drawing		cyandot4_S		t t t t t )
  ( VIA12	drawing		yellowX_S		t t t t t )
  ( METAL2	drawing		goldstipple0_S		t t t t t )
  ( VIA23	drawing		yellowhLine_S		t t t t t )
  ( METAL3	drawing		forestdot4_S		t t t t t )
  ( VIA34	drawing		purplevLine_S		t t t t t )
  ( METAL4	drawing		slatedot4_S		t t t t t )
  ( VIA45	drawing		whitetriangle_S		t t t t t )
  ( METAL5	drawing		winColor3dot3_S		t t t t t )
  ( VIA56	drawing		creamslash_S		t t t t t )
  ( METAL6	drawing		tanstipple3_S		t t t t t )
  ( VIA67	drawing		goldx_S			t t t t t )
  ( METAL7	drawing		limedot4_S		t t t t t )
  ( PAD		drawing		orangedots_S		t t t t t )
  ( WBDMY	drawing		limehLine_S		t t t t t )
  ( FW		drawing		magentadots_S		t t t t t )
  ( OVERLAP	drawing		orange			t t t t t )
  ( BPI		drawing		magentathickLine2_L	t t t t t )
  ( VTM_P	drawing		tanshortDash_L		t t t t t )
  ( VTM_N	drawing		tanthickLine2_L		t t t t t )
  ( VTDP	drawing		tanshortDash_L		t t t t t )
  ( VTDN	drawing		tanthickLine2_L		t t t t t )
  ( HRI		drawing		magentadot2_S		t t t t t )
  ( CTM2	drawing		purpledot1_S		t t t t t )
  ( CTM3	drawing		purpledot2_S		t t t t t )
  ( CTM4	drawing		purpledot3_S		t t t t t )
  ( CTM5	drawing		purpledot4_S		t t t t t )
  ( METAL1	pin		cyanXthickLine2		t t t nil t )
  ( METAL2	pin		goldXthickLine2		t t t nil t )
  ( METAL3	pin		forestXthickLine2	t t t nil t )
  ( METAL4	pin		slateXthickLine2	t t t nil t )
  ( METAL5	pin		winColor3XthickLine2	t t t nil t )
  ( METAL6	pin		tanXthickLine2		t t t nil t )
  ( METAL7	pin		limeXthickLine2		t t t nil t )
  ( DIFF	pin		tanXthickLine2		t t t t t )
  ( NWELL	pin		limeXthickLine2		t t t t t )
  ( POLY1	pin		blueXthickLine		t t t nil t )
  ( POLY1	lvs		tanXthickLine		t t t nil t )
  ( MD		pin		tanXthickLine2		t t t nil t )
  ( BJTDUMMY	drawing		greentriangle_S		t t t t t )
  ( PSUB2	drawing		whiteX_S		t t t t t )
  ( HOTWL	drawing		orangeX_S		t t t t t )
  ( RWDUMMY	drawing		whitedaggerdashed	t t t t t )
  ( RWDUMMY	drawing1	orangedaggerdashed	t t t t t )
  ( RPDUMMY	drawing		winColor4brickdashDot	t t t t t )
  ( RPDUMMY	drawing1	pinkbrickdashDot	t t t t t )
  ( RMDUMMY	drawing		joy1brickdashDot	t t t t t )
  ( RMDUMMY	drawing1	cyanbrickdashDot	t t t t t )
  ( RMDUMMY	drawing2	goldbrickdashDot	t t t t t )
  ( RMDUMMY	drawing3	forestbrickdashDot	t t t t t )
  ( RMDUMMY	drawing4	slatebrickdashDot	t t t t t )
  ( RMDUMMY	drawing5	winColor3brickdashDot	t t t t t )
  ( RMDUMMY	drawing6	tanbrickdashDot		t t t t t )
  ( VCDUMMY	drawing		pinkdaggerdashed	t t t t t )
  ( CDUMMY	drawing		pinkdaggerdashed	t t t t t )
  ( DIODUMMY	drawing		white			t t t t t )
  ( PTDIODE	drawing		white			t t t t t )
  ( EXCL	drawing		greentriangle_S		t t t t t )
  ( SDI		drawing		white			t t t t t )
  ( TEXT	drawing		white			t t t t t )
  ( DRCDUMMY	drawing		white			t t t t t )
  ( DPDUMMY	drawing		navy			t t t t t )
  ( PLDUMMY	drawing		pink			t t t t t )
  ( DRC2DUMMY	drawing		white			t t t t t )
  ( CTMDUMMY	drawing		white			t t t t t )
  ( RHDUMMY	drawing		white			t t t t t )
  ( INDDUMMY	drawing		white			t t t t t )
  ( INDDUMMY	drawing1	pink			t t t t t )
  ( RLPPDUMMY	drawing		white			t t t t t )
  ( NOOPC	drawing		white			t t t t t )
  ( marker	error		whiteX_SB		t t t t t )
  ( marker	warning		yellowX_SB		t t t t t )
  ( CELLIMP	drawing		green			t t t t t )
;  ( BC1		drawing		orange			t t t t t )
;  ( BC2		drawing		tan			t t t t t )
;  ( BTC		drawing		white			t t t t t )
;  ( VCC		drawing		cream			t t t t t )
  ( RODUMMY	drawing		navy			t t t t t )
;  ( ESEXCL	drawing		pink			t t t t t )
;  ( CPDUMMY	drawing		lime			t t t t t )
  ( PDIMP	drawing		purple			t t t t t )
  ( PUIMP	drawing		gold			t t t t t )
  ( "1TDMY"	drawing		tan			t t t t t )
  ( CELLBRC1	drawing		white			t t t t nil )
  ( BLBRC2	drawing		white			t t t t nil )
  ( DNW		drawing		tan			t t t t t )
  ( P1W		drawing		greendot3_S		t t t t t )
  ( P1R		drawing		yellowdaggerthickLine2	t t t t t )
  ( SAC		drawing		white			t t t t t )
  ( C1		drawing		creamstipple0_S		t t t t t )
  ( C2		drawing		limestipple0_S		t t t t t )
  ( DPITCH	drawing		white			t t t t t )
  ( PLMIDE	drawing		white			t t t t t )
  ( PMDMY	drawing		white			t t t t t )
  ( NTN		drawing		grayshortDash_L		t t t t t )
  ( HVTP	drawing		forest			t t t t t )
  ( HVTN	drawing		magenta			t t t t t )
  ( NBL		drawing		tandot4_S		t t t t t )
  ( HVOX	drawing		golddots_S		t t t t t )
  ( HVPSW	drawing		forestdot4_S		t t t t t )
  ( HV		SH_P		golddots_S		t t t t t )
  ( HV		SH_N		magentadots_S		t t t t t )
  ( HV		SH_PO		greendots_S		t t t t t )
  ( HV		HVIO		limedot4_S		t t t t t )
  ( HV		OW		grayshortDash_L		t t t t t )
  ( prBoundary	drawing		purple			t t t t t )
  ( prBoundary	label		purple			t t t t nil )
  ( prBoundary	boundary	purpledashed_L		t t t t nil )
  ( METAL1	net		cyanX_S			t t t nil nil )
  ( METAL2	net		yellowX_S		t t t nil nil )
  ( METAL3	net		greenX_S		t t t nil nil )
  ( METAL4	net		cyanX_S			t t t nil nil )
  ( METAL5	net		whiteX_S		t t t nil nil )
  ( METAL6	net		whiteX_S		t t t nil nil )
  ( METAL7	net		whiteX_S		t t t nil nil )
  ( METAL1	boundary	cyandot4_S		t t t nil nil )
  ( METAL2	boundary	yellowdot4_S		t t t nil nil )
  ( METAL3	boundary	greendot4_S		t t t nil nil )
  ( METAL4	boundary	cyandot4_S		t t t nil nil )
  ( METAL5	boundary	whitedot4_S		t t t nil nil )
  ( METAL6	boundary	whitedot4_S		t t t nil nil )
  ( METAL7	boundary	whitedot4_S		t t t nil nil )
  ( CONT	net		limeX_S			t t t nil nil )
  ( VIA12	net		magentaX_S		t t t nil nil )
  ( VIA23	net		yellowX_S		t t t nil nil )
  ( VIA34	net		blueX_S			t t t nil nil )
  ( VIA45	net		whiteX_S		t t t nil nil )
  ( VIA56	net		whiteX_S		t t t nil nil )
  ( VIA67	net		whiteX_S		t t t nil nil )
  ( CONT	boundary	limesolid_S		t t t nil nil )
  ( VIA12	boundary	magentasolid_S		t t t nil nil )
  ( VIA23	boundary	yellowsolid_S		t t t nil nil )
  ( VIA34	boundary	bluesolid_S		t t t nil nil )
  ( VIA45	boundary	white			t t t nil nil )
  ( VIA56	boundary	white			t t t nil nil )
  ( VIA67	boundary	white			t t t nil nil )
  ( instance	drawing		red			t t t t nil )
  ( instance	label		gold			t t t t nil )
  ( hilite	drawing		white			t t t t nil )
  ( hilite	drawing1	magenta			t t t t nil )
  ( hilite	drawing2	tan			t t t t nil )
  ( hilite	drawing3	cyan			t t t t nil )
  ( hilite	drawing4	orange			t t t t nil )
  ( hilite	drawing5	lime			t t t t nil )
  ( hilite	drawing6	orange			t t t t nil )
  ( hilite	drawing7	cream			t t t t nil )
  ( hilite	drawing8	magenta			t t t t nil )
  ( hilite	drawing9	pink			t t t t nil )
  ( y0		drawing		winColor5dashed_LB	t t t t nil )
  ( y1		drawing		browndashed_LB		t t t t nil )
  ( y2		drawing		reddashed_LB		t t t t nil )
  ( y3		drawing		pinkdashed_LB		t t t t nil )
  ( y4		drawing		orangedashed_LB		t t t t nil )
  ( y5		drawing		greendashed_LB		t t t t nil )
  ( y6		drawing		bluedashed_LB		t t t t nil )
  ( y7		drawing		purpledashed_LB		t t t t nil )
  ( y8		drawing		golddashed_LB		t t t t nil )
  ( y9		drawing		silverdashed_LB		t t t t nil )
  ( grid	drawing		white			t nil t nil nil )
  ( grid	drawing1	white			t nil t nil nil )
  ( axis	drawing		white			t nil t t nil )
  ( border	drawing		tan			t t t t nil )
  ( align	drawing		tan			t t t t nil )
  ( device	drawing		green			t t t t nil )
  ( device	drawing1	greensolid_S		t t t t nil )
  ( device	drawing2	greendashed_L		t t t t nil )
  ( device	annotate	yellow			t t t t nil )
  ( device	label		green			t t t t nil )
  ( wire	drawing		graysolid_S		t t t t nil )
  ( wire	label		graysolid_S		t t t t nil )
  ( wire	flight		reddashed_L		t t t t nil )
  ( select	drawing		tan			t t t t nil )
  ( drive	drawing		blue			t t t t nil )
  ( hiz		drawing		orange			t t t t nil )
  ( pin		drawing		redsolid_S		t t t t nil )
  ( pin		annotate	red			t t t t nil )
  ( pin		label		red			t t t t nil )
  ( resist	drawing		cyan			t t t t nil )
  ( spike	drawing		purple			t t t t nil )
  ( supply	drawing		lime			t t t t nil )
  ( unknown	drawing		yellow			t t t t nil )
  ( unset	drawing		forest			t t t t nil )
  ( annotate	drawing		orange			t t t t nil )
  ( designFlow	drawing		greensolid_S		t t t nil nil )
  ( annotate	drawing1	pink			t t t t nil )
  ( designFlow	drawing1	redsolid_S		t t t nil nil )
  ( annotate	drawing2	lime			t t t t nil )
  ( designFlow	drawing2	purplesolid_S		t t t nil nil )
  ( annotate	drawing3	cyan			t t t t nil )
  ( designFlow	drawing3	pinksolid_S		t t t nil nil )
  ( annotate	drawing4	yellow			t t t t nil )
  ( designFlow	drawing4	blacksolid_S		t t t nil nil )
  ( annotate	drawing5	white			t t t t nil )
  ( designFlow	drawing5	silversolid_S		t t t nil nil )
  ( annotate	drawing6	silver			t t t t nil )
  ( designFlow	drawing6	tansolid_S		t t t nil nil )
  ( annotate	drawing7	red			t t t t nil )
  ( designFlow	drawing7	cyansolid_S		t t t nil nil )
  ( annotate	drawing8	tan			t t t t nil )
  ( designFlow	drawing8	navysolid_S		t t t nil nil )
  ( annotate	drawing9	green			t t t t nil )
  ( designFlow	drawing9	orangesolid_S		t t t nil nil )
  ( edgeLayer	drawing		winColor5_B		t t t t nil )
  ( edgeLayer	pin		yellow			t t t t nil )
  ( changedLayer tool0		red			nil nil t nil nil )
  ( changedLayer tool1		yellow			nil nil t nil nil )
  ( snap	drawing		yellow			t t t t nil )
  ( stretch	drawing		yellow			t t t t nil )
  ( Row		drawing		cyan			t t t t nil )
  ( Row		label		cyan			t nil t t nil )
  ( Group	drawing		greendots_S		t t t t nil )
  ( Group	label		green			t nil t t nil )
  ( Cannotoccupy drawing	redXthickLine		t t t t nil )
  ( Cannotoccupy boundary	redthickLine_L		t t t t nil )
  ( boundary	drawing		reddashed_L		t t t t nil )
  ( Canplace	drawing		cyan			t t t t nil )
  ( background	drawing		blacksolid_S		t nil t nil nil )
  ( text	drawing		white			t t t t nil )
  ( text	drawing1	whitedashed_L		t t t t nil )
  ( text	drawing2	whitesolid_S		t t t t nil )
  ( Unrouted	drawing		winColor5dashed_L	t t t t nil )
  ( Unrouted	drawing1	browndashed_L		t t t t nil )
  ( Unrouted	drawing2	reddashed_L		t t t t nil )
  ( Unrouted	drawing3	pinkdashed_L		t t t t nil )
  ( Unrouted	drawing4	orangedashed_L		t t t t nil )
  ( Unrouted	drawing5	greendashed_L		t t t t nil )
  ( Unrouted	drawing6	bluedashed_L		t t t t nil )
  ( Unrouted	drawing7	purpledashed_L		t t t t nil )
  ( Unrouted	drawing8	golddashed_L		t t t t nil )
  ( Unrouted	drawing9	silverdashed_L		t t t t nil )
  ( hardFence	drawing		red			t t t t nil )
  ( softFence	drawing		yellow			t t t t nil )
  ( ESD1DUMMY	drawing		whitedot2_S		t t t t t )
  ( ESD2DUMMY	drawing		orangedot2_S		t t t t t )
  ( ESD3DUMMY	drawing		greendot2_S		t t t t t )
  ( METAL1	dummy		cyandot4thickLine2	t t t t t )
  ( METAL2	dummy		golddot4thickLine2	t t t t t )
  ( METAL3	dummy		forestdot4thickLine2	t t t t t )
  ( METAL4	dummy		slatedot4thickLine2	t t t t t )
  ( METAL5	dummy		winColor3dot4thickLine2	t t t t t )
  ( METAL6	dummy		tandot4thickLine2	t t t t t )
  ( METAL7	dummy		limedot4thickLine2	t t t t t )
  ( MD		dummy		greendot4thickLine2	t t t t t )
  ( METAL1	slot		cyandot4shortDash	t t t t t )
  ( METAL2	slot		golddot4shortDash	t t t t t )
  ( METAL3	slot		forestdot4shortDash	t t t t t )
  ( METAL4	slot		slatedot4shortDash	t t t t t )
  ( METAL5	slot		winColor3dot4shortDash	t t t t t )
  ( METAL6	slot		tandot4shortDash	t t t t t )
  ( METAL7	slot		limedot4shortDash	t t t t t )
  ( MD		slot		orangedot4shortDash	t t t t t )
  ( DIFF	drain		reddaggerdashed		t t t t t )
  ( DMN2V	drawing		white			t t t t t )
  ( DMP2V	drawing		white			t t t t t )
  ( DMEXCL	dummy1		white			t t t t t )
  ( DMEXCL	dummy2		navy			t t t t t )
  ( DMEXCL	dummy3		white			t t t t t )
  ( DMEXCL	dummy4		navy			t t t t t )
  ( DMEXCL	dummy5		white			t t t t t )
  ( DMEXCL	dummy6		navy			t t t t t )
  ( DMEXCL	dummy7		white			t t t t t )
  ( SLTEXCL	dummy1		green			t t t t t )
  ( SLTEXCL	dummy2		orange			t t t t t )
  ( SLTEXCL	dummy3		green			t t t t t )
  ( SLTEXCL	dummy4		orange			t t t t t )
  ( SLTEXCL	dummy5		green			t t t t t )
  ( SLTEXCL	dummy6		orange			t t t t t )
  ( SLTEXCL	dummy7		green			t t t t t )
  ( VIAD	drawing		forestx_S		t t t t t )
  ( MD		drawing		purple			t t t t t )
  ( CBD		drawing		lime			t t t t t )
  ( UBM		drawing		graydot1thickLine	t t t t t )
  ( HNVT	drawing		blueXthickLine		t t t t t )
  ( PO1		drawing		red			t t t t t )
  ( FGT		drawing		orange			t t t t t )
  ( IMSOR	CELLMV		magenta			t t t t t )
  ( IMSOR	CELLH		orange			t t t t t )
  ( IMSOR	NPS		creamthickLine2_L	t t t t t )
  ( IMSOR	PL		red			t t t t t )
  ( IMSOR	GM		red			t t t t t )
  ( IMSOR	RM		orangedots_S		t t t t t )
  ( IMSOR	BM		winColor2winColor1daggerthickLine t t t t t )
  ( IMSOR	ML		bluecrossthickLine	t t t t t )
  ( IMSOR	PPS		pinkbrickdots		t t t t t )
  ( IMSOR	NMOS_VT		limedot4_S		t t t t t )
  ( IMSOR	CI		limedot3_S		t t t t t )
  ( IMSOR	CIRPO		creamdot3shortDash	t t t t t )
  ( IMSOR	GM1		graydot3thickLine2	t t t t t )
  ( IMSOR	GM2		greendot3thickLine	t t t t t )
  ( IMSOR	CELLD		reddot3thickLine	t t t t t )
  ( IMSOR	MS		limedot3thickLine	t t t t t )
  ( IMSOR	LS		reddot3thickLine	t t t t t )
  ( IMSOR	YM		yellowdot3thickLine	t t t t t )
  ( IMSOR	CM		cyandot3thickLine	t t t t t )
  ( IMSOR	MM		magentadot3thickLine	t t t t t )
  ( IMSOR	E_ML		limebrickthickLine	t t t t t )
  ( IMSOR	BGP		limecrossthickLine	t t t t t )
  ( IMSOR	BGN		reddot3thickLine	t t t t t )
  ( IMSOR	CELL_TX		yellowdaggerthickLine	t t t t t )
  ( IMSOR	CELL_RS		cyandot3thickLine	t t t t t )
  ( IMSOR	CAP_IMP		magentastipple0thickLine t t t t t )
  ( IMSOR	CELL_TX2	orangestipple0_S	t t t t t )
  ( IMSOR	MP		pinkstipple0_S		t t t t t )
  ( IMSOR	DPW		yellowstipple1_S	t t t t t )
  ( IMSOR	CF3D		limestipple0_S		t t t t t )
  ( IMSOR	SEL		goldstipple0_S		t t t t t )
  ( FLASH	drawing		lime			t t t t t )
  ( FLASH	LLNW		creamstipple0_S		t t t t t )
  ( FLASH	ODLL		orangestipple0_S	t t t t t )
  ( OTP		drawing		yellowstipple1_S	t t t t t )
  ( HVII	drawing		blue			t t t t t )
  ( MCEL	drawing		creamthickLine2_L	t t nil t t )
  ( CODEP	drawing		magenta			t t t t t )
  ( CODEC	drawing		orange			t t t t t )
  ( IP		drawing		white			t t nil t t )
  ( RFDUMMY	drawing		white			t t nil t t )
  ( RFDUMMY	drawing1	yellow			t t nil t t )
  ( LMARK	drawing		whitedot2_S		t t t t t )
  ( LW		drawing		greendot2_S		t t t t t )
  ( VARDUMMY	drawing		navydashed_L		t t t t t )
  ( VARDUMMY	drawing1	navydashed_L		t t t t t )
  ( VARDUMMY	drawing2	navydashed_L		t t t t t )
  ( VARDUMMY	drawing3	navydashed_L		t t t t t )
  ( VARDUMMY	drawing4	navydashed_L		t t t t t )
  ( WELLBODY	drawing		creamstipple0_S	        t t nil t t )
  ( MTPCELL	drawing		goldstipple0_S		t t t t t )

 ) ;techDisplays

techLayerProperties(
;( PropName               Layer1 [ Layer2 ]            PropValue )
)

) ;layerDefinitions


;********************************
; LAYER RULES
;********************************
layerRules(

 streamLayers(
 ;( layer		streamNumber dataType translate	)
 ;( -----		------------ -------- ---------	)
  ( ("ref" "drawing")		0	0	t	)
  ( ("PWELL" "drawing")		1	0	t	)
  ( ("NWELL" "drawing")		2	0	t	)
  ( ("NWELL" "pin")		2	6	t	)
  ( ("DIFF" "drawing")		3	0	t	)
  ( ("DIFF" "drain")		3	3	t	)
  ( ("DIFF" "pin")		3	6	t	)
  ( ("OD2" "drawing")		4	0	t	)
  ( ("N3V" "drawing")		5	0	t	)
  ( ("PIMP" "drawing")		7	0	t	)
  ( ("NIMP" "drawing")		8	0	t	)
  ( ("EPLY" "drawing")		9	0	t	)
  ( ("BPLY" "drawing")		10	0	t	)
  ( ("PDIFF" "drawing")		11	0	t	)
  ( ("NDIFF" "drawing")		12	0	t	)
  ( ("POLY1" "drawing")		13	0	t	)
  ( ("POLY2" "drawing")		14	0	t	)
  ( ("CONT" "drawing")		15	0	t	)
  ( ("METAL1" "drawing")	16	0	t	)
  ( ("METAL1" "dummy")		16	1	t	)
  ( ("METAL1" "slot")		16	2	t	)
  ( ("VIA12" "drawing")		17	0	t	)
  ( ("METAL2" "drawing")	18	0	t	)
  ( ("METAL2" "dummy")		18	1	t	)
  ( ("METAL2" "slot")		18	2	t	)
  ( ("PAD" "drawing")		19	0	t	)
  ( ("BPI" "drawing")		20	0	t	)
  ( ("VIA67" "drawing")		21	0	t	)
  ( ("METAL7" "drawing")	22	0	t	)
  ( ("METAL7" "dummy")		22	1	t	)
  ( ("METAL7" "slot")		22	2	t	)
  ( ("VTM_P" "drawing")		23	0	t	)
  ( ("VTM_N" "drawing")		24	0	t	)
  ( ("VTDP" "drawing")		25	0	t	)
  ( ("VTDN" "drawing")		26	0	t	)
  ( ("VIA23" "drawing")		27	0	t	)
  ( ("METAL3" "drawing")	28	0	t	)
  ( ("METAL3" "dummy")		28	1	t	)
  ( ("METAL3" "slot")		28	2	t	)
  ( ("VIA34" "drawing")		29	0	t	)
  ( ("ESD" "drawing")		30	0	t	)
  ( ("METAL4" "drawing")	31	0	t	)
  ( ("METAL4" "dummy")		31	1	t	)
  ( ("METAL4" "slot")		31	2	t	)
  ( ("VIA45" "drawing")		32	0	t	)
  ( ("METAL5" "drawing")	33	0	t	)
  ( ("METAL5" "dummy")		33	1	t	)
  ( ("METAL5" "slot")		33	2	t	)
  ( ("RPO" "drawing")		34	0	t	)
  ( ("P2V" "drawing")		35	0	t	)
  ( ("PTDIODE" "drawing")	37	0	t	)
  ( ("METAL6" "drawing")	38	0	t	)
  ( ("METAL6" "dummy")		38	1	t	)
  ( ("METAL6" "slot")		38	2	t	)
  ( ("VIA56" "drawing")		39	0	t	)
  ( ("METAL1" "pin")		40	0	t	)
  ( ("METAL2" "pin")		41	0	t	)
  ( ("METAL3" "pin")		42	0	t	)
  ( ("METAL4" "pin")		43	0	t	)
  ( ("METAL5" "pin")		44	0	t	)
  ( ("METAL6" "pin")		45	0	t	)
  ( ("METAL7" "pin")		46	0	t	)
  ( ("POLY1" "pin")		47	0	t	)
  ( ("POLY1" "lvs")		47	1	t	)
  ( ("HRI" "drawing")		48	0	t	)
  ( ("BJTDUMMY" "drawing")	49	0	t	)
  ( ("PSUB2" "drawing")		50	0	t	)
  ( ("HOTWL" "drawing")		51	0	t	)
  ( ("RWDUMMY" "drawing")	52	0	t	)
  ( ("RWDUMMY" "drawing1")	52	1	t	)
  ( ("VCDUMMY" "drawing")	53	0	t	)
  ( ("RPDUMMY" "drawing")	54	0	t	)
  ( ("RPDUMMY" "drawing1")	54	1	t	)
  ( ("EXCL" "drawing")		55	0	t	)
  ( ("DIODUMMY" "drawing")	56	0	t	)
  ( ("SDI" "drawing")		58	0	t	)
  ( ("TEXT" "drawing")		59	0	t	)
  ( ("DRCDUMMY" "drawing")	60	0	t	)
  ( ("N2V" "drawing")		61	0	t	)
  ( ("prBoundary" "drawing")	62	0	t	)
  ( ("marker" "error")		63	0	t	)
  ( ("LMARK" "drawing")		63	1	t	)
  ( ("LW" "drawing")		63	2	t	)
  ( ("IP" "drawing")		63	63	t	)
  ( ("marker" "warning")	64	0	t	)
  ( ("DPDUMMY" "drawing")	65	0	t	)
  ( ("PLDUMMY" "drawing")	66	0	t	)
  ( ("CTM2" "drawing")		67	2	t	)
  ( ("CTM3" "drawing")		67	3	t	)
  ( ("CTM4" "drawing")		67	4	t	)
  ( ("CTM5" "drawing")		67	5	t	)
  ( ("CDUMMY" "drawing")	68	0	t	)
  ( ("RMDUMMY" "drawing")	69	0	t	)
  ( ("RMDUMMY" "drawing1")	69	1	t	)
  ( ("RMDUMMY" "drawing2")	69	2	t	)
  ( ("RMDUMMY" "drawing3")	69	3	t	)
  ( ("RMDUMMY" "drawing4")	69	4	t	)
  ( ("RMDUMMY" "drawing5")	69	5	t	)
  ( ("RMDUMMY" "drawing6")	69	6	t	)
  ( ("CELLIMP" "drawing")	70	0	t	)
;  ( ("BC1" "drawing")		71	0	t	)
;  ( ("BC2" "drawing")		72	0	t	)
;  ( ("BTC" "drawing")		73	0	t	)
;  ( ("VCC" "drawing")		74	0	t	)
  ( ("RODUMMY" "drawing")	75	0	t	)
;  ( ("ESEXCL" "drawing")	76	0	t	)
;  ( ("CPDUMMY" "drawing")	77	0	t	)
  ( ("PDIMP" "drawing")		78	0	t	)
  ( ("PUIMP" "drawing")		79	0	t	)
  ( ("CELLBRC1" "drawing")	80	0	t	)
  ( ("BLBRC2" "drawing")	81	0	t	)
  ( ("DNW" "drawing")		82	0	t	)
  ( ("P1W" "drawing")		83	0	t	)
  ( ("P1R" "drawing")		84	0	t	)
  ( ("SAC" "drawing")		85	0	t	)
  ( ("C1" "drawing")		86	0	t	)
  ( ("C2" "drawing")		87	0	t	)
  ( ("DPITCH" "drawing")	88	0	t	)
  ( ("PLMIDE" "drawing")	89	0	t	)
  ( ("1TDMY" "drawing")		90	0	t	)
  ( ("HNVT" "drawing")		91	0	t	)
  ( ("PO1" "drawing")		92	0	t	)
  ( ("FLASH" "drawing")		94	0	t	)
  ( ("FGT" "drawing")		96	0	t	)
  ( ("HVII" "drawing")		97	0	t	)
  ( ("HVNW" "drawing")		99	0	t	)
  ( ("FLASH" "LLNW")		100	0	t	)
  ( ("FLASH" "ODLL")		101	0	t	)
  ( ("WELLBODY" "drawing")	103	0	t	)
  ( ("OVERLAP" "drawing")	110	0	t	)
  ( ("MTPCELL" "drawing")	115	0	t	)
  ( ("PSUB" "drawing")		116	0	t	)
  ( ("MCEL" "drawing")		122	0	t	)
  ( ("NTN" "drawing")		129	0	t	)
  ( ("DRC2DUMMY" "drawing")	130	0	t	)
  ( ("CTMDUMMY" "drawing")	131	0	t	)
  ( ("RHDUMMY" "drawing")	132	0	t	)
  ( ("IMSOR" "CELLMV")		133	0	t	)
  ( ("IMSOR" "CELLH")		133	1	t	)
  ( ("IMSOR" "NPS")		133	2	t	)
  ( ("IMSOR" "PL")		133	3	t	)
  ( ("IMSOR" "GM")		133	4	t	)
  ( ("IMSOR" "RM")		133	5	t	)
  ( ("IMSOR" "BM")		133	6	t	)
  ( ("IMSOR" "ML")		133	7	t	)
  ( ("IMSOR" "PPS")		133	8	t	)
  ( ("IMSOR" "NMOS_VT")		133	9	t	)
  ( ("IMSOR" "CI")		133	10	t	)
  ( ("IMSOR" "CIRPO")		133	11	t	)
  ( ("IMSOR" "GM1")		133	12	t	)
  ( ("IMSOR" "GM2")		133	13	t	)
  ( ("IMSOR" "CELLD")		133	14	t	)
  ( ("IMSOR" "MS")		133	15	t	)
  ( ("IMSOR" "LS")		133	16	t	)
  ( ("IMSOR" "YM")		133	17	t	)
  ( ("IMSOR" "CM")		133	18	t	)
  ( ("IMSOR" "MM")		133	19	t	)
  ( ("IMSOR" "E_ML")		133	20	t	)
  ( ("IMSOR" "BGP")		133	21	t	)
  ( ("IMSOR" "BGN")		133	22	t	)
  ( ("IMSOR" "CELL_TX")		133	23	t	)
  ( ("IMSOR" "CELL_RS")		133	24	t	)
  ( ("IMSOR" "CAP_IMP")		133	25	t	)
  ( ("IMSOR" "CELL_TX2")	133	26	t	)
  ( ("IMSOR" "MP")		133	27	t	)
  ( ("IMSOR" "DPW")		133	28	t	)
  ( ("IMSOR" "CF3D")		133	29	t	)
  ( ("IMSOR" "SEL")		133	30	t	)
  ( ("RLPPDUMMY" "drawing")	134	0	t	)
  ( ("NOOPC" "drawing")		135	0	t	)
  ( ("ESD1DUMMY" "drawing")	136	0	t	)
  ( ("ESD2DUMMY" "drawing")	137	0	t	)
  ( ("VARDUMMY" "drawing")	138	0	t	)
  ( ("VARDUMMY" "drawing1")	138	1	t	)
  ( ("VARDUMMY" "drawing2")	138	2	t	)
  ( ("VARDUMMY" "drawing3")	138	3	t	)
  ( ("VARDUMMY" "drawing4")	138	4	t	)
  ( ("INDDUMMY" "drawing")	139	0	t	)
  ( ("INDDUMMY" "drawing1")	139	1	t	)
  ( ("P3V" "drawing")		140	0	t	)
  ( ("HV" "SH_P")		141	1	t	)
  ( ("HV" "SH_N")		141	2	t	)
  ( ("HV" "SH_PO")		141	3	t	)
  ( ("HV" "HVIO")		141	4	t	)
  ( ("HV" "OW")			141	5	t	)
  ( ("HVTN" "drawing")		142	0	t	)
  ( ("HVTP" "drawing")		143	0	t	)
  ( ("CODEP" "drawing")		148	0	t	)
  ( ("DMP2V" "drawing")		149	0	t	)
  ( ("DMEXCL" "dummy1")		150	1	t	)
  ( ("DMEXCL" "dummy2")		150	2	t	)
  ( ("DMEXCL" "dummy3")		150	3	t	)
  ( ("DMEXCL" "dummy4")		150	4	t	)
  ( ("DMEXCL" "dummy5")		150	5	t	)
  ( ("DMEXCL" "dummy6")		150	6	t	)
  ( ("DMEXCL" "dummy7")		150	7	t	)
  ( ("METAL1" "boundary")	151	0	nil	)
  ( ("METAL2" "boundary")	152	0	nil	)
  ( ("METAL3" "boundary")	153	0	nil	)
  ( ("METAL4" "boundary")	154	0	nil	)
  ( ("METAL5" "boundary")	155	0	nil	)
  ( ("METAL6" "boundary")	156	0	nil	)
  ( ("METAL7" "boundary")	157	0	nil	)
  ( ("SLTEXCL" "dummy1")	158	1	t	)
  ( ("SLTEXCL" "dummy2")	158	2	t	)
  ( ("SLTEXCL" "dummy3")	158	3	t	)
  ( ("SLTEXCL" "dummy4")	158	4	t	)
  ( ("SLTEXCL" "dummy5")	158	5	t	)
  ( ("SLTEXCL" "dummy6")	158	6	t	)
  ( ("SLTEXCL" "dummy7")	158	7	t	)
  ( ("MD" "pin")		159	0	t	)
  ( ("RFDUMMY" "drawing")	160	0	t	)
  ( ("RFDUMMY" "drawing1")	160	1	t	)
  ( ("VIA12" "boundary")	161	0	nil	)
  ( ("VIA23" "boundary")	162	0	nil	)
  ( ("VIA34" "boundary")	163	0	nil	)
  ( ("VIA45" "boundary")	164	0	nil	)
  ( ("VIA56" "boundary")	165	0	nil	)
  ( ("VIA67" "boundary")	166	0	nil	)
  ( ("VIAD" "drawing")		167	0	t	)
  ( ("MD" "drawing")		168	0	t	)
  ( ("MD" "dummy")		168	1	t	)
  ( ("MD" "slot")		168	2	t	)
  ( ("CBD" "drawing")		169	0	t	)
  ( ("UBM" "drawing")		170	0	t	)
  ( ("NBL" "drawing")		179	0	t	)
  ( ("HVOX" "drawing")		180	0	t	)
  ( ("WBDMY" "drawing")		183	0	t	)
  ( ("DMN2V" "drawing")		184	0	t	)
  ( ("CODEC" "drawing")		185	0	t	)
  ( ("ESD3DUMMY" "drawing")	234	0	t	)
  ( ("FW" "drawing")		235	0	t	)
  ( ("PMDMY" "drawing")		236	0	t	)
  ( ("OTP" "drawing")		237	0	t	)
  ( ("HVPSW" "drawing")		241	0	t	)
  ( ("CONT" "boundary")		0	0	nil	)
  ( ("CONT" "net")		0	0	nil	)
  ( ("METAL1" "net")		0	0	nil	)
  ( ("METAL2" "net")		0	0	nil	)
  ( ("METAL3" "net")		0	0	nil	)
  ( ("METAL4" "net")		0	0	nil	)
  ( ("METAL5" "net")		0	0	nil	)
  ( ("METAL6" "net")		0	0	nil	)
  ( ("METAL7" "net")		0	0	nil	)
  ( ("VIA12" "net")		0	0	nil	)
  ( ("VIA23" "net")		0	0	nil	)
  ( ("VIA34" "net")		0	0	nil	)
  ( ("VIA45" "net")		0	0	nil	)
  ( ("VIA56" "net")		0	0	nil	)
  ( ("VIA67" "net")		0	0	nil	)
  ( ("boundary" "drawing")	0	0	nil	)
 ) ;streamLayers

) ;layerRules


;********************************
; PHYSICAL RULES
;********************************
physicalRules(

 spacingRules(
 ;( rule	layer1		layer2		value	)
 ;( ----	------		------		-----	)
  ( sameNet	"VIA12"		"CONT"		0	)
  ( sameNet	"VIA23"		"VIA12"		0	)
  ( sameNet	"VIA34"		"VIA23"		0	)
 ) ;spacingRules

 mfgGridResolution(
      ( 0.005000 )
 ) ;mfgGridResolution

) ;physicalRules


;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

;
; no syEnhancement devices
;

;
; no syDepletion devices
;

symContactDevice(
; (name viaLayer viaPurpose layer1 purpose1 layer2 purpose2
;  w l (row column xPitch yPitch xBias yBias) encByLayer1 encByLayer2 legalRegion)

  (M1_POLY1 CONT drawing POLY1 drawing METAL1 drawing
  0.22 0.22 (1 1 0.47 0.47 center center) 0.1 0.06 _NA_)

  (M1_NPOLY1 CONT drawing POLY1 drawing (NIMP drawing 0.18) METAL1 drawing
  0.22 0.22 (1 1 0.47 0.47 center center) 0.1 0.06 _NA_)

  (M1_PPOLY1 CONT drawing POLY1 drawing (PIMP drawing 0.18) METAL1 drawing
  0.22 0.22 (1 1 0.47 0.47 center center) 0.1 0.06 _NA_)

  (M1_NACTIVE CONT drawing DIFF drawing (NIMP drawing 0.35) METAL1 drawing
  0.22 0.22 (1 1 0.47 0.47 center center) 0.115 0.06 _NA_)

  (M1_NWELL CONT drawing DIFF drawing (NIMP drawing 0.35) METAL1 drawing (NWELL drawing 0.525)
  0.22 0.22 (1 1 0.47 0.47 center center) 0.115 0.06 _NA_)

  (M1_SUB CONT drawing DIFF drawing (PIMP drawing 0.35) METAL1 drawing
  0.22 0.22 (1 1 0.47 0.47 center center) 0.115 0.06 _NA_)

  (M1_PACTIVE CONT drawing DIFF drawing (PIMP drawing 0.35) METAL1 drawing
  0.22 0.22 (1 1 0.47 0.47 center center) 0.115 0.06 _NA_)

  (M2_M1 VIA12 drawing METAL1 drawing METAL2 drawing
  0.26 0.26 (1 1 0.52 0.52 center center) 0.06 0.06 _NA_)

  (M3_M2 VIA23 drawing METAL2 drawing METAL3 drawing
  0.26 0.26 (1 1 0.52 0.52 center center) 0.06 0.06 _NA_)

  (M4_M3 VIA34 drawing METAL3 drawing METAL4 drawing
  0.26 0.26 (1 1 0.52 0.52 center center) 0.06 0.06 _NA_)

  (M5_M4 VIA45 drawing METAL4 drawing METAL5 drawing
  0.26 0.26 (1 1 0.52 0.52 center center) 0.06 0.06 _NA_)

  (M6_M5 VIA56 drawing METAL5 drawing METAL6 drawing
  0.36 0.36 (1 1 0.71 0.71 center center) 0.06 0.57 _NA_)
)

tfcDefineDeviceProp(
; (viewName	deviceName	propName	propValue)
  (symbolic	M2_M1		viaType		"default")
  (symbolic	M3_M2		viaType		"default")
  (symbolic	M4_M3		viaType		"default")
  (symbolic	M5_M4		viaType		"default")
  (symbolic	M6_M5		viaType		"default")
)

symPinDevice(
; (name maskable layer1 purpose1 w1 layer2 purpose2 w2 legalRegion)
  (poly1_T t POLY1 drawing 0.18 _NA_ _NA_ _NA_ _NA_)
  (m1_T t METAL1 drawing 0.23 _NA_ _NA_ _NA_ _NA_)
  (m2_T t METAL2 drawing 0.28 _NA_ _NA_ _NA_ _NA_)
  (m3_T t METAL3 drawing 0.28 _NA_ _NA_ _NA_ _NA_)
  (m4_T t METAL4 drawing 0.28 _NA_ _NA_ _NA_ _NA_)
  (m5_T t METAL5 drawing 0.28 _NA_ _NA_ _NA_ _NA_)
  (m6_T t METAL6 drawing 0.44 _NA_ _NA_ _NA_ _NA_)
)

;
; no ruleContact devices
;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Opus Symbolic Device Class Definition
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;
; no other device classes
;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Opus Symbolic Device Declaration
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;
; no other devices
;
) ;devices


;********************************
; DLE RULES
;********************************
dleRules(

 dleExtractLayers(
 ;( list of layers or layer/purpose pairs  )
 ;( -------------------------------------  )
 ) ;dleExtractLayers

 dleNoOverlapLayers(
 ;( forbidden overlaps in DLE )
 ;( ------------------------- )
 ) ;dleNoOverlapLayers

) ;dleRules


;********************************
; DLR RULES
;********************************
dlrRules(

 dlrStackVias(
 ;( viaLayerPairList    stackable )
 ;( ----------------    --------- )
 ) ;dlrStackVias

 dlrRoutingLayers(
 ;( layer                       direction    )
 ;( -----                       ---------    )
 ) ;dlrRoutingLayers

 dlrDevices(
 ;( overlap layers for device active area )
 ;( ------------------------------------- )
 ) ;dlrDevices

) ;dlrRules


;********************************
; LAS RULES
;********************************
lasRules(

 lasProperties(
 ;( propName                    propValue     )
 ;( --------                    ---------     )
  ( lasPrimitiveList    	"pmos nmos"          )
  ( lasSwitchViewList   	"schematic cmos_sch" )
 ) ;lasProperties

) ;lasRules

