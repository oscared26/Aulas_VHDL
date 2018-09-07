-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/07/2018 00:44:25"
                                                            
-- Vhdl Test Bench template for design  :  alu
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_tb IS
END alu_tb;



ARCHITECTURE alu_arch OF alu_tb IS


	-- constants                                                 
	-- signals                                                   
	SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0):=(others => '0');
	SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0):=(others => '0');
	SIGNAL cin : STD_LOGIC:= '0';
	SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0):=(others => '0');
	SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0):=(others => '0');


	COMPONENT alu
		PORT (
		a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		cin : IN STD_LOGIC;
		sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;



	BEGIN
		DUT : alu
		PORT MAP (
	-- list connections between master ports and signals
		a => a,
		b => b,
		cin => cin,
		sel => sel,
		y => y
		);
	
  
		a<="00000000","00000001" after 10ns,
						  "00001000" after 30ns,
						  "00001001" after 50ns,
						  "00001100" after 60ns;
						  
						  
			b<=X"00",X"0A" after 30ns,
						  X"0B" after 40ns,
						  X"0C" after 70ns,
						  X"F0" after 80ns;					  
						  
						  
			sel<="0000","0001" after 10ns,
						  "0010" after 20ns,
						  "0011" after 30ns,
						  "0100" after 40ns,
						  "0101" after 50ns,
						  "0110" after 60ns,
						  "0111" after 70ns;

						  
			cin<='0';			  
						  


                                 
END alu_arch;
