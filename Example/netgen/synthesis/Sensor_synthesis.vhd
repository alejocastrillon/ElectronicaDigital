--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Sensor_synthesis.vhd
-- /___/   /\     Timestamp: Wed Feb 28 11:53:13 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Sensor -w -dir netgen/synthesis -ofmt vhdl -sim Sensor.ngc Sensor_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: Sensor.ngc
-- Output file	: /home/alejandro/Documentos/Laboratorio de Electronica/Example/netgen/synthesis/Sensor_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Sensor
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Sensor is
  port (
    Vin : in STD_LOGIC := 'X'; 
    Vout : out STD_LOGIC 
  );
end Sensor;

architecture Structure of Sensor is
  signal Vin_IBUF_1 : STD_LOGIC; 
  signal Vout_OBUF_3 : STD_LOGIC; 
begin
  Vin_IBUF : IBUF
    port map (
      I => Vin,
      O => Vin_IBUF_1
    );
  Vout_OBUF : OBUF
    port map (
      I => Vout_OBUF_3,
      O => Vout
    );
  Vout1_INV_0 : INV
    port map (
      I => Vin_IBUF_1,
      O => Vout_OBUF_3
    );

end Structure;

