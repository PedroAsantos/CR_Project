library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity StreamCopIPCore_v1_0 is
	generic (
		-- Users to add parameters here
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 128;
		C_M00_AXIS_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 512
	);
	port (
		-- Users to add ports here
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	 : in std_logic;
		m00_axis_aresetn : in std_logic;
		m00_axis_tvalid	 : out std_logic;
		m00_axis_tdata	 : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	 : out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	 : out std_logic;
		m00_axis_tready	 : in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	 : in std_logic;
		s00_axis_aresetn : in std_logic;
		s00_axis_tready	 : out std_logic;
		s00_axis_tdata	 : in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	 : in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	 : in std_logic;
		ledsOut         : out std_logic_vector(15 downto 0);
		s00_axis_tvalid	 : in std_logic
	);
end StreamCopIPCore_v1_0;

architecture Structural of StreamCopIPCore_v1_0 is
    -- component declaration
	component StreamCopIPCore_v1_0_S00_AXIS is
		generic (
            C_S_AXIS_TDATA_WIDTH	: integer	:= 512;
            C_S_AXIS_TDATA_WIDTH_OUT: integer	:= 128
		);
		port (
            S_AXIS_ACLK	    : in  std_logic;
            S_AXIS_ARESETN	: in  std_logic;
            S_AXIS_TREADY	: out std_logic;
            S_AXIS_TDATA	: in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
            S_AXIS_TSTRB	: in  std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
            S_AXIS_TLAST	: in  std_logic;
            S_AXIS_TVALID	: in  std_logic;
            validData       : out std_logic;
            swappedData     : out std_logic_vector(C_S_AXIS_TDATA_WIDTH_OUT-1 downto 0);
            ledsOut         : out std_logic_vector(15 downto 0);
            readEnable      : in  std_logic
		);
	end component StreamCopIPCore_v1_0_S00_AXIS;

	component StreamCopIPCore_v1_0_M00_AXIS is
		generic (
                C_M_AXIS_TDATA_WIDTH	: integer	:= 128;
                C_M_START_COUNT	        : integer	:= 32
		);
		port (
                M_AXIS_ACLK	    : in  std_logic;
                M_AXIS_ARESETN	: in  std_logic;
                M_AXIS_TVALID	: out std_logic;
                M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
                M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
                M_AXIS_TLAST	: out std_logic;
                M_AXIS_TREADY	: in  std_logic;
                validData       : in  std_logic;
                swappedData     : in  std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
                readEnable      : out std_logic
		);
	end component StreamCopIPCore_v1_0_M00_AXIS;

    signal s_validData   : std_logic;
    signal s_swappedData : std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0); 
    signal s_readEnable  : std_logic;
    
begin
    -- Instantiation of Axi Bus Interface S00_AXIS
    StreamCopIPCore_v1_0_S00_AXIS_inst : StreamCopIPCore_v1_0_S00_AXIS
        generic map (
            C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_TDATA_WIDTH
        )
        port map (
            S_AXIS_ACLK	    => s00_axis_aclk,
            S_AXIS_ARESETN	=> s00_axis_aresetn,
            S_AXIS_TREADY	=> s00_axis_tready,
            S_AXIS_TDATA	=> s00_axis_tdata,
            S_AXIS_TSTRB	=> s00_axis_tstrb,
            S_AXIS_TLAST	=> s00_axis_tlast,
            S_AXIS_TVALID	=> s00_axis_tvalid,
            validData       => s_validData,
            swappedData     => s_swappedData,
            ledsOut         => ledsOut,
            readEnable      => s_readEnable
        );

    -- Instantiation of Axi Bus Interface M00_AXIS
    StreamCopIPCore_v1_0_M00_AXIS_inst : StreamCopIPCore_v1_0_M00_AXIS
        generic map (
            C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH,
            C_M_START_COUNT	=> C_M00_AXIS_START_COUNT
        )
        port map (
            M_AXIS_ACLK	    => m00_axis_aclk,
            M_AXIS_ARESETN	=> m00_axis_aresetn,
            M_AXIS_TVALID	=> m00_axis_tvalid,
            M_AXIS_TDATA	=> m00_axis_tdata,
            M_AXIS_TSTRB	=> m00_axis_tstrb,
            M_AXIS_TLAST	=> m00_axis_tlast,
            M_AXIS_TREADY	=> m00_axis_tready,
            validData       => s_validData,
            swappedData     => s_swappedData,
            readEnable      => s_readEnable
        );

	-- Add user logic here

	-- User logic ends

end Structural;