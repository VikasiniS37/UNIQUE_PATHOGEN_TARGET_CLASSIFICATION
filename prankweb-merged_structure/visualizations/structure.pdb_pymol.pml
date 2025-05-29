from pymol import cmd,stored

set depth_cue, 1
set fog_start, 0.4

set_color b_col, [36,36,85]
set_color t_col, [10,10,10]
set bg_rgb_bottom, b_col
set bg_rgb_top, t_col      
set bg_gradient

set  spec_power  =  200
set  spec_refl   =  0

load "data/structure.pdb", protein
create ligands, protein and organic
select xlig, protein and organic
delete xlig

hide everything, all

color white, elem c
color bluewhite, protein
#show_as cartoon, protein
show surface, protein
#set transparency, 0.15

show sticks, ligands
set stick_color, magenta




# SAS points

load "data/structure.pdb_points.pdb.gz", points
hide nonbonded, points
show nb_spheres, points
set sphere_scale, 0.2, points
cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)


stored.list=[]
cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
lastSTP=stored.list[-1] # get the index of the last residue
hide lines, resn STP

cmd.select("rest", "resn STP and resi 0")

for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))



set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [4095,4098,4450,3947,4451,4449,4445,4090,4091,4092,4097,4132,4133,3908,4137,4138,3905,3934,4426,4427,4431,3896,3870,4122,4121,4073,4419,4420,4413,4414,4417,4418,4415,4141,3873,3868,3858,3897,4899,5108,5110,5112,5098,5100,3741,3742,3744,3746,4146,4147,3743,3745,3747,4871,4874,4900,4453,4457,4434,3708,3721,4456,4870] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [15119,15141,15143,15145,15493,15140,15142,15144,15544,15545,15302,15303,15304,15306,15535,15341,15343,15849,15470,15301,15491,15492,15520,15518,15519,15530,15531,15539,15489,15490,15496,15536,15459,15445,15446,15829,15847,15832,16508,16506,15825,16496,15848,15851,15854,15855,15843,16298,16510,16297,16498,15824] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [9790,9831,9832,9837,9840,9836,10811,10807,10809,10797,10799,10155,9794,9768,9791,9792,10144,10148,10149,10150,9605,9606,9607,10133,9769,9801,9803,9637,9602,9640,10152,10126,9772,9441,9442,9443,9444,9445,9446,9821,10599,9420,10573,10570,9845,9846,9820,9819] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [4153,4170,4172,4246,4248,4244,4395,5085,4399,3793,3850,3852,3853,3796,4419,4420,4413,4414,4417,4418,4405,4411,4415,4144,4151,4155,4156,3868,3872,3858,3897,3859,3855,4157,4247,4137,3896,3870,5089,5093] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [2625,2629,2730,2591,1467,1469,1470,2880,2874,2875,2876,2878,2879,1464,1465,1466,1456,2848,2864,2877,2862,2662,2663,2681,2664,2715,2716,1468,2258,2263,2267,2254,2259,2365,2631,2637,2268,2632,2635,2176,2377,2589,2590] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [13172,13173,12749,12750,12751,12897,12945,12947,12711,12713,12715,12716,13014,13007,13010,13011,12738,13175,13170,13171,13194,13195,12895,12896,13180,13164,13168,12992,12995,12959,12989,12941,13152,13157] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [7050,7052,7194,7196,7198,7051,7477,7484,7472,7482,7189,7474,7473,7049,7012,7013,7014,7312,7290,7015,7016,7017,7172,7176,7179,7182,7095,7145,7146,7147,7344,7481,7323,7311,7315,7316,7320,7045,7096,7094,7039,7317,7924,7124,7142,7144] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [1774,1775,1782,1317,1591,1597,1613,1773,1561,1496,1498,1351,1353,1797,1312,1313,1315,1340,1754,1397,1616,1549] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [10103,10104,10110,10114,10094,10097,10113,9573,9549,9551,9552,9945,9514,9515,9526,9946,9947,9869,10780,9492,9871,9495,9856,9852,10792,10788] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [1408,1425,1446,1447,1448,1645,1395,1392,1393,1394,1397,1396,1616,1617,1619,1410,1618,1350,1476,1477,1499,1352,1353,1796,1797,1340,1782,2225,1424,1346] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8331,8334,8335,8330,8336,8362,8380,7966,7967,8387,8389,8363,8413,8414,8429,8578,8579,8324,7165,8392,7167,7875,7164,7163,7166,8286,8328,8067,8068] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2479,2481,2482,2398,2390,2397,2598,2565,2564,2504,2502,3882,2411,2418,2607,2430,2597,4076,4077,4078,4113,2401,2404,4101,4104,4103,4111,2402,2403,2410] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [7156,7168,8547,8557,7529,7531,8536,7382,7155,7505,7503,7362,7381,7506,7494,7492,7495] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [5002,4966,4968,5000,16362,16364,16396,16398,16400,4912,4913,5004,16311,10701,10703,10697,10699,10612,16366,10663,10664,10667,10665,10679] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [15555,15250,15251,15644,15253,15255,15256,15248,15542,15551,15570,15191,15802,15797,15803,15809,15812,15813,16482,16483] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [7564,7565,7790,7821,7554,7819,7101,7105,7112,7116,7118,7556,7077,7566,7567,7568,7569,7570,7787] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [12818,12820,12823,12819,12821,12822,13610,12816,12843,12845,12791,12841,12842,12844,12846,12793,12839,12840] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [2219,1431,1817,1818,1430,1416,1436,1865,2072,1839,1861,2103,2077,2094,2100,2104,2096,2190,2200,2220] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [8528,8529,8575,8577,7875,7876,8548,8573,8289,8328,8288,8290,8576,8578,8579,8428,8574,8327] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [10931,11133,10929,15622,15618,15619,10947,15657,15656,15658,15695,11134,15661,11038] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [9923,9916,9920,5232,5225,5248,5433,5230,5249,5340,5434,9959,9925,9960,9996,5231] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [16833,4297,16592,16630,16832,16737,16628,4214,4220,4221,4224,4260,4218,16646,4263] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [11931,11937,11939,12244,12246,12134,12135,12169,12018,12133,11908,11920] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [1789,1803,1804,1806,1807,2865,2849,1791,1452,1463,1456,1457,1485,1484,1486] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [2138,2139,2142,2144,2249,2128,2129,2119,2121,2122,2123,2124,2126,2120,2208,2212,2231,2232] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [15563,15567,15569,15570,15577,15666,15665,15664,15551,15640,15642,15637,15192,15195,15610,15621,15578,15194,15214] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [14152,14148,14151,14192,14005,14006,14170] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [760,761,762,763,764,765,766,712,524,639,730,640,737,735] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [974,981,75,421,987,76,54,55,73,53] 
set surface_color,  pcol29, surf_pocket29 
   

deselect

orient
