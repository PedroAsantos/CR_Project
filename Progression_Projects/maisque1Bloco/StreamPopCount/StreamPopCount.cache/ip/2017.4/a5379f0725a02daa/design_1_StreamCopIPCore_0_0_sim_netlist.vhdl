-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Jul  8 20:46:21 2018
-- Host        : Miguel running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_StreamCopIPCore_0_0_sim_netlist.vhdl
-- Design      : design_1_StreamCopIPCore_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0_S00_AXIS is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0_S00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0_S00_AXIS is
  signal M : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \M[63]_i_1_n_0\ : STD_LOGIC;
  signal \M[63]_i_2_n_0\ : STD_LOGIC;
  signal s_counter : STD_LOGIC;
  signal \s_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[127]_i_1_n_0\ : STD_LOGIC;
  signal s_enable : STD_LOGIC;
  signal s_enable_i_1_n_0 : STD_LOGIC;
  signal tempFinished : STD_LOGIC;
  signal tempFinished_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_enable_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tempFinished_i_1 : label is "soft_lutpair0";
begin
\M[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => \M[63]_i_1_n_0\
    );
\M[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s_enable,
      O => \M[63]_i_2_n_0\
    );
\M_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(0),
      Q => M(0),
      R => \M[63]_i_1_n_0\
    );
\M_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(10),
      Q => M(10),
      R => \M[63]_i_1_n_0\
    );
\M_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(11),
      Q => M(11),
      R => \M[63]_i_1_n_0\
    );
\M_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(12),
      Q => M(12),
      R => \M[63]_i_1_n_0\
    );
\M_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(13),
      Q => M(13),
      R => \M[63]_i_1_n_0\
    );
\M_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(14),
      Q => M(14),
      R => \M[63]_i_1_n_0\
    );
\M_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(15),
      Q => M(15),
      R => \M[63]_i_1_n_0\
    );
\M_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(16),
      Q => M(16),
      R => \M[63]_i_1_n_0\
    );
\M_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(17),
      Q => M(17),
      R => \M[63]_i_1_n_0\
    );
\M_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(18),
      Q => M(18),
      R => \M[63]_i_1_n_0\
    );
\M_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(19),
      Q => M(19),
      R => \M[63]_i_1_n_0\
    );
\M_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(1),
      Q => M(1),
      R => \M[63]_i_1_n_0\
    );
\M_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(20),
      Q => M(20),
      R => \M[63]_i_1_n_0\
    );
\M_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(21),
      Q => M(21),
      R => \M[63]_i_1_n_0\
    );
\M_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(22),
      Q => M(22),
      R => \M[63]_i_1_n_0\
    );
\M_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(23),
      Q => M(23),
      R => \M[63]_i_1_n_0\
    );
\M_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(24),
      Q => M(24),
      R => \M[63]_i_1_n_0\
    );
\M_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(25),
      Q => M(25),
      R => \M[63]_i_1_n_0\
    );
\M_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(26),
      Q => M(26),
      R => \M[63]_i_1_n_0\
    );
\M_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(27),
      Q => M(27),
      R => \M[63]_i_1_n_0\
    );
\M_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(28),
      Q => M(28),
      R => \M[63]_i_1_n_0\
    );
\M_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(29),
      Q => M(29),
      R => \M[63]_i_1_n_0\
    );
\M_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(2),
      Q => M(2),
      R => \M[63]_i_1_n_0\
    );
\M_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(30),
      Q => M(30),
      R => \M[63]_i_1_n_0\
    );
\M_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(31),
      Q => M(31),
      R => \M[63]_i_1_n_0\
    );
\M_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(32),
      Q => M(32),
      R => \M[63]_i_1_n_0\
    );
\M_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(33),
      Q => M(33),
      R => \M[63]_i_1_n_0\
    );
\M_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(34),
      Q => M(34),
      R => \M[63]_i_1_n_0\
    );
\M_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(35),
      Q => M(35),
      R => \M[63]_i_1_n_0\
    );
\M_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(36),
      Q => M(36),
      R => \M[63]_i_1_n_0\
    );
\M_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(37),
      Q => M(37),
      R => \M[63]_i_1_n_0\
    );
\M_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(38),
      Q => M(38),
      R => \M[63]_i_1_n_0\
    );
\M_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(39),
      Q => M(39),
      R => \M[63]_i_1_n_0\
    );
\M_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(3),
      Q => M(3),
      R => \M[63]_i_1_n_0\
    );
\M_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(40),
      Q => M(40),
      R => \M[63]_i_1_n_0\
    );
\M_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(41),
      Q => M(41),
      R => \M[63]_i_1_n_0\
    );
\M_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(42),
      Q => M(42),
      R => \M[63]_i_1_n_0\
    );
\M_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(43),
      Q => M(43),
      R => \M[63]_i_1_n_0\
    );
\M_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(44),
      Q => M(44),
      R => \M[63]_i_1_n_0\
    );
\M_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(45),
      Q => M(45),
      R => \M[63]_i_1_n_0\
    );
\M_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(46),
      Q => M(46),
      R => \M[63]_i_1_n_0\
    );
\M_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(47),
      Q => M(47),
      R => \M[63]_i_1_n_0\
    );
\M_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(48),
      Q => M(48),
      R => \M[63]_i_1_n_0\
    );
\M_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(49),
      Q => M(49),
      R => \M[63]_i_1_n_0\
    );
\M_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(4),
      Q => M(4),
      R => \M[63]_i_1_n_0\
    );
\M_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(50),
      Q => M(50),
      R => \M[63]_i_1_n_0\
    );
\M_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(51),
      Q => M(51),
      R => \M[63]_i_1_n_0\
    );
\M_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(52),
      Q => M(52),
      R => \M[63]_i_1_n_0\
    );
\M_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(53),
      Q => M(53),
      R => \M[63]_i_1_n_0\
    );
\M_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(54),
      Q => M(54),
      R => \M[63]_i_1_n_0\
    );
\M_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(55),
      Q => M(55),
      R => \M[63]_i_1_n_0\
    );
\M_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(56),
      Q => M(56),
      R => \M[63]_i_1_n_0\
    );
\M_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(57),
      Q => M(57),
      R => \M[63]_i_1_n_0\
    );
\M_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(58),
      Q => M(58),
      R => \M[63]_i_1_n_0\
    );
\M_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(59),
      Q => M(59),
      R => \M[63]_i_1_n_0\
    );
\M_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(5),
      Q => M(5),
      R => \M[63]_i_1_n_0\
    );
\M_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(60),
      Q => M(60),
      R => \M[63]_i_1_n_0\
    );
\M_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(61),
      Q => M(61),
      R => \M[63]_i_1_n_0\
    );
\M_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(62),
      Q => M(62),
      R => \M[63]_i_1_n_0\
    );
\M_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(63),
      Q => M(63),
      R => \M[63]_i_1_n_0\
    );
\M_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(6),
      Q => M(6),
      R => \M[63]_i_1_n_0\
    );
\M_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(7),
      Q => M(7),
      R => \M[63]_i_1_n_0\
    );
\M_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(8),
      Q => M(8),
      R => \M[63]_i_1_n_0\
    );
\M_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => \M[63]_i_2_n_0\,
      D => s00_axis_tdata(9),
      Q => M(9),
      R => \M[63]_i_1_n_0\
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_enable,
      O => s00_axis_tready
    );
\s_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_counter,
      I1 => s00_axis_aresetn,
      O => \s_counter[0]_i_1_n_0\
    );
\s_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \s_counter[0]_i_1_n_0\,
      Q => s_counter,
      R => '0'
    );
\s_dataOut[127]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tempFinished,
      I1 => s00_axis_aresetn,
      O => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(36),
      Q => m00_axis_tdata(36),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(37),
      Q => m00_axis_tdata(37),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(38),
      Q => m00_axis_tdata(38),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(39),
      Q => m00_axis_tdata(39),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(40),
      Q => m00_axis_tdata(40),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(41),
      Q => m00_axis_tdata(41),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(42),
      Q => m00_axis_tdata(42),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(43),
      Q => m00_axis_tdata(43),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(44),
      Q => m00_axis_tdata(44),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(45),
      Q => m00_axis_tdata(45),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(46),
      Q => m00_axis_tdata(46),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(47),
      Q => m00_axis_tdata(47),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(48),
      Q => m00_axis_tdata(48),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(49),
      Q => m00_axis_tdata(49),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(50),
      Q => m00_axis_tdata(50),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(51),
      Q => m00_axis_tdata(51),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(52),
      Q => m00_axis_tdata(52),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(53),
      Q => m00_axis_tdata(53),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(54),
      Q => m00_axis_tdata(54),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(55),
      Q => m00_axis_tdata(55),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(56),
      Q => m00_axis_tdata(56),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(57),
      Q => m00_axis_tdata(57),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(58),
      Q => m00_axis_tdata(58),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(59),
      Q => m00_axis_tdata(59),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(60),
      Q => m00_axis_tdata(60),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(61),
      Q => m00_axis_tdata(61),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(62),
      Q => m00_axis_tdata(62),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(63),
      Q => m00_axis_tdata(63),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(0),
      Q => m00_axis_tdata(0),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(1),
      Q => m00_axis_tdata(1),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(2),
      Q => m00_axis_tdata(2),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(3),
      Q => m00_axis_tdata(3),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(4),
      Q => m00_axis_tdata(4),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(5),
      Q => m00_axis_tdata(5),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(6),
      Q => m00_axis_tdata(6),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(7),
      Q => m00_axis_tdata(7),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(8),
      Q => m00_axis_tdata(8),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(9),
      Q => m00_axis_tdata(9),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(10),
      Q => m00_axis_tdata(10),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(11),
      Q => m00_axis_tdata(11),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(12),
      Q => m00_axis_tdata(12),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(13),
      Q => m00_axis_tdata(13),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(14),
      Q => m00_axis_tdata(14),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(15),
      Q => m00_axis_tdata(15),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(16),
      Q => m00_axis_tdata(16),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(17),
      Q => m00_axis_tdata(17),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(18),
      Q => m00_axis_tdata(18),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(19),
      Q => m00_axis_tdata(19),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(20),
      Q => m00_axis_tdata(20),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(21),
      Q => m00_axis_tdata(21),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(22),
      Q => m00_axis_tdata(22),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(23),
      Q => m00_axis_tdata(23),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(24),
      Q => m00_axis_tdata(24),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(25),
      Q => m00_axis_tdata(25),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(26),
      Q => m00_axis_tdata(26),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(27),
      Q => m00_axis_tdata(27),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(28),
      Q => m00_axis_tdata(28),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(29),
      Q => m00_axis_tdata(29),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(30),
      Q => m00_axis_tdata(30),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(31),
      Q => m00_axis_tdata(31),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(32),
      Q => m00_axis_tdata(32),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(33),
      Q => m00_axis_tdata(33),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(34),
      Q => m00_axis_tdata(34),
      R => \s_dataOut[127]_i_1_n_0\
    );
\s_dataOut_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => tempFinished,
      D => M(35),
      Q => m00_axis_tdata(35),
      R => \s_dataOut[127]_i_1_n_0\
    );
s_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => s_enable,
      I1 => s00_axis_tvalid,
      I2 => s_counter,
      I3 => s00_axis_aresetn,
      O => s_enable_i_1_n_0
    );
s_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s_enable_i_1_n_0,
      Q => s_enable,
      R => '0'
    );
s_validOut_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => tempFinished,
      Q => m00_axis_tvalid,
      R => '0'
    );
tempFinished_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => s_enable,
      I2 => s00_axis_tvalid,
      I3 => s_counter,
      I4 => tempFinished,
      O => tempFinished_i_1_n_0
    );
tempFinished_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => tempFinished_i_1_n_0,
      Q => tempFinished,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0 is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0 is
begin
StreamCopIPCore_v1_0_S00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0_S00_AXIS
     port map (
      m00_axis_tdata(63 downto 0) => m00_axis_tdata(63 downto 0),
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(63 downto 0) => s00_axis_tdata(63 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_StreamCopIPCore_0_0,StreamCopIPCore_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "StreamCopIPCore_v1_0,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_parameter of m00_axis_tdata : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_parameter of s00_axis_tdata : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  m00_axis_tdata(127 downto 64) <= \^m00_axis_tdata\(63 downto 0);
  m00_axis_tdata(63 downto 0) <= \^m00_axis_tdata\(63 downto 0);
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(15) <= \<const1>\;
  m00_axis_tstrb(14) <= \<const1>\;
  m00_axis_tstrb(13) <= \<const1>\;
  m00_axis_tstrb(12) <= \<const1>\;
  m00_axis_tstrb(11) <= \<const1>\;
  m00_axis_tstrb(10) <= \<const1>\;
  m00_axis_tstrb(9) <= \<const1>\;
  m00_axis_tstrb(8) <= \<const1>\;
  m00_axis_tstrb(7) <= \<const1>\;
  m00_axis_tstrb(6) <= \<const1>\;
  m00_axis_tstrb(5) <= \<const1>\;
  m00_axis_tstrb(4) <= \<const1>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamCopIPCore_v1_0
     port map (
      m00_axis_tdata(63 downto 0) => \^m00_axis_tdata\(63 downto 0),
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(63 downto 0) => s00_axis_tdata(63 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
