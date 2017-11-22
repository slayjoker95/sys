/*
 * $FreeBSD: releng/10.3/tools/tools/cxgbtool/reg_defs.c 204267 2010-02-23 23:01:41Z np $
 */

/* This file is automatically generated --- do not edit */

struct reg_info sge_regs[] = {
	{ "SG_CONTROL", 0x0, 0 },
		{ "CmdQ0_Enable", 0, 1 },
		{ "CmdQ1_Enable", 1, 1 },
		{ "FL0_Enable", 2, 1 },
		{ "FL1_Enable", 3, 1 },
		{ "CPL_Enable", 4, 1 },
		{ "Response_Queue_Enable", 5, 1 },
		{ "CmdQ_Priority", 6, 2 },
		{ "Disable_CmdQ0_GTS", 8, 1 },
		{ "Disable_CmdQ1_GTS", 9, 1 },
		{ "Disable_FL0_GTS", 10, 1 },
		{ "Disable_FL1_GTS", 11, 1 },
		{ "Enable_Big_Endian", 12, 1 },
		{ "FL_Selection_Criteria", 13, 1 },
		{ "iSCSI_Coalesce", 14, 1 },
		{ "RX_Pkt_Offset", 15, 3 },
		{ "VLAN_Xtract", 18, 1 },
	{ "SG_DOORBELL", 0x4, 0 },
		{ "CmdQ0_Enable", 0, 1 },
		{ "CmdQ1_Enable", 1, 1 },
		{ "FL0_Enable", 2, 1 },
		{ "FL1_Enable", 3, 1 },
	{ "SG_CMD0BASELWR", 0x8, 0 },
	{ "SG_CMD0BASEUPR", 0xc, 0 },
	{ "SG_CMD1BASELWR", 0x10, 0 },
	{ "SG_CMD1BASEUPR", 0x14, 0 },
	{ "SG_FL0BASELWR", 0x18, 0 },
	{ "SG_FL0BASEUPR", 0x1c, 0 },
	{ "SG_FL1BASELWR", 0x20, 0 },
	{ "SG_FL1BASEUPR", 0x24, 0 },
	{ "SG_CMD0SIZE", 0x28, 0 },
		{ "CmdQ0_Size", 0, 17 },
	{ "SG_FL0SIZE", 0x2c, 0 },
		{ "FL0_Size", 0, 17 },
	{ "SG_RSPSIZE", 0x30, 0 },
		{ "RespQ_Size", 0, 17 },
	{ "SG_RSPBASELWR", 0x34, 0 },
	{ "SG_RSPBASEUPR", 0x38, 0 },
	{ "SG_FLTHRESHOLD", 0x3c, 0 },
		{ "FL_Threshold", 0, 16 },
	{ "SG_RSPQUEUECREDIT", 0x40, 0 },
		{ "RespQ_Credit", 0, 17 },
	{ "SG_DEBUGTXDATAL", 0x44, 0 },
	{ "SG_SLEEPING", 0x48, 0 },
		{ "Sleeping", 0, 16 },
	{ "SG_INTRTIMER", 0x4c, 0 },
		{ "Interrupt_Timer_Count", 0, 24 },
	{ "SG_CMD0PTR", 0x50, 0 },
		{ "CmdQ0_Pointer", 0, 16 },
		{ "Current_Generation_Bit", 16, 1 },
	{ "SG_CMD1PTR", 0x54, 0 },
		{ "CmdQ1_Pointer", 0, 16 },
		{ "Current_Generation_Bit", 16, 1 },
	{ "SG_FL0PTR", 0x58, 0 },
		{ "FL0_Pointer", 0, 16 },
		{ "Current_Generation_Bit", 16, 1 },
	{ "SG_FL1PTR", 0x5c, 0 },
		{ "FL1_Pointer", 0, 16 },
		{ "Current_Generation_Bit", 16, 1 },
	{ "SG_DEBUGTXDATAH", 0x60, 0 },
	{ "SG_DEBUGRXDATAL", 0x64, 0 },
	{ "SG_DEBUGRXDATAH", 0x68, 0 },
	{ "SG_VERSION", 0x6c, 0 },
		{ "Day", 0, 5 },
		{ "Month", 5, 4 },
	{ "SG_DEBUGRXSOP", 0x70, 0 },
	{ "SG_DEBUGTXSOP", 0x74, 0 },
	{ "SG_LA_RDPTR0", 0x78, 0 },
		{ "Logic_Analyzer0_Read_Pointer", 0, 9 },
	{ "SG_LA_RDDATA0", 0x7c, 0 },
	{ "SG_LA_WRPTR0", 0x80, 0 },
	{ "SG_DEBUGRXEOP", 0x84, 0 },
	{ "SG_DEBUGTXEOP", 0x88, 0 },
	{ "SG_DEBUGRXSIZE", 0x8c, 0 },
	{ "SG_DEBUGTXSIZE", 0x90, 0 },
	{ "SG_NUMBER_LA", 0x94, 0 },
	{ "SG_LA_RDPTR1", 0x98, 0 },
		{ "Logic_Analyzer1_Read_Pointer", 0, 9 },
	{ "SG_LA_RDDATA1", 0x9c, 0 },
	{ "SG_LA_WRPTR1", 0xa0, 0 },
	{ "SG_LA_RDPTR2", 0xa4, 0 },
		{ "Logic_Analyzer2_Read_Pointer", 0, 9 },
	{ "SG_LA_RDDATA2", 0xa8, 0 },
	{ "SG_LA_WRPTR2", 0xac, 0 },
	{ "SG_CMD1SIZE", 0xb0, 0 },
		{ "CmdQ1_Size", 0, 17 },
	{ "SG_FL1SIZE", 0xb4, 0 },
		{ "FL1_Size", 0, 17 },
	{ "SG_INT_ENABLE", 0xb8, 0 },
		{ "RespQ_Exhausted", 0, 1 },
		{ "RespQ_Overflow", 1, 1 },
		{ "FL_Exhausted", 2, 1 },
		{ "Packet_Too_Big", 3, 1 },
		{ "Packet_Mismatch", 4, 1 },
	{ "SG_INT_CAUSE", 0xbc, 0 },
		{ "RespQ_Exhausted", 0, 1 },
		{ "RespQ_Overflow", 1, 1 },
		{ "FL_Exhausted", 2, 1 },
		{ "Packet_Too_Big", 3, 1 },
		{ "Packet_Mismatch", 4, 1 },
	{ "SG_RESPACCUTIMER", 0xc0, 0 },
	{ NULL, 0, 0 }
};

struct reg_info mc3_regs[] = {
	{ "MC3_CFG", 0x100, 0 },
		{ "Clk_Enable", 0, 1 },
		{ "Ready", 1, 1 },
		{ "Read_to_Write_Delay", 2, 3 },
		{ "Write_to_Read_Delay", 5, 3 },
		{ "MC3_Bank_Cycle", 8, 4 },
		{ "Refresh_Cycle", 12, 4 },
		{ "Precharge_Cycle", 16, 2 },
		{ "Active_to_Read_Write_Delay", 18, 1 },
		{ "Active_to_Precharge_Delay", 19, 3 },
		{ "Write_Recovery_Delay", 22, 2 },
		{ "Density", 24, 2 },
		{ "Organization", 26, 1 },
		{ "Banks", 27, 1 },
		{ "Unregistered", 28, 1 },
		{ "MC3_Width", 29, 2 },
		{ "MC3_Slow", 31, 1 },
	{ "MC3_MODE", 0x104, 0 },
		{ "MC3_Mode", 0, 14 },
		{ "Busy", 31, 1 },
	{ "MC3_EXT_MODE", 0x108, 0 },
		{ "MC3_Extended_Mode", 0, 14 },
		{ "Busy", 31, 1 },
	{ "MC3_PRECHARG", 0x10c, 0 },
		{ "Busy", 31, 1 },
	{ "MC3_REFRESH", 0x110, 0 },
		{ "Refresh_Enable", 0, 1 },
		{ "Refresh_Divisor", 1, 14 },
		{ "Busy", 31, 1 },
	{ "MC3_STROBE", 0x114, 0 },
		{ "Master_DLL_Reset", 0, 1 },
		{ "Master_DLL_Tap_Count", 1, 8 },
		{ "Master_DLL_Locked", 9, 1 },
		{ "Master_DLL_Max_Tap_Count", 10, 1 },
		{ "Master_DLL_Tap_Count_Offset", 11, 6 },
		{ "Slave_DLL_Reset", 11, 1 },
		{ "Slave_DLL_Delta", 12, 4 },
		{ "Slave_Delay_Line_Manual_Tap_Count", 17, 6 },
		{ "Slave_Delay_Line_Manual_Tap_Count_Enable", 23, 1 },
		{ "Slave_Delay_Line_Tap_Count", 24, 6 },
	{ "MC3_ECC_CNTL", 0x118, 0 },
		{ "ECC_Generation_Enable", 0, 1 },
		{ "ECC_Check_Enable", 1, 1 },
		{ "Correctable_Error_Count", 2, 8 },
		{ "Uncorrectable_Error_Count", 10, 8 },
	{ "MC3_CE_ADDR", 0x11c, 0 },
		{ "MC3_CE_Addr", 4, 28 },
	{ "MC3_CE_DATA0", 0x120, 0 },
	{ "MC3_CE_DATA1", 0x124, 0 },
	{ "MC3_CE_DATA2", 0x128, 0 },
	{ "MC3_CE_DATA3", 0x12c, 0 },
	{ "MC3_CE_DATA4", 0x130, 0 },
	{ "MC3_UE_ADDR", 0x134, 0 },
		{ "MC3_UE_Addr", 4, 28 },
	{ "MC3_UE_DATA0", 0x138, 0 },
	{ "MC3_UE_DATA1", 0x13c, 0 },
	{ "MC3_UE_DATA2", 0x140, 0 },
	{ "MC3_UE_DATA3", 0x144, 0 },
	{ "MC3_UE_DATA4", 0x148, 0 },
	{ "MC3_BD_ADDR", 0x14c, 0 },
	{ "MC3_BD_DATA0", 0x150, 0 },
	{ "MC3_BD_DATA1", 0x154, 0 },
	{ "MC3_BD_DATA2", 0x158, 0 },
	{ "MC3_BD_DATA3", 0x15c, 0 },
	{ "MC3_BD_DATA4", 0x160, 0 },
	{ "MC3_BD_OP", 0x164, 0 },
		{ "Back_Door_Operation", 0, 1 },
		{ "Busy", 31, 1 },
	{ "MC3_BIST_ADDR_BEG", 0x168, 0 },
	{ "MC3_BIST_ADDR_END", 0x16c, 0 },
	{ "MC3_BIST_DATA", 0x170, 0 },
	{ "MC3_BIST_OP", 0x174, 0 },
		{ "Op", 0, 1 },
		{ "Data_Pattern", 1, 2 },
		{ "Continuous", 3, 1 },
		{ "Busy", 31, 1 },
	{ "MC3_INT_ENABLE", 0x178, 0 },
		{ "MC3_Corr_Err", 0, 1 },
		{ "MC3_Uncorr_Err", 1, 1 },
		{ "MC3_Parity_Err", 2, 8 },
		{ "MC3_Addr_Err", 10, 1 },
	{ "MC3_INT_CAUSE", 0x17c, 0 },
		{ "MC3_Corr_Err", 0, 1 },
		{ "MC3_Uncorr_Err", 1, 1 },
		{ "MC3_Parity_Err", 2, 8 },
		{ "MC3_Addr_Err", 10, 1 },
	{ NULL, 0, 0 }
};

struct reg_info mc4_regs[] = {
	{ "MC4_CFG", 0x180, 0 },
		{ "Power_Up", 0, 1 },
		{ "Ready", 1, 1 },
		{ "Read_to_Write_Delay", 2, 3 },
		{ "Write_to_Read_Delay", 5, 3 },
		{ "MC4_Bank_Cycle", 8, 3 },
		{ "MC4_Narrow", 24, 1 },
		{ "MC4_Slow", 25, 1 },
		{ "MC4A_Width", 24, 2 },
		{ "MC4A_Slow", 26, 1 },
	{ "MC4_MODE", 0x184, 0 },
		{ "MC4_Mode", 0, 15 },
		{ "Busy", 31, 1 },
	{ "MC4_EXT_MODE", 0x188, 0 },
		{ "MC4_Extended_Mode", 0, 15 },
		{ "Busy", 31, 1 },
	{ "MC4_REFRESH", 0x190, 0 },
		{ "Refresh_Enable", 0, 1 },
		{ "Refresh_Divisor", 1, 14 },
		{ "Busy", 31, 1 },
	{ "MC4_STROBE", 0x194, 0 },
		{ "Master_DLL_Reset", 0, 1 },
		{ "Master_DLL_Tap_Count", 1, 8 },
		{ "Master_DLL_Locked", 9, 1 },
		{ "Master_DLL_Max_Tap_Count", 10, 1 },
		{ "Master_DLL_Tap_Count_Offset", 11, 6 },
		{ "Slave_DLL_Reset", 11, 1 },
		{ "Slave_DLL_Delta", 12, 4 },
		{ "Slave_Delay_Line_Manual_Tap_Count", 17, 6 },
		{ "Slave_Delay_Line_Manual_Tap_Count_Enable", 23, 1 },
		{ "Slave_Delay_Line_Tap_Count", 24, 6 },
	{ "MC4_ECC_CNTL", 0x198, 0 },
		{ "ECC_Generation_Enable", 0, 1 },
		{ "ECC_Check_Enable", 1, 1 },
		{ "Correctable_Error_Count", 2, 8 },
		{ "Uncorrectable_Error_Count", 10, 8 },
	{ "MC4_CE_ADDR", 0x19c, 0 },
		{ "MC4_CE_Addr", 4, 24 },
	{ "MC4_CE_DATA0", 0x1a0, 0 },
	{ "MC4_CE_DATA1", 0x1a4, 0 },
	{ "MC4_CE_DATA2", 0x1a8, 0 },
	{ "MC4_CE_DATA3", 0x1ac, 0 },
	{ "MC4_CE_DATA4", 0x1b0, 0 },
	{ "MC4_UE_ADDR", 0x1b4, 0 },
		{ "MC4_UE_Addr", 4, 24 },
	{ "MC4_UE_DATA0", 0x1b8, 0 },
	{ "MC4_UE_DATA1", 0x1bc, 0 },
	{ "MC4_UE_DATA2", 0x1c0, 0 },
	{ "MC4_UE_DATA3", 0x1c4, 0 },
	{ "MC4_UE_DATA4", 0x1c8, 0 },
	{ "MC4_BD_ADDR", 0x1cc, 0 },
		{ "MC4_Back_Door_Addr", 0, 28 },
	{ "MC4_BD_DATA0", 0x1d0, 0 },
	{ "MC4_BD_DATA1", 0x1d4, 0 },
	{ "MC4_BD_DATA2", 0x1d8, 0 },
	{ "MC4_BD_DATA3", 0x1dc, 0 },
	{ "MC4_BD_DATA4", 0x1e0, 0 },
	{ "MC4_BD_OP", 0x1e4, 0 },
		{ "Operation", 0, 1 },
		{ "Busy", 31, 1 },
	{ "MC4_BIST_ADDR_BEG", 0x1e8, 0 },
	{ "MC4_BIST_ADDR_END", 0x1ec, 0 },
	{ "MC4_BIST_DATA", 0x1f0, 0 },
	{ "MC4_BIST_OP", 0x1f4, 0 },
		{ "Op", 0, 1 },
		{ "Data_Pattern", 1, 2 },
		{ "Continuous", 3, 1 },
		{ "Busy", 31, 1 },
	{ "MC4_INT_ENABLE", 0x1f8, 0 },
		{ "MC4_Corr_Err", 0, 1 },
		{ "MC4_Uncorr_Err", 1, 1 },
		{ "MC4_Addr_Err", 2, 1 },
	{ "MC4_INT_CAUSE", 0x1fc, 0 },
		{ "MC4_Corr_Err", 0, 1 },
		{ "MC4_Uncorr_Err", 1, 1 },
		{ "MC4_Addr_Err", 2, 1 },
	{ NULL, 0, 0 }
};

struct reg_info tpi_regs[] = {
	{ "TPI_ADDR", 0x280, 0 },
		{ "TPI_ADDRESS", 0, 24 },
	{ "TPI_WR_DATA", 0x284, 0 },
	{ "TPI_RD_DATA", 0x288, 0 },
	{ "TPI_CSR", 0x28c, 0 },
		{ "TPIWR", 0, 1 },
		{ "TPIRDY", 1, 1 },
		{ "INT_DIR", 31, 1 },
	{ "TPI_PAR", 0x29c, 0 },
		{ "TPIPAR", 0, 7 },
	{ NULL, 0, 0 }
};

struct reg_info tp_regs[] = {
	{ "TP_IN_CONFIG", 0x300, 0 },
		{ "TP_IN_CSPI_Tunnel", 0, 1 },
		{ "TP_IN_CSPI_Ethernet", 1, 1 },
		{ "TP_IN_CSPI_CPL", 3, 1 },
		{ "TP_IN_CSPI_POS", 4, 1 },
		{ "TP_IN_CSPI_Check_IP_Csum", 5, 1 },
		{ "TP_IN_CSPI_Check_TCP_Csum", 6, 1 },
		{ "TP_IN_ESPI_Tunnel", 7, 1 },
		{ "TP_IN_ESPI_Ethernet", 8, 1 },
		{ "TP_IN_ESPI_CPL", 10, 1 },
		{ "TP_IN_ESPI_POS", 11, 1 },
		{ "TP_IN_ESPI_Check_IP_Csum", 12, 1 },
		{ "TP_IN_ESPI_Check_TCP_Csum", 13, 1 },
		{ "Offload_Disable", 14, 1 },
	{ "TP_OUT_CONFIG", 0x304, 0 },
		{ "TP_OUT_C_ETH", 0, 1 },
		{ "TP_OUT_CSPI_CPL", 2, 1 },
		{ "TP_OUT_CSPI_POS", 3, 1 },
		{ "TP_OUT_CSPI_Generate_IP_Csum", 4, 1 },
		{ "TP_OUT_CSPI_Generate_TCP_Csum", 5, 1 },
		{ "TP_OUT_ESPI_Ethernet", 6, 1 },
		{ "TP_OUT_ESPI_TAG_Ethernet", 7, 1 },
		{ "TP_OUT_ESPI_CPL", 8, 1 },
		{ "TP_OUT_ESPI_POS", 9, 1 },
		{ "TP_OUT_ESPI_Generate_IP_Csum", 10, 1 },
		{ "TP_OUT_ESPI_Generate_TCP_Csum", 11, 1 },
	{ "TP_GLOBAL_CONFIG", 0x308, 0 },
		{ "IP_TTL", 0, 8 },
		{ "TCAM_Server_Region_Usage", 8, 2 },
		{ "QOS_Mapping", 10, 1 },
		{ "TCP_Csum", 11, 1 },
		{ "UDP_Csum", 12, 1 },
		{ "IP_Csum", 13, 1 },
		{ "IP_ID_Split", 14, 1 },
		{ "Path_MTU", 15, 1 },
		{ "5Tuple_Lookup", 17, 2 },
		{ "IP_Fragment_Drop", 19, 1 },
		{ "Ping_Drop", 20, 1 },
		{ "Protect_Mode", 21, 1 },
		{ "SYN_Cookie_Algorithm", 22, 1 },
		{ "Attack_Filter", 23, 1 },
		{ "Interface_Type", 24, 1 },
		{ "Disable_RX_Flow_Control", 25, 1 },
		{ "SYN_Cookie_Parameter", 26, 6 },
	{ "TP_GLOBAL_RX_CREDITS", 0x30c, 0 },
	{ "TP_CM_SIZE", 0x310, 0 },
	{ "TP_CM_MM_BASE", 0x314, 0 },
		{ "CM_MemMgr_Base", 0, 28 },
	{ "TP_CM_TIMER_BASE", 0x318, 0 },
		{ "CM_Timer_Base", 0, 28 },
	{ "TP_PM_SIZE", 0x31c, 0 },
	{ "TP_PM_TX_BASE", 0x320, 0 },
	{ "TP_PM_DEFRAG_BASE", 0x324, 0 },
	{ "TP_PM_RX_BASE", 0x328, 0 },
	{ "TP_PM_RX_PG_SIZE", 0x32c, 0 },
	{ "TP_PM_RX_MAX_PGS", 0x330, 0 },
	{ "TP_PM_TX_PG_SIZE", 0x334, 0 },
	{ "TP_PM_TX_MAX_PGS", 0x338, 0 },
	{ "TP_TCP_OPTIONS", 0x340, 0 },
		{ "Timestamp", 0, 2 },
		{ "Window_Scale", 2, 2 },
		{ "SACK", 4, 2 },
		{ "ECN", 6, 2 },
		{ "SACK_Algorithm", 8, 2 },
		{ "MSS", 10, 1 },
		{ "Default_Peer_MSS", 16, 16 },
	{ "TP_DACK_CONFIG", 0x344, 0 },
		{ "DACK_Mode", 0, 1 },
		{ "DACK_Auto_Mgmt", 1, 1 },
		{ "DACK_Auto_Careful", 2, 1 },
		{ "DACK_MSS_Selector", 3, 2 },
		{ "DACK_Byte_Threshold", 5, 20 },
	{ "TP_PC_CONFIG", 0x348, 0 },
		{ "TP_Access_Latency", 0, 4 },
		{ "Held_FIN_Disable", 4, 1 },
		{ "DDP_FC_Enable", 5, 1 },
		{ "RDMA_Err_Enable", 6, 1 },
		{ "Fast_PDU_Delivery", 7, 1 },
		{ "Clear_FIN", 8, 1 },
		{ "TP_PC_Rev", 30, 2 },
	{ "TP_BACKOFF0", 0x350, 0 },
		{ "Element0", 0, 8 },
		{ "Element1", 8, 8 },
		{ "Element2", 16, 8 },
		{ "Element3", 24, 8 },
	{ "TP_BACKOFF1", 0x354, 0 },
		{ "Element0", 0, 8 },
		{ "Element1", 8, 8 },
		{ "Element2", 16, 8 },
		{ "Element3", 24, 8 },
	{ "TP_BACKOFF2", 0x358, 0 },
		{ "Element0", 0, 8 },
		{ "Element1", 8, 8 },
		{ "Element2", 16, 8 },
		{ "Element3", 24, 8 },
	{ "TP_BACKOFF3", 0x35c, 0 },
		{ "Element0", 0, 8 },
		{ "Element1", 8, 8 },
		{ "Element2", 16, 8 },
		{ "Element3", 24, 8 },
	{ "TP_PARA_REG0", 0x360, 0 },
		{ "Var_Mult", 0, 4 },
		{ "Var_Gain", 4, 4 },
		{ "SRTT_Gain", 8, 4 },
		{ "RTTVar_Init", 12, 4 },
		{ "Dup_Thresh", 20, 4 },
		{ "Init_Cong_Win", 24, 3 },
	{ "TP_PARA_REG1", 0x364, 0 },
		{ "Initial_Slow_Start_Threshold", 0, 16 },
		{ "Receive_Buffer_Size", 16, 16 },
	{ "TP_PARA_REG2", 0x368, 0 },
		{ "RX_Coalesce_Size", 0, 16 },
		{ "MAX_RX_Size", 16, 16 },
	{ "TP_PARA_REG3", 0x36c, 0 },
		{ "RX_Coalescing_PSH_Deliver", 0, 1 },
		{ "RX_Coalescing_Enable", 1, 1 },
		{ "Tahoe_Enable", 2, 1 },
		{ "MAX_Reorder_Fragments", 12, 3 },
	{ "TP_TIMER_RESOLUTION", 0x390, 0 },
		{ "Delayed_ACK_Timer_Resolution", 0, 6 },
		{ "Generic_Timer_Resolution", 16, 6 },
	{ "TP_2MSL", 0x394, 0 },
		{ "2MSL", 0, 30 },
	{ "TP_RXT_MIN", 0x398, 0 },
		{ "Retransmit_Timer_MIN", 0, 16 },
	{ "TP_RXT_MAX", 0x39c, 0 },
		{ "Retransmit_Timer_MAX", 0, 30 },
	{ "TP_PERS_MIN", 0x3a0, 0 },
		{ "Persist_Timer_MIN", 0, 16 },
	{ "TP_PERS_MAX", 0x3a4, 0 },
		{ "Persist_Timer_MAX", 0, 30 },
	{ "TP_KEEP_IDLE", 0x3ac, 0 },
		{ "Keep_Alive_Idle_Time", 0, 30 },
	{ "TP_KEEP_INTVL", 0x3b0, 0 },
		{ "Keep_Alive_Interval_Time", 0, 30 },
	{ "TP_INIT_SRTT", 0x3b4, 0 },
		{ "Initial_SRTT", 0, 16 },
	{ "TP_DACK_TIME", 0x3b8, 0 },
		{ "Delayed_ACK_Time", 0, 11 },
	{ "TP_FINWAIT2_TIME", 0x3bc, 0 },
		{ "FINWAIT2_TIME", 0, 30 },
	{ "TP_FAST_FINWAIT2_TIME", 0x3c0, 0 },
		{ "Fast_FINWAIT2_Time", 0, 30 },
	{ "TP_SHIFT_CNT", 0x3c4, 0 },
		{ "KeepAlive_MAX", 0, 8 },
		{ "WindowProbe_MAX", 8, 8 },
		{ "Retransmission_MAX", 16, 8 },
		{ "SYN_MAX", 24, 8 },
	{ "TP_QOS_REG0", 0x3e0, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG1", 0x3e4, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG2", 0x3e8, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG3", 0x3ec, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG4", 0x3f0, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG5", 0x3f4, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG6", 0x3f8, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_QOS_REG7", 0x3fc, 0 },
		{ "L3_Value", 0, 6 },
	{ "TP_MTU_REG0", 0x404, 0 },
	{ "TP_MTU_REG1", 0x408, 0 },
	{ "TP_MTU_REG2", 0x40c, 0 },
	{ "TP_MTU_REG3", 0x410, 0 },
	{ "TP_MTU_REG4", 0x414, 0 },
	{ "TP_MTU_REG5", 0x418, 0 },
	{ "TP_MTU_REG6", 0x41c, 0 },
	{ "TP_MTU_REG7", 0x420, 0 },
	{ "TP_RESET", 0x44c, 0 },
		{ "TP_Reset", 0, 1 },
		{ "CM_MemMgr_Init", 1, 1 },
	{ "TP_MIB_INDEX", 0x450, 0 },
	{ "TP_MIB_DATA", 0x454, 0 },
	{ "TP_SYNC_TIME_HI", 0x458, 0 },
	{ "TP_SYNC_TIME_LO", 0x45c, 0 },
	{ "TP_CM_MM_RX_FLST_BASE", 0x460, 0 },
		{ "CM_MemMgr_RX_Free_List_Base", 0, 28 },
	{ "TP_CM_MM_TX_FLST_BASE", 0x464, 0 },
		{ "CM_MemMgr_TX_Free_List_Base", 0, 28 },
	{ "TP_CM_MM_P_FLST_BASE", 0x468, 0 },
		{ "CM_MemMgr_PStruct_Free_List_Base", 0, 28 },
	{ "TP_CM_MM_MAX_P", 0x46c, 0 },
		{ "CM_MemMgr_MAX_PStruct", 0, 28 },
	{ "TP_INT_ENABLE", 0x470, 0 },
		{ "TX_Free_List_Empty", 0, 1 },
		{ "RX_Free_List_Empty", 1, 1 },
	{ "TP_INT_CAUSE", 0x474, 0 },
		{ "TX_Free_List_Empty", 0, 1 },
		{ "RX_Free_List_Empty", 1, 1 },
	{ "TP_FLM_FREE_PSTRUCT_CNT", 0x480, 0 },
	{ "TP_FLM_FREE_RX_PG_CNT", 0x484, 0 },
	{ "TP_FLM_FREE_TX_PG_CNT", 0x488, 0 },
	{ "TP_HEAP_PUSH_CNT", 0x48c, 0 },
	{ "TP_HEAP_POP_CNT", 0x490, 0 },
	{ "TP_DACK_PUSH_CNT", 0x494, 0 },
	{ "TP_DACK_POP_CNT", 0x498, 0 },
	{ "TP_MOD_PUSH_CNT", 0x49c, 0 },
	{ "TP_MOD_POP_CNT", 0x4a0, 0 },
	{ "TP_TIMER_SEPARATOR", 0x4a4, 0 },
		{ "Disable_Past_Timer_Insertion", 0, 1 },
		{ "Modulation_Timer_Separator", 1, 15 },
		{ "Global_Timer_Separator", 16, 16 },
	{ "TP_DEBUG_SEL", 0x4a8, 0 },
	{ "TP_CM_FC_MODE", 0x4b0, 0 },
	{ "TP_PC_CONGESTION_CNTL", 0x4b4, 0 },
	{ "TP_TX_DROP_CONFIG", 0x4b8, 0 },
		{ "ENABLE_TX_DROP", 31, 1 },
		{ "ENABLE_TX_ERROR", 30, 1 },
		{ "DROP_TICKS_CNT", 4, 26 },
		{ "NUM_PKTS_DROPPED", 0, 4 },
	{ "TP_TX_DROP_COUNT", 0x4bc, 0 },
	{ NULL, 0, 0 }
};

struct reg_info rat_regs[] = {
	{ "RAT_ROUTE_CONTROL", 0x580, 0 },
		{ "Use_Route_Table", 0, 1 },
		{ "Enable_CSPI", 1, 1 },
		{ "Enable_PCIX", 2, 1 },
	{ "RAT_ROUTE_TABLE_INDEX", 0x584, 0 },
		{ "Route_Table_Index", 0, 4 },
	{ "RAT_ROUTE_TABLE_DATA", 0x588, 0 },
	{ "RAT_NO_ROUTE", 0x58c, 0 },
		{ "CPL_Opcode", 0, 8 },
	{ "RAT_INTR_ENABLE", 0x590, 0 },
		{ "ZeroRouteError", 0, 1 },
		{ "CspiFramingError", 1, 1 },
		{ "SgeFramingError", 2, 1 },
		{ "TpFramingError", 3, 1 },
	{ "RAT_INTR_CAUSE", 0x594, 0 },
		{ "ZeroRouteError", 0, 1 },
		{ "CspiFramingError", 1, 1 },
		{ "SgeFramingError", 2, 1 },
		{ "TpFramingError", 3, 1 },
	{ NULL, 0, 0 }
};

struct reg_info cspi_regs[] = {
	{ "CSPI_RX_AE_WM", 0x810, 0 },
	{ "CSPI_RX_AF_WM", 0x814, 0 },
	{ "CSPI_CALENDAR_LEN", 0x818, 0 },
		{ "CalendarLength", 0, 16 },
	{ "CSPI_FIFO_STATUS_ENABLE", 0x820, 0 },
		{ "FifoStatusEnable", 0, 1 },
	{ "CSPI_MAXBURST1_MAXBURST2", 0x828, 0 },
		{ "MaxBurst1", 0, 16 },
		{ "MaxBurst2", 16, 16 },
	{ "CSPI_TRAIN", 0x82c, 0 },
		{ "CSPI_TRAIN_ALPHA", 0, 16 },
		{ "CSPI_TRAIN_DATA_MAXT", 16, 16 },
	{ "CSPI_INTR_STATUS", 0x848, 0 },
		{ "DIP4Err", 0, 1 },
		{ "RXDrop", 1, 1 },
		{ "TXDrop", 2, 1 },
		{ "RXOverflow", 3, 1 },
		{ "RAMParityErr", 4, 1 },
	{ "CSPI_INTR_ENABLE", 0x84c, 0 },
		{ "DIP4Err", 0, 1 },
		{ "RXDrop", 1, 1 },
		{ "TXDrop", 2, 1 },
		{ "RXOverflow", 3, 1 },
		{ "RAMParityErr", 4, 1 },
	{ NULL, 0, 0 }
};

struct reg_info espi_regs[] = {
	{ "ESPI_SCH_TOKEN0", 0x880, 0 },
		{ "SchToken0", 0, 16 },
	{ "ESPI_SCH_TOKEN1", 0x884, 0 },
		{ "SchToken1", 0, 16 },
	{ "ESPI_SCH_TOKEN2", 0x888, 0 },
		{ "SchToken2", 0, 16 },
	{ "ESPI_SCH_TOKEN3", 0x88c, 0 },
		{ "SchToken3", 0, 16 },
	{ "ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK", 0x890, 0 },
		{ "AlmostEmpty", 0, 16 },
	{ "ESPI_RX_FIFO_ALMOST_FULL_WATERMARK", 0x894, 0 },
		{ "AlmostFull", 0, 16 },
	{ "ESPI_CALENDAR_LENGTH", 0x898, 0 },
		{ "CalendarLength", 0, 16 },
	{ "PORT_CONFIG", 0x89c, 0 },
		{ "RX_NPorts", 0, 8 },
		{ "TX_NPorts", 8, 8 },
	{ "ESPI_FIFO_STATUS_ENABLE", 0x8a0, 0 },
		{ "RXStatusEnable", 0, 1 },
		{ "TXDropEnable", 1, 1 },
		{ "RXEndianMode", 2, 1 },
		{ "TXEndianMode", 3, 1 },
		{ "Intel1010Mode", 4, 1 },
	{ "ESPI_MAXBURST1_MAXBURST2", 0x8a8, 0 },
		{ "MaxBurst1", 0, 16 },
		{ "MaxBurst2", 16, 16 },
	{ "ESPI_TRAIN", 0x8ac, 0 },
		{ "MaxTrainAlpha", 0, 16 },
		{ "MaxTrainData", 16, 16 },
	{ "RAM_STATUS", 0x8b0, 0 },
		{ "RXFIFOParityError", 0, 10 },
		{ "TXFIFOParityError", 10, 10 },
		{ "RXFIFOOverflow", 20, 10 },
	{ "TX_DROP_COUNT0", 0x8b4, 0 },
		{ "TXPort0DropCnt", 0, 16 },
		{ "TxPort1DropCnt", 16, 16 },
	{ "TX_DROP_COUNT1", 0x8b8, 0 },
		{ "TXPort2DropCnt", 0, 16 },
		{ "TxPort3DropCnt", 16, 16 },
	{ "RX_DROP_COUNT0", 0x8bc, 0 },
		{ "RXPort0DropCnt", 0, 16 },
		{ "RxPort1DropCnt", 16, 16 },
	{ "RX_DROP_COUNT1", 0x8c0, 0 },
		{ "RXPort2DropCnt", 0, 16 },
		{ "RxPort3DropCnt", 16, 16 },
	{ "DIP4_ERROR_COUNT", 0x8c4, 0 },
		{ "Dip4ErrorCnt", 0, 12 },
		{ "Dip4ErrorCntShadow", 12, 12 },
		{ "TriCN_RX_Train_Err", 24, 1 },
		{ "TriCN_RX_Training", 25, 1 },
		{ "TriCN_RX_Train_OK", 26, 1 },
	{ "ESPI_INTR_STATUS", 0x8c8, 0 },
		{ "DIP4Err", 0, 1 },
		{ "RXDrop", 1, 1 },
		{ "TXDrop", 2, 1 },
		{ "RXOverflow", 3, 1 },
		{ "RAMParityErr", 4, 1 },
		{ "DIP2ParityErr", 5, 1 },
	{ "ESPI_INTR_ENABLE", 0x8cc, 0 },
		{ "DIP4Err", 0, 1 },
		{ "RXDrop", 1, 1 },
		{ "TXDrop", 2, 1 },
		{ "RXOverflow", 3, 1 },
		{ "RAMParityErr", 4, 1 },
		{ "DIP2ParityErr", 5, 1 },
	{ "RX_DROP_THRESHOLD", 0x8d0, 0 },
	{ "ESPI_RX_RESET", 0x8ec, 0 },
		{ "ESPI_RX_LNK_RST", 0, 1 },
		{ "ESPI_RX_CORE_RST", 1, 1 },
		{ "RX_CLK_STATUS", 2, 1 },
	{ "ESPI_MISC_CONTROL", 0x8f0, 0 },
		{ "Out_of_Sync_Count", 0, 4 },
		{ "DIP2_Count_Mode_Enable", 4, 1 },
		{ "DIP2_Parity_Err_Thres", 5, 4 },
		{ "DIP4_Thres", 9, 12 },
		{ "DIP4_Thres_Enable", 21, 1 },
		{ "Force_Disable_Status", 22, 1 },
		{ "Dynamic_Deskew", 23, 1 },
		{ "Monitored_Port_Num", 25, 2 },
		{ "Monitored_Direction", 27, 1 },
		{ "Monitored_Interface", 28, 1 },
	{ "ESPI_DIP2_ERR_COUNT", 0x8f4, 0 },
		{ "DIP2_Err_Cnt", 0, 4 },
	{ "ESPI_CMD_ADDR", 0x8f8, 0 },
		{ "Write_Data", 0, 8 },
		{ "Register_Offset", 8, 4 },
		{ "Channel_Addr", 12, 4 },
		{ "Module_Addr", 16, 2 },
		{ "Bundle_Addr", 20, 2 },
		{ "SPI4_Command", 24, 8 },
	{ "ESPI_GOSTAT", 0x8fc, 0 },
		{ "Read_Data", 0, 8 },
		{ "ESPI_Cmd_Busy", 8, 1 },
		{ "Error_Ack", 9, 1 },
		{ "Unmapped_Err", 10, 1 },
		{ "Transaction_Timer", 16, 8 },
	{ NULL, 0, 0 }
};

struct reg_info ulp_regs[] = {
	{ "ULP_ULIMIT", 0x980, 0 },
	{ "ULP_TAGMASK", 0x984, 0 },
	{ "ULP_HREG_INDEX", 0x988, 0 },
	{ "ULP_HREG_DATA", 0x98c, 0 },
	{ "ULP_INT_ENABLE", 0x990, 0 },
	{ "ULP_INT_CAUSE", 0x994, 0 },
		{ "Hreg_Par_Err", 0, 1 },
		{ "Egrs_Data_Par_Err", 1, 1 },
		{ "Ingrs_Data_Par_Err", 2, 1 },
		{ "Pm_Intr", 3, 1 },
		{ "Pm_E2C_Sync_Err", 4, 1 },
		{ "Pm_C2E_Sync_Err", 5, 1 },
		{ "Pm_E2C_Empty_Err", 6, 1 },
		{ "Pm_C2E_Empty_Err", 7, 1 },
		{ "Pm_Par_Err", 8, 16 },
		{ "Pm_E2C_Wrt_Full", 24, 1 },
		{ "Pm_C2E_Wrt_Full", 25, 1 },
	{ "ULP_PIO_CTRL", 0x998, 0 },
	{ NULL, 0, 0 }
};

struct reg_info pl_regs[] = {
	{ "PL_ENABLE", 0xa00, 0 },
		{ "PL_Intr_SGE_Err", 0, 1 },
		{ "PL_Intr_SGE_Data", 1, 1 },
		{ "PL_Intr_MC3", 2, 1 },
		{ "PL_Intr_MC4", 3, 1 },
		{ "PL_Intr_MC5", 4, 1 },
		{ "PL_Intr_RAT", 5, 1 },
		{ "PL_Intr_TP", 6, 1 },
		{ "PL_Intr_ULP", 7, 1 },
		{ "PL_Intr_ESPI", 8, 1 },
		{ "PL_Intr_CSPI", 9, 1 },
		{ "PL_Intr_PCIX", 10, 1 },
		{ "PL_Intr_EXT", 11, 1 },
	{ "PL_CAUSE", 0xa04, 0 },
		{ "PL_Intr_SGE_Err", 0, 1 },
		{ "PL_Intr_SGE_Data", 1, 1 },
		{ "PL_Intr_MC3", 2, 1 },
		{ "PL_Intr_MC4", 3, 1 },
		{ "PL_Intr_MC5", 4, 1 },
		{ "PL_Intr_RAT", 5, 1 },
		{ "PL_Intr_TP", 6, 1 },
		{ "PL_Intr_ULP", 7, 1 },
		{ "PL_Intr_ESPI", 8, 1 },
		{ "PL_Intr_CSPI", 9, 1 },
		{ "PL_Intr_PCIX", 10, 1 },
		{ "PL_Intr_EXT", 11, 1 },
	{ NULL, 0, 0 }
};

struct reg_info mc5_regs[] = {
	{ "MC5_CONFIG", 0xc04, 0 },
		{ "Mode", 0, 1 },
		{ "TCAM_Reset", 1, 1 },
		{ "TCAM_Ready", 2, 1 },
		{ "DBGI_Enable", 4, 1 },
		{ "M_Bus_Enable", 5, 1 },
		{ "Parity_Enable", 6, 1 },
		{ "SYN_Issue_Mode", 7, 2 },
		{ "Build", 16, 1 },
		{ "Compression_Enable", 17, 1 },
		{ "Num_LIP", 18, 6 },
		{ "TCAM_Part_Cnt", 24, 2 },
		{ "TCAM_Part_Type", 26, 2 },
		{ "TCAM_Part_Size", 28, 2 },
		{ "TCAM_Part_Type_HI", 30, 1 },
	{ "MC5_SIZE", 0xc08, 0 },
		{ "Size", 0, 22 },
	{ "MC5_ROUTING_TABLE_INDEX", 0xc0c, 0 },
		{ "Start_of_Routing_Table", 0, 22 },
	{ "MC5_SERVER_INDEX", 0xc14, 0 },
		{ "Start_of_Server_Index", 0, 22 },
	{ "MC5_LIP_RAM_ADDR", 0xc18, 0 },
		{ "Local_IP_RAM_Addr", 0, 6 },
		{ "RAM_Write_Enable", 8, 1 },
	{ "MC5_LIP_RAM_DATA", 0xc1c, 0 },
	{ "MC5_RSP_LATENCY", 0xc20, 0 },
		{ "Search_Response_Latency", 0, 5 },
		{ "Learn_Response_Latency", 8, 5 },
	{ "MC5_PARITY_LATENCY", 0xc24, 0 },
		{ "SRCHLAT", 0, 5 },
		{ "PARLAT", 8, 5 },
	{ "MC5_WR_LRN_VERIFY", 0xc28, 0 },
		{ "POVEREN", 0, 1 },
		{ "LRNVEREN", 1, 1 },
		{ "VWVEREN", 2, 1 },
	{ "MC5_PART_ID_INDEX", 0xc2c, 0 },
		{ "IDINDEX", 0, 4 },
	{ "MC5_RESET_MAX", 0xc30, 0 },
		{ "RSTMAX", 0, 9 },
	{ "MC5_INT_ENABLE", 0xc40, 0 },
		{ "MC5_Int_Hit_Out_Active_Region_Err", 0, 1 },
		{ "MC5_Int_Hit_In_Active_Region_Err", 1, 1 },
		{ "MC5_Int_Hit_In_RT_Region_Err", 2, 1 },
		{ "MC5_Int_Miss_Err", 3, 1 },
		{ "MC5_Int_LIP0_Err", 4, 1 },
		{ "MC5_Int_LIP_Miss_Err", 5, 1 },
		{ "MC5_Int_Parity_Err", 6, 1 },
		{ "MC5_Int_Active_Region_Full", 7, 1 },
		{ "MC5_Int_NFA_Srch_Err", 8, 1 },
		{ "MC5_Int_SYN_Cookie", 9, 1 },
		{ "MC5_Int_SYN_Cookie_Bad", 10, 1 },
		{ "MC5_Int_SYN_Cookie_Off", 11, 1 },
		{ "MC5_Int_Unknown_Cmd", 15, 1 },
		{ "MC5_Int_RequestQ_Parity_Err", 16, 1 },
		{ "MC5_Int_DispatchQ_Parity_Err", 17, 1 },
		{ "MC5_Int_Del_Act_Empty", 18, 1 },
	{ "MC5_INT_CAUSE", 0xc44, 0 },
		{ "MC5_Int_Hit_Out_Active_Region_Err", 0, 1 },
		{ "MC5_Int_Hit_In_Active_Region_Err", 1, 1 },
		{ "MC5_Int_Hit_In_RT_Region_Err", 2, 1 },
		{ "MC5_Int_Miss_Err", 3, 1 },
		{ "MC5_Int_LIP0_Err", 4, 1 },
		{ "MC5_Int_LIP_Miss_Err", 5, 1 },
		{ "MC5_Int_Parity_Err", 6, 1 },
		{ "MC5_Int_Active_Region_Full", 7, 1 },
		{ "MC5_Int_NFA_Srch_Err", 8, 1 },
		{ "MC5_Int_SYN_Cookie", 9, 1 },
		{ "MC5_Int_SYN_Cookie_Bad", 10, 1 },
		{ "MC5_Int_SYN_Cookie_Off", 11, 1 },
		{ "MC5_Int_Unknown_Cmd", 15, 1 },
		{ "MC5_Int_RequestQ_Parity_Err", 16, 1 },
		{ "MC5_Int_DispatchQ_Parity_Err", 17, 1 },
		{ "MC5_Int_Del_Act_Empty", 18, 1 },
	{ "MC5_INT_TID", 0xc48, 0 },
	{ "MC5_INT_PTID", 0xc4c, 0 },
	{ "MC5_DBGI_CONFIG", 0xc74, 0 },
	{ "MC5_DBGI_REQ_CMD", 0xc78, 0 },
		{ "CmdMode", 0, 3 },
		{ "SADRSEL", 4, 1 },
		{ "Write_Burst_Size", 22, 10 },
	{ "MC5_DBGI_REQ_ADDR0", 0xc7c, 0 },
	{ "MC5_DBGI_REQ_ADDR1", 0xc80, 0 },
	{ "MC5_DBGI_REQ_ADDR2", 0xc84, 0 },
	{ "MC5_DBGI_REQ_DATA0", 0xc88, 0 },
	{ "MC5_DBGI_REQ_DATA1", 0xc8c, 0 },
	{ "MC5_DBGI_REQ_DATA2", 0xc90, 0 },
	{ "MC5_DBGI_REQ_DATA3", 0xc94, 0 },
	{ "MC5_DBGI_REQ_DATA4", 0xc98, 0 },
	{ "MC5_DBGI_REQ_MASK0", 0xc9c, 0 },
	{ "MC5_DBGI_REQ_MASK1", 0xca0, 0 },
	{ "MC5_DBGI_REQ_MASK2", 0xca4, 0 },
	{ "MC5_DBGI_REQ_MASK3", 0xca8, 0 },
	{ "MC5_DBGI_REQ_MASK4", 0xcac, 0 },
	{ "MC5_DBGI_RSP_STATUS", 0xcb0, 0 },
		{ "DBGI_Rsp_Valid", 0, 1 },
		{ "DBGI_Rsp_Hit", 1, 1 },
		{ "DBGI_Rsp_Err", 2, 1 },
		{ "DBGI_Rsp_Err_Reason", 8, 3 },
	{ "MC5_DBGI_RSP_DATA0", 0xcb4, 0 },
	{ "MC5_DBGI_RSP_DATA1", 0xcb8, 0 },
	{ "MC5_DBGI_RSP_DATA2", 0xcbc, 0 },
	{ "MC5_DBGI_RSP_DATA3", 0xcc0, 0 },
	{ "MC5_DBGI_RSP_DATA4", 0xcc4, 0 },
	{ "MC5_DBGI_RSP_LAST_CMD", 0xcc8, 0 },
	{ "MC5_POPEN_DATA_WR_CMD", 0xccc, 0 },
	{ "MC5_POPEN_MASK_WR_CMD", 0xcd0, 0 },
	{ "MC5_AOPEN_SRCH_CMD", 0xcd4, 0 },
	{ "MC5_AOPEN_LRN_CMD", 0xcd8, 0 },
	{ "MC5_SYN_SRCH_CMD", 0xcdc, 0 },
	{ "MC5_SYN_LRN_CMD", 0xce0, 0 },
	{ "MC5_ACK_SRCH_CMD", 0xce4, 0 },
	{ "MC5_ACK_LRN_CMD", 0xce8, 0 },
	{ "MC5_ILOOKUP_CMD", 0xcec, 0 },
	{ "MC5_ELOOKUP_CMD", 0xcf0, 0 },
	{ "MC5_DATA_WRITE_CMD", 0xcf4, 0 },
	{ "MC5_DATA_READ_CMD", 0xcf8, 0 },
	{ "MC5_MASK_WRITE_CMD", 0xcfc, 0 },
	{ NULL, 0, 0 }
};
