
r
Command: %s
53*	vivadotcl2A
-write_bitstream -force TopModule.bit -verbose2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
bcd1/A4/Segments_reg[6]_i_2_n_0bcd1/A4/Segments_reg[6]_i_2_n_02default:default2default:default2h
 "R
bcd1/A4/Segments_reg[6]_i_2/Obcd1/A4/Segments_reg[6]_i_2/O2default:default2default:default2d
 "N
bcd1/A4/Segments_reg[6]_i_2	bcd1/A4/Segments_reg[6]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 2 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
9
$Summary of write_bitstream Options:
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| Option Name             | Current Setting         |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| COMPRESS                | FALSE*                  |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| TDOPIN                  | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| BPI_SYNC_MODE           | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| XADCPOWERDOWN           | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| INITSIGNALSERROR        | ENABLE*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| SPI_32BIT_ADDR          | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| DISABLE_JTAG            | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| OVERTEMPPOWERDOWN       | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| GWE_CYCLE               | 6*                      |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| GTS_CYCLE               | 5*                      |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| STARTUPCLK              | CCLK*                   |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| STARTCBC                | (Not Enabled)*          |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| HKEY                    | (Not Enabled)*          |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| LCK_CYCLE               | NOWAIT*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| BPI_1ST_READ_CYCLE      | 1*                      |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| ACTIVERECONFIG          | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| M2PIN                   | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| PERFRAMECRC             | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| SECURITY                | NONE*                   |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| ENCRYPTKEYSELECT        | BBRAM*                  |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| KEY0                    | (Not Enabled)*          |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| M0PIN                   | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| TDIPIN                  | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| UNUSEDPIN               | PULLDOWN*               |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| CONFIGRATE              | 3*                      |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| NEXT_CONFIG_REBOOT      | ENABLE*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| USR_ACCESS              | (Not Enabled)*          |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| CONFIGFALLBACK          | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| TCKPIN                  | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| KEYFILE                 | (Not Enabled)*          |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| SELECTMAPABORT          | ENABLE*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| REVISIONSELECT          | 00*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| CCLKPIN                 | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| BPI_PAGE_SIZE           | 1*                      |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| ICAP_SELECT             | AUTO*                   |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| TMSPIN                  | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| TIMER_CFG               | 0X00000000*             |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| SPI_FALL_EDGE           | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| SPI_BUSWIDTH            | NONE*                   |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| PROGPIN                 | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| DONEPIN                 | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| USERID                  | 0XFFFFFFFF*             |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| PERSIST                 | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| NEXT_CONFIG_ADDR        | 0X00000000*             |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| INITPIN                 | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| XADCPARTIALRECONFIG     | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| EXTMASTERCCLK_EN        | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| CRC                     | ENABLE*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| CCLK_TRISTATE           | FALSE*                  |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| M1PIN                   | PULLUP*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| DCIUPDATEMODE           | ASREQUIRED*             |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| DONE_CYCLE              | 4*                      |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| JTAG_XADC               | ENABLE*                 |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| MATCH_CYCLE             | NoWait                  |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| TIMER_USR               | 0X00000000*             |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| DEBUGBITSTREAM          | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| ENCRYPT                 | NO*                     |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| XADCENHANCEDLINEARITY   | OFF*                    |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| REVISIONSELECT_TRISTATE | DISABLE*                |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
K
6| DONEPIPE                | YES*                    |
*commonh px? 
K
6+-------------------------+-------------------------+
*commonh px? 
*
 *  Default setting.
*commonh px? 
L
7 ** The specified setting matches the default setting.
*commonh px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
`
Writing bitstream %s...
11*	bitstream2#
./TopModule.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:122default:default2
00:00:172default:default2
3736.4842default:default2
258.1132default:default2
37392default:default2
99362default:defaultZ17-722h px? 


End Record