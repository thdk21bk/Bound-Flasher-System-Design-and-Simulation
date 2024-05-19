
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: May 20 2024 03:30:48 +07 (May 19 2024 20:30:48 UTC)

// Verification Directory fv/BoundFlasher_Mealy 

module BoundFlasher_Mealy(clk, rst, flick, lamps);
  input clk, rst, flick;
  output [15:0] lamps;
  wire clk, rst, flick;
  wire [15:0] lamps;
  wire [31:0] counter;
  wire [3:0] state;
  wire finish0, finish1, inc_add_77_32_n_402, inc_add_77_32_n_404,
       inc_add_77_32_n_407, inc_add_77_32_n_409, inc_add_77_32_n_412,
       inc_add_77_32_n_414;
  wire inc_add_77_32_n_418, inc_add_77_32_n_420, inc_add_77_32_n_422,
       inc_add_77_32_n_424, inc_add_77_32_n_426, inc_add_77_32_n_433,
       inc_add_77_32_n_435, inc_add_77_32_n_438;
  wire inc_add_77_32_n_439, inc_add_77_32_n_441, inc_add_77_32_n_442,
       inc_add_77_32_n_443, inc_add_77_32_n_445, inc_add_77_32_n_446,
       inc_add_77_32_n_451, inc_add_77_32_n_452;
  wire inc_add_77_32_n_454, inc_add_77_32_n_455, inc_add_77_32_n_458,
       inc_add_77_32_n_459, inc_add_77_32_n_461, inc_add_77_32_n_462,
       inc_add_77_32_n_464, inc_add_77_32_n_468;
  wire inc_add_77_32_n_470, inc_add_77_32_n_472, inc_add_77_32_n_476,
       inc_add_77_32_n_480, inc_add_77_32_n_485, inc_add_77_32_n_490,
       inc_add_77_32_n_495, inc_add_77_32_n_504;
  wire inc_add_77_32_n_509, inc_add_77_32_n_514, n_13, n_14, n_15,
       n_16, n_17, n_18;
  wire n_19, n_20, n_21, n_22, n_23, n_24, n_26, n_27;
  wire n_28, n_29, n_30, n_31, n_32, n_33, n_34, n_35;
  wire n_36, n_37, n_38, n_39, n_41, n_42, n_44, n_45;
  wire n_46, n_47, n_48, n_49, n_62, n_63, n_64, n_65;
  wire n_66, n_67, n_68, n_69, n_70, n_71, n_72, n_73;
  wire n_74, n_75, n_76, n_77, n_78, n_79, n_80, n_81;
  wire n_82, n_83, n_84, n_85, n_86, n_87, n_88, n_89;
  wire n_90, n_91, n_92, n_93, n_94, n_95, n_96, n_97;
  wire n_98, n_99, n_100, n_101, n_102, n_103, n_104, n_105;
  wire n_106, n_107, n_108, n_109, n_110, n_112, n_113, n_114;
  wire n_115, n_116, n_117, n_119, n_120, n_121, n_122, n_123;
  wire n_124, n_125, n_128, n_129, n_130, n_131, n_132, n_133;
  wire n_134, n_135, n_136, n_137, n_138, n_139, n_140, n_141;
  wire n_142, n_143, n_144, n_145, n_146, n_147, n_148, n_149;
  wire n_150, n_151, n_152, n_153, n_154, n_155, n_156, n_157;
  wire n_158, n_159, n_160, n_161, n_162, n_163, n_164, n_165;
  wire n_166, n_167, n_168, n_169, n_170, n_171, n_172, n_173;
  wire n_174, n_175, n_176, n_177, n_178, n_181, n_183, n_184;
  wire n_185, n_186, n_187, n_188, n_189, n_190, n_191, n_192;
  wire n_193, n_194, n_196, n_199, n_200, n_201, n_202, n_206;
  wire n_209, n_212, n_213, n_214, n_216, n_217, n_218, n_219;
  wire n_228, n_232, n_233, n_234, n_235, n_237, n_239, n_240;
  wire n_241, n_242, n_243, n_244, n_245, n_246, n_247, n_248;
  wire n_249, n_250, n_251, n_252, n_253, n_254, n_255, n_256;
  wire n_257, n_258, n_259, n_260, n_261, n_262, n_263, n_264;
  wire n_265, n_266, n_267, n_268, n_269, n_270, n_271, n_272;
  wire n_273, n_274, n_275, n_276, n_277, n_278, n_279, n_280;
  wire n_281, n_282, n_283, n_291, n_292, n_295, n_296, n_297;
  wire n_298, n_299, n_300, n_301, n_302, n_303, n_304, n_305;
  wire n_306, n_307, n_308, n_310, n_311, n_312, n_313, n_314;
  wire n_315, n_316, n_317, n_318, n_319, n_320, n_321, n_322;
  wire n_323, n_324, n_325, n_326, n_327, n_328, n_329, n_330;
  wire n_331, n_332, n_333, n_334, n_335, n_336, n_337, n_338;
  wire n_339, n_340, n_341, n_342, n_343, n_344, n_345, n_346;
  wire n_347, n_348, n_349, n_350, n_351, n_352, n_354, n_355;
  wire n_356, n_357, n_358, n_359, n_360, n_361, n_362, n_363;
  wire n_364, n_365, n_366, n_367, n_368, n_377, n_378, n_387;
  wire n_388, n_389, n_391, n_392, n_393, n_402, n_403, n_413;
  wire n_414, n_415, n_416, n_417, n_418, n_419, n_421, n_424;
  wire n_425, n_431, n_436, n_437, n_439, n_441, n_442, n_443;
  wire n_444, n_445, n_446, n_447, n_449, n_450, n_454, n_455;
  wire n_482, n_483, n_484, n_512, n_513, n_514, n_515, n_516;
  wire n_517, n_518, n_519, n_520, n_521, n_522, n_523, n_524;
  wire n_525, n_526, n_527, n_528, n_529, n_530, n_531, n_532;
  wire n_533, n_534, n_535, n_536, n_537, n_538, n_539, n_540;
  wire n_541, n_542, n_543, n_544, n_545, n_546, n_547, n_548;
  wire n_549, n_550, n_551, n_552, n_554, n_555, n_556, n_589;
  DFFHQX1 \counter_reg[0] (.CK (clk), .D (n_388), .Q (counter[0]));
  DFFHQX1 \counter_reg[1] (.CK (clk), .D (n_526), .Q (counter[1]));
  DFFHQX1 \counter_reg[2] (.CK (clk), .D (n_527), .Q (counter[2]));
  DFFHQX1 \counter_reg[3] (.CK (clk), .D (n_528), .Q (counter[3]));
  DFFHQX1 \counter_reg[4] (.CK (clk), .D (n_529), .Q (counter[4]));
  DFFHQX1 \counter_reg[5] (.CK (clk), .D (n_530), .Q (counter[5]));
  DFFHQX1 \counter_reg[6] (.CK (clk), .D (n_518), .Q (counter[6]));
  DFFHQX1 \counter_reg[7] (.CK (clk), .D (n_517), .Q (counter[7]));
  DFFHQX1 \counter_reg[8] (.CK (clk), .D (n_519), .Q (counter[8]));
  DFFHQX1 \counter_reg[9] (.CK (clk), .D (n_520), .Q (counter[9]));
  DFFHQX1 \counter_reg[10] (.CK (clk), .D (n_521), .Q (counter[10]));
  DFFHQX1 \counter_reg[11] (.CK (clk), .D (n_514), .Q (counter[11]));
  DFFHQX1 \counter_reg[12] (.CK (clk), .D (n_393), .Q (counter[12]));
  DFFHQX1 \counter_reg[13] (.CK (clk), .D (n_516), .Q (counter[13]));
  DFFHQX1 \counter_reg[14] (.CK (clk), .D (n_515), .Q (counter[14]));
  DFFHQX1 \counter_reg[15] (.CK (clk), .D (n_531), .Q (counter[15]));
  DFFHQX1 \counter_reg[16] (.CK (clk), .D (n_522), .Q (counter[16]));
  DFFHQX1 \counter_reg[17] (.CK (clk), .D (n_392), .Q (counter[17]));
  DFFHQX1 \counter_reg[18] (.CK (clk), .D (n_532), .Q (counter[18]));
  DFFHQX1 \counter_reg[19] (.CK (clk), .D (n_523), .Q (counter[19]));
  DFFHQX1 \counter_reg[20] (.CK (clk), .D (n_533), .Q (counter[20]));
  DFFHQX1 \counter_reg[21] (.CK (clk), .D (n_524), .Q (counter[21]));
  DFFHQX1 \counter_reg[22] (.CK (clk), .D (n_534), .Q (counter[22]));
  DFFHQX1 \counter_reg[23] (.CK (clk), .D (n_535), .Q (counter[23]));
  DFFHQX1 \counter_reg[24] (.CK (clk), .D (n_391), .Q (counter[24]));
  DFFHQX1 \counter_reg[25] (.CK (clk), .D (n_402), .Q (counter[25]));
  DFFHQX1 \counter_reg[26] (.CK (clk), .D (n_536), .Q (counter[26]));
  DFFHQX1 \counter_reg[27] (.CK (clk), .D (n_538), .Q (counter[27]));
  DFFHQX1 \counter_reg[28] (.CK (clk), .D (n_537), .Q (counter[28]));
  DFFHQX1 \counter_reg[29] (.CK (clk), .D (n_525), .Q (counter[29]));
  DFFHQX1 \counter_reg[30] (.CK (clk), .D (n_539), .Q (counter[30]));
  DFFHQX1 \counter_reg[31] (.CK (clk), .D (n_389), .Q (counter[31]));
  DFFHQX2 \lamps_reg[0] (.CK (clk), .D (n_328), .Q (lamps[0]));
  DFFHQX2 \lamps_reg[2] (.CK (clk), .D (n_359), .Q (lamps[2]));
  DFFHQX2 \lamps_reg[3] (.CK (clk), .D (n_358), .Q (lamps[3]));
  DFFHQX4 \lamps_reg[4] (.CK (clk), .D (n_357), .Q (lamps[4]));
  DFFHQX2 \lamps_reg[6] (.CK (clk), .D (n_355), .Q (lamps[6]));
  DFFHQX2 \lamps_reg[7] (.CK (clk), .D (n_354), .Q (lamps[7]));
  DFFHQX2 \lamps_reg[8] (.CK (clk), .D (n_366), .Q (lamps[8]));
  DFFHQX2 \lamps_reg[9] (.CK (clk), .D (n_326), .Q (lamps[9]));
  DFFHQX2 \lamps_reg[10] (.CK (clk), .D (n_352), .Q (lamps[10]));
  DFFHQX2 \lamps_reg[11] (.CK (clk), .D (n_351), .Q (lamps[11]));
  DFFHQX2 \lamps_reg[12] (.CK (clk), .D (n_350), .Q (lamps[12]));
  DFFHQX4 \lamps_reg[13] (.CK (clk), .D (n_349), .Q (lamps[13]));
  NAND2X1 g22057__2398(.A (n_164), .B (n_415), .Y (n_419));
  OAI211X1 g22058__5107(.A0 (n_22), .A1 (n_414), .B0 (n_48), .C0
       (n_164), .Y (n_418));
  NAND2X1 g22059__6260(.A (n_413), .B (n_13), .Y (n_417));
  AO22X1 g22060__4319(.A0 (state[2]), .A1 (n_16), .B0 (n_283), .B1
       (n_74), .Y (n_416));
  AOI21X1 g22061__8428(.A0 (state[0]), .A1 (n_16), .B0 (n_327), .Y
       (n_415));
  NOR2X2 g22062__5526(.A (n_34), .B (n_16), .Y (n_414));
  AOI221X1 g22063__6783(.A0 (n_78), .A1 (n_190), .B0 (state[1]), .B1
       (n_403), .C0 (n_233), .Y (n_413));
  OAI22X1 g22123__5115(.A0 (n_305), .A1 (n_17), .B0 (n_306), .B1
       (n_291), .Y (n_402));
  OAI22X1 g22132__7410(.A0 (n_318), .A1 (n_17), .B0 (n_319), .B1
       (n_281), .Y (n_393));
  OAI22X1 g22133__6417(.A0 (n_312), .A1 (n_17), .B0 (n_313), .B1
       (n_280), .Y (n_392));
  OAI22X1 g22134__5477(.A0 (n_325), .A1 (n_17), .B0 (n_308), .B1
       (n_279), .Y (n_391));
  OAI22X1 g22136__5107(.A0 (n_302), .A1 (n_17), .B0 (n_303), .B1
       (n_278), .Y (n_389));
  OAI2BB1X1 g22137__6260(.A0N (n_147), .A1N (n_19), .B0 (n_454), .Y
       (n_388));
  NAND2X1 g22138__4319(.A (n_551), .B (n_347), .Y (n_387));
  AOI21X1 g22147__8246(.A0 (n_78), .A1 (n_239), .B0 (n_377), .Y
       (n_403));
  OAI22X2 g22148__7098(.A0 (n_245), .A1 (n_483), .B0 (counter[22]), .B1
       (n_237), .Y (n_378));
  NAND2BX1 g22149__6131(.AN (n_193), .B (n_277), .Y (n_377));
  OAI22X2 g22158__2346(.A0 (n_247), .A1 (n_484), .B0 (counter[18]), .B1
       (n_237), .Y (n_368));
  OAI22X2 g22159__1666(.A0 (n_246), .A1 (n_484), .B0 (counter[20]), .B1
       (n_237), .Y (n_367));
  NAND2X2 g22160__7410(.A (n_254), .B (n_270), .Y (n_366));
  OAI22X2 g22161__6417(.A0 (n_244), .A1 (n_483), .B0 (counter[23]), .B1
       (n_237), .Y (n_365));
  OAI22X2 g22162__5477(.A0 (n_243), .A1 (n_484), .B0 (counter[26]), .B1
       (n_237), .Y (n_364));
  OAI22X2 g22163__2398(.A0 (n_241), .A1 (n_483), .B0 (counter[27]), .B1
       (n_237), .Y (n_363));
  OAI22X2 g22164__5107(.A0 (n_240), .A1 (n_484), .B0 (counter[28]), .B1
       (n_237), .Y (n_362));
  OAI22X2 g22165__6260(.A0 (n_261), .A1 (n_483), .B0 (counter[30]), .B1
       (n_237), .Y (n_361));
  NAND2X2 g22166__4319(.A (n_242), .B (n_275), .Y (n_360));
  NAND2X2 g22167__8428(.A (n_260), .B (n_274), .Y (n_359));
  NAND2X2 g22168__5526(.A (n_259), .B (n_273), .Y (n_358));
  NAND2X2 g22169__6783(.A (n_258), .B (n_272), .Y (n_357));
  NAND2X2 g22170__3680(.A (n_257), .B (n_266), .Y (n_356));
  NAND2X2 g22171__1617(.A (n_256), .B (n_265), .Y (n_355));
  NAND2X2 g22172__2802(.A (n_255), .B (n_271), .Y (n_354));
  NAND2X2 g22176__5122(.A (n_252), .B (n_264), .Y (n_352));
  NAND2X2 g22177__8246(.A (n_251), .B (n_282), .Y (n_351));
  NAND2X2 g22178__7098(.A (n_248), .B (n_263), .Y (n_350));
  NAND2X2 g22179__6131(.A (n_250), .B (n_268), .Y (n_349));
  NAND2X2 g22180__1881(.A (n_249), .B (n_267), .Y (n_348));
  AOI21X1 g22181__5115(.A0 (n_235), .A1 (n_74), .B0 (n_32), .Y (n_347));
  AOI21X2 g22182__7482(.A0 (counter[6]), .A1 (n_484), .B0 (n_307), .Y
       (n_346));
  AOI21X2 g22183__4733(.A0 (counter[7]), .A1 (n_484), .B0 (n_324), .Y
       (n_345));
  AOI21X2 g22184__6161(.A0 (counter[8]), .A1 (n_484), .B0 (n_323), .Y
       (n_344));
  AOI21X2 g22185__9315(.A0 (counter[9]), .A1 (n_484), .B0 (n_322), .Y
       (n_343));
  AOI21X2 g22186__9945(.A0 (counter[10]), .A1 (n_483), .B0 (n_321), .Y
       (n_342));
  AOI21X2 g22187__2883(.A0 (counter[11]), .A1 (n_589), .B0 (n_320), .Y
       (n_341));
  AOI21X2 g22188__2346(.A0 (counter[13]), .A1 (n_483), .B0 (n_317), .Y
       (n_340));
  AOI21X2 g22189__1666(.A0 (counter[14]), .A1 (n_589), .B0 (n_316), .Y
       (n_339));
  AOI21X2 g22190__7410(.A0 (counter[15]), .A1 (n_483), .B0 (n_315), .Y
       (n_338));
  AOI21X2 g22191__6417(.A0 (counter[16]), .A1 (n_483), .B0 (n_314), .Y
       (n_337));
  AOI21X2 g22192__5477(.A0 (counter[19]), .A1 (n_483), .B0 (n_311), .Y
       (n_336));
  AOI21X2 g22193__2398(.A0 (counter[21]), .A1 (n_484), .B0 (n_310), .Y
       (n_335));
  AOI21X2 g22194__5107(.A0 (counter[29]), .A1 (n_484), .B0 (n_304), .Y
       (n_334));
  AOI21X2 g22195__6260(.A0 (counter[1]), .A1 (n_484), .B0 (n_301), .Y
       (n_333));
  AOI21X2 g22196__4319(.A0 (counter[2]), .A1 (n_484), .B0 (n_300), .Y
       (n_332));
  AOI21X2 g22197__8428(.A0 (counter[3]), .A1 (n_483), .B0 (n_299), .Y
       (n_331));
  AOI21X2 g22198__5526(.A0 (counter[4]), .A1 (n_483), .B0 (n_298), .Y
       (n_330));
  AOI21X2 g22199__6783(.A0 (counter[5]), .A1 (n_483), .B0 (n_297), .Y
       (n_329));
  OAI21X1 g22200__3680(.A0 (n_24), .A1 (n_201), .B0 (n_296), .Y
       (n_328));
  AO22X1 g22201__1617(.A0 (n_71), .A1 (n_239), .B0 (n_22), .B1 (n_175),
       .Y (n_327));
  NAND2X2 g22202__2802(.A (n_253), .B (n_269), .Y (n_326));
  NAND2X1 g22203__1705(.A (n_455), .B (n_443), .Y (n_325));
  NOR2BX2 g22204__5122(.AN (n_156), .B (n_21), .Y (n_324));
  NOR2BX2 g22205__8246(.AN (n_158), .B (n_21), .Y (n_323));
  NOR2BX2 g22206__7098(.AN (n_136), .B (n_20), .Y (n_322));
  NOR2BX2 g22207__6131(.AN (n_157), .B (n_21), .Y (n_321));
  NOR2BX2 g22208__1881(.AN (n_155), .B (n_20), .Y (n_320));
  NOR2X1 g22209__5115(.A (counter[12]), .B (n_237), .Y (n_319));
  NAND2X1 g22210__7482(.A (n_431), .B (n_455), .Y (n_318));
  NOR2BX2 g22211__4733(.AN (n_153), .B (n_21), .Y (n_317));
  NOR2BX2 g22212__6161(.AN (n_150), .B (n_20), .Y (n_316));
  NOR2BX2 g22213__9315(.AN (n_132), .B (n_21), .Y (n_315));
  NOR2BX2 g22214__9945(.AN (n_154), .B (n_20), .Y (n_314));
  NOR2X1 g22215__2883(.A (counter[17]), .B (n_237), .Y (n_313));
  NAND2X1 g22216__2346(.A (n_455), .B (n_436), .Y (n_312));
  NOR2BX2 g22217__1666(.AN (n_149), .B (n_20), .Y (n_311));
  NOR2BX2 g22218__7410(.AN (n_148), .B (n_20), .Y (n_310));
  NOR2X1 g22220__5477(.A (counter[24]), .B (n_237), .Y (n_308));
  NOR2BX2 g22221__2398(.AN (n_425), .B (n_20), .Y (n_307));
  NOR2X1 g22222__5107(.A (counter[25]), .B (n_237), .Y (n_306));
  NAND2X1 g22223__6260(.A (n_455), .B (n_444), .Y (n_305));
  NOR2BX2 g22224__4319(.AN (n_152), .B (n_21), .Y (n_304));
  NOR2X1 g22225__8428(.A (counter[31]), .B (n_237), .Y (n_303));
  NAND2X1 g22226__5526(.A (n_455), .B (n_450), .Y (n_302));
  NOR2BX2 g22227__6783(.AN (n_138), .B (n_20), .Y (n_301));
  NOR2BX2 g22228__3680(.AN (n_421), .B (n_21), .Y (n_300));
  NOR2BX2 g22229__1617(.AN (n_134), .B (n_20), .Y (n_299));
  NOR2BX2 g22230__2802(.AN (n_139), .B (n_21), .Y (n_298));
  NOR2BX2 g22231__1705(.AN (n_424), .B (n_21), .Y (n_297));
  AND2X1 g22232__5122(.A (n_217), .B (n_194), .Y (n_296));
  AO22X1 g22233__8246(.A0 (n_191), .A1 (n_74), .B0 (finish1), .B1
       (n_162), .Y (n_295));
  AOI21X2 g22239__1881(.A0 (n_214), .A1 (n_444), .B0 (n_483), .Y
       (n_291));
  OAI32X1 g22252__2346(.A0 (n_102), .A1 (n_172), .A2 (n_184), .B0
       (n_68), .B1 (n_188), .Y (n_283));
  AOI21X4 g22253__1666(.A0 (lamps[10]), .A1 (n_170), .B0 (n_548), .Y
       (n_282));
  AOI21X2 g22254__7410(.A0 (n_431), .A1 (n_214), .B0 (n_484), .Y
       (n_281));
  AOI21X2 g22255__6417(.A0 (n_214), .A1 (n_436), .B0 (n_484), .Y
       (n_280));
  AOI21X2 g22256__5477(.A0 (n_214), .A1 (n_443), .B0 (n_484), .Y
       (n_279));
  AOI21X2 g22258__2398(.A0 (n_214), .A1 (n_450), .B0 (n_483), .Y
       (n_278));
  OAI211X1 g22259__5107(.A0 (state[1]), .A1 (n_166), .B0 (n_69), .C0
       (n_234), .Y (n_277));
  OAI21X1 g22260__6260(.A0 (n_30), .A1 (n_169), .B0 (n_218), .Y
       (n_276));
  AOI21X4 g22261__4319(.A0 (lamps[0]), .A1 (n_170), .B0 (n_232), .Y
       (n_275));
  AOI21X4 g22262__8428(.A0 (lamps[1]), .A1 (n_170), .B0 (n_541), .Y
       (n_274));
  AOI21X4 g22263__5526(.A0 (lamps[2]), .A1 (n_170), .B0 (n_542), .Y
       (n_273));
  AOI21X4 g22264__6783(.A0 (lamps[3]), .A1 (n_170), .B0 (n_543), .Y
       (n_272));
  AOI21X4 g22265__3680(.A0 (lamps[6]), .A1 (n_170), .B0 (n_545), .Y
       (n_271));
  AOI21X4 g22266__1617(.A0 (lamps[7]), .A1 (n_170), .B0 (n_540), .Y
       (n_270));
  AOI21X4 g22267__2802(.A0 (lamps[8]), .A1 (n_170), .B0 (n_546), .Y
       (n_269));
  AOI21X4 g22268__1705(.A0 (lamps[12]), .A1 (n_170), .B0 (n_550), .Y
       (n_268));
  AOI21X4 g22269__5122(.A0 (lamps[13]), .A1 (n_170), .B0 (n_219), .Y
       (n_267));
  AOI21X4 g22270__8246(.A0 (lamps[4]), .A1 (n_170), .B0 (n_228), .Y
       (n_266));
  AOI21X4 g22271__7098(.A0 (lamps[5]), .A1 (n_170), .B0 (n_544), .Y
       (n_265));
  AOI21X4 g22272__6131(.A0 (lamps[9]), .A1 (n_170), .B0 (n_547), .Y
       (n_264));
  AOI21X4 g22273__1881(.A0 (lamps[11]), .A1 (n_170), .B0 (n_549), .Y
       (n_263));
  AND2X1 g22276__7482(.A (n_214), .B (n_449), .Y (n_261));
  NAND2X4 g22277__4733(.A (lamps[3]), .B (n_202), .Y (n_260));
  NAND2X4 g22278__6161(.A (lamps[4]), .B (n_202), .Y (n_259));
  NAND2X4 g22279__9315(.A (lamps[5]), .B (n_202), .Y (n_258));
  NAND2X4 g22280__9945(.A (lamps[6]), .B (n_202), .Y (n_257));
  NAND2X4 g22281__2883(.A (lamps[7]), .B (n_202), .Y (n_256));
  NAND2X4 g22282__2346(.A (lamps[8]), .B (n_202), .Y (n_255));
  NAND2X4 g22283__1666(.A (lamps[9]), .B (n_202), .Y (n_254));
  NAND2X4 g22284__7410(.A (lamps[10]), .B (n_202), .Y (n_253));
  NAND2X4 g22285__6417(.A (lamps[11]), .B (n_202), .Y (n_252));
  NAND2X4 g22286__5477(.A (lamps[12]), .B (n_202), .Y (n_251));
  NAND2X4 g22287__2398(.A (lamps[14]), .B (n_202), .Y (n_250));
  NAND2X4 g22288__5107(.A (lamps[15]), .B (n_202), .Y (n_249));
  NAND2X4 g22289__6260(.A (lamps[13]), .B (n_202), .Y (n_248));
  AND2X1 g22290__4319(.A (n_214), .B (n_437), .Y (n_247));
  AND2X1 g22291__8428(.A (n_214), .B (n_439), .Y (n_246));
  AND2X1 g22292__5526(.A (n_214), .B (n_441), .Y (n_245));
  AND2X1 g22293__6783(.A (n_214), .B (n_442), .Y (n_244));
  AND2X1 g22294__3680(.A (n_214), .B (n_445), .Y (n_243));
  NAND2X4 g22295__1617(.A (lamps[2]), .B (n_202), .Y (n_242));
  AND2X1 g22296__2802(.A (n_214), .B (n_446), .Y (n_241));
  AND2X1 g22297__1705(.A (n_214), .B (n_447), .Y (n_240));
  NOR2X8 g22298__5122(.A (n_512), .B (rst), .Y (n_262));
  OAI221X1 g22301__7098(.A0 (n_171), .A1 (n_108), .B0 (n_124), .B1
       (n_97), .C0 (n_48), .Y (n_235));
  AOI32X1 g22302__6131(.A0 (n_31), .A1 (n_142), .A2 (n_171), .B0
       (n_172), .B1 (n_141), .Y (n_234));
  OAI21X1 g22303__1881(.A0 (n_27), .A1 (n_174), .B0 (n_196), .Y
       (n_233));
  NAND2X4 g22304__5115(.A (n_212), .B (n_200), .Y (n_232));
  NAND2X4 g22308__9315(.A (n_209), .B (n_200), .Y (n_228));
  NAND2X4 g22317__2398(.A (n_206), .B (n_200), .Y (n_219));
  AOI21X2 g22318__5107(.A0 (lamps[15]), .A1 (n_186), .B0 (n_199), .Y
       (n_218));
  AOI21X2 g22319__6260(.A0 (lamps[0]), .A1 (n_165), .B0 (n_192), .Y
       (n_217));
  MXI2XL g22320__4319(.A (n_129), .B (n_188), .S0 (state[2]), .Y
       (n_239));
  NOR2X8 g22322__5526(.A (n_213), .B (rst), .Y (n_237));
  NOR2X4 g22323__6783(.A (n_15), .B (n_513), .Y (n_216));
  NAND2X4 g22325__3680(.A (lamps[1]), .B (n_186), .Y (n_212));
  NAND2X4 g22329__1705(.A (lamps[5]), .B (n_186), .Y (n_209));
  NAND2X4 g22332__7098(.A (lamps[14]), .B (n_186), .Y (n_206));
  AND2X2 g22337__7482(.A (n_42), .B (n_189), .Y (n_214));
  CLKINVX16 g22338(.A (n_201), .Y (n_202));
  CLKINVX16 g22339(.A (n_199), .Y (n_200));
  AOI22X1 g22342__9315(.A0 (n_166), .A1 (n_69), .B0 (n_34), .B1 (n_45),
       .Y (n_196));
  AOI21X2 g22345__2883(.A0 (lamps[0]), .A1 (rst), .B0 (n_178), .Y
       (n_194));
  OAI211X1 g22346__2346(.A0 (n_37), .A1 (n_140), .B0 (n_114), .C0
       (n_174), .Y (n_193));
  NOR2X2 g22347__1666(.A (n_185), .B (rst), .Y (n_192));
  AOI211XL g22348__7410(.A0 (n_142), .A1 (n_95), .B0 (n_172), .C0
       (n_177), .Y (n_191));
  OAI21X1 g22349__6417(.A0 (n_23), .A1 (n_171), .B0 (n_66), .Y (n_190));
  NOR2X6 g22351__2398(.A (n_187), .B (n_161), .Y (n_201));
  CLKAND2X6 g22352__5107(.A (state[0]), .B (n_187), .Y (n_199));
  CLKINVX8 g22354(.A (n_183), .Y (n_186));
  NAND2X1 g22355__6260(.A (state[0]), .B (n_173), .Y (n_185));
  AND2X1 g22356__4319(.A (n_27), .B (n_171), .Y (n_184));
  NOR2BX1 g22357__8428(.AN (n_122), .B (n_163), .Y (n_189));
  NOR2BX1 g22358__5526(.AN (n_171), .B (n_159), .Y (n_188));
  NOR2X6 g22359__6783(.A (n_49), .B (rst), .Y (n_187));
  NOR2X6 g22360__3680(.A (n_165), .B (rst), .Y (n_183));
  NOR2X2 g22364__1617(.A (n_168), .B (rst), .Y (n_178));
  OAI221X1 g22365__2802(.A0 (n_144), .A1 (n_36), .B0 (state[0]), .B1
       (n_66), .C0 (n_33), .Y (n_177));
  AOI33XL g22366__1705(.A0 (n_124), .A1 (n_22), .A2 (n_104), .B0
       (n_75), .B1 (n_100), .B2 (n_141), .Y (n_176));
  OAI32X1 g22367__5122(.A0 (n_124), .A1 (finish0), .A2 (n_67), .B0
       (n_36), .B1 (n_47), .Y (n_175));
  OAI22X1 g22368__8246(.A0 (n_123), .A1 (n_135), .B0 (n_145), .B1
       (n_112), .Y (n_181));
  OR2X1 g22372__6131(.A (state[3]), .B (n_143), .Y (n_168));
  NAND2BX1 g22373__1881(.AN (n_160), .B (n_70), .Y (n_167));
  NAND2BX1 g22374__5115(.AN (n_142), .B (n_37), .Y (n_174));
  NOR2X1 g22375__7482(.A (n_36), .B (n_140), .Y (n_173));
  NAND2X2 g22377__6161(.A (n_145), .B (n_28), .Y (n_171));
  CLKAND2X12 g22378__9315(.A (n_46), .B (n_77), .Y (n_170));
  AOI31X1 g22379__9945(.A0 (n_129), .A1 (n_68), .A2 (n_98), .B0
       (state[3]), .Y (n_163));
  NAND3BX2 g22380__2883(.AN (n_130), .B (flick), .C (n_74), .Y (n_162));
  CLKAND2X6 g22381__2346(.A (n_131), .B (n_77), .Y (n_161));
  MX2X1 g22383__1666(.A (n_123), .B (n_44), .S0 (state[2]), .Y (n_166));
  AO21X1 g22384__7410(.A0 (n_114), .A1 (n_42), .B0 (n_160), .Y (n_165));
  CLKAND2X2 g22385__6417(.A (n_133), .B (n_13), .Y (n_164));
  AND2X1 g22393__5477(.A (n_42), .B (n_425), .Y (n_151));
  NOR2X1 g22397__2398(.A (counter[0]), .B (n_128), .Y (n_147));
  AND2X1 g22398__5107(.A (n_42), .B (n_424), .Y (n_146));
  NOR2X1 g22399__6260(.A (state[3]), .B (n_130), .Y (n_160));
  NOR2X1 g22400__4319(.A (n_124), .B (finish1), .Y (n_159));
  NOR2BX1 g22406__8428(.AN (n_421), .B (n_128), .Y (n_137));
  OA22X1 g22408__5526(.A0 (n_99), .A1 (n_116), .B0 (n_22), .B1 (n_36),
       .Y (n_135));
  NAND3X1 g22410__6783(.A (n_123), .B (n_37), .C (state[3]), .Y
       (n_133));
  NOR2X1 g22412__3680(.A (n_121), .B (n_42), .Y (n_131));
  NOR2X1 g22413__1617(.A (n_103), .B (n_125), .Y (n_145));
  NOR2X1 g22414__2802(.A (n_129), .B (finish1), .Y (n_144));
  OR3X1 g22415__1705(.A (n_113), .B (n_117), .C (n_42), .Y (n_143));
  NAND2BX1 g22416__5122(.AN (finish1), .B (n_123), .Y (n_142));
  OR4X1 g22417__8246(.A (n_79), .B (n_88), .C (n_125), .D (n_96), .Y
       (n_141));
  OR2X1 g22418__7098(.A (n_22), .B (n_42), .Y (n_140));
  OAI21X1 g22428__1881(.A0 (n_94), .A1 (n_113), .B0 (finish1), .Y
       (n_130));
  NAND2X1 g22429__5115(.A (n_41), .B (n_119), .Y (n_129));
  OR2X1 g22430__7482(.A (n_115), .B (n_552), .Y (n_42));
  AOI22X1 g22431__4733(.A0 (state[3]), .A1 (n_106), .B0 (n_67), .B1
       (n_69), .Y (n_122));
  NAND3X2 g22432__6161(.A (lamps[7]), .B (lamps[6]), .C (n_41), .Y
       (n_125));
  NAND2X2 g22433__9315(.A (n_120), .B (n_119), .Y (n_124));
  AND2X1 g22434__9945(.A (n_105), .B (n_119), .Y (n_123));
  OAI221X1 g22435__2883(.A0 (n_26), .A1 (n_67), .B0 (n_23), .B1 (n_32),
       .C0 (n_110), .Y (n_121));
  NOR2X1 g22437__2346(.A (lamps[5]), .B (n_109), .Y (n_120));
  OAI221X1 g22440__7410(.A0 (n_26), .A1 (n_36), .B0 (state[0]), .B1
       (n_67), .C0 (n_98), .Y (n_117));
  AOI31X1 g22441__6417(.A0 (n_76), .A1 (n_22), .A2 (n_32), .B0 (n_35),
       .Y (n_116));
  NAND4XL g22442__5477(.A (n_85), .B (n_82), .C (n_90), .D (n_87), .Y
       (n_115));
  AND2X2 g22443__2398(.A (n_91), .B (n_107), .Y (n_119));
  NAND2BX1 g22444__5107(.AN (n_99), .B (n_100), .Y (n_112));
  AOI31X1 g22447__4319(.A0 (finish1), .A1 (state[2]), .A2 (finish0),
       .B0 (n_38), .Y (n_110));
  OAI2BB1X1 g22448__8428(.A0N (n_27), .A1N (n_72), .B0 (state[3]), .Y
       (n_114));
  AND2X1 g22449__5526(.A (finish0), .B (n_101), .Y (n_113));
  OA22X1 g22450__6783(.A0 (n_26), .A1 (n_66), .B0 (n_23), .B1 (n_68),
       .Y (n_108));
  NOR3X1 g22451__3680(.A (lamps[10]), .B (lamps[11]), .C (n_83), .Y
       (n_107));
  OAI2BB1X1 g22452__1617(.A0N (n_26), .A1N (n_66), .B0 (n_102), .Y
       (n_106));
  NOR3X1 g22453__2802(.A (lamps[3]), .B (lamps[5]), .C (n_81), .Y
       (n_105));
  OAI2BB1X1 g22454__1705(.A0N (n_39), .A1N (n_32), .B0 (n_97), .Y
       (n_104));
  NAND2X1 g22455__5122(.A (n_92), .B (n_91), .Y (n_103));
  OR2X1 g22456__8246(.A (n_62), .B (n_93), .Y (n_109));
  NAND3X1 g22458__7098(.A (lamps[15]), .B (lamps[12]), .C (n_28), .Y
       (n_96));
  NAND2X1 g22459__6131(.A (n_66), .B (n_67), .Y (n_95));
  NOR2X1 g22460__1881(.A (state[0]), .B (n_36), .Y (n_94));
  NAND3X1 g22461__5115(.A (lamps[4]), .B (lamps[1]), .C (lamps[0]), .Y
       (n_93));
  NOR3BX1 g22462__7482(.AN (lamps[10]), .B (lamps[11]), .C (n_79), .Y
       (n_92));
  NAND2X1 g22463__4733(.A (state[0]), .B (n_36), .Y (n_102));
  NOR2X1 g22464__6161(.A (n_34), .B (n_38), .Y (n_101));
  AND2X1 g22465__9315(.A (n_28), .B (n_71), .Y (n_100));
  OR2X1 g22466__9945(.A (n_75), .B (n_38), .Y (n_99));
  NAND2X1 g22467__2883(.A (finish1), .B (n_37), .Y (n_98));
  OR3X1 g22468__2346(.A (state[1]), .B (finish0), .C (n_68), .Y (n_97));
  NOR4X1 g22470__1666(.A (counter[13]), .B (counter[12]), .C
       (counter[15]), .D (counter[14]), .Y (n_90));
  NOR3X1 g22471__7410(.A (counter[7]), .B (counter[24]), .C (n_73), .Y
       (n_89));
  NAND4XL g22472__6417(.A (lamps[11]), .B (lamps[10]), .C (lamps[14]),
       .D (lamps[13]), .Y (n_88));
  NOR4X1 g22473__5477(.A (counter[21]), .B (counter[20]), .C
       (counter[23]), .D (counter[22]), .Y (n_87));
  NOR4X1 g22474__2398(.A (counter[26]), .B (counter[28]), .C
       (counter[25]), .D (counter[27]), .Y (n_86));
  NOR4X1 g22475__5107(.A (counter[9]), .B (counter[8]), .C
       (counter[11]), .D (counter[10]), .Y (n_85));
  NOR3X1 g22476__6260(.A (counter[3]), .B (counter[4]), .C (n_64), .Y
       (n_84));
  OR4X1 g22477__4319(.A (lamps[7]), .B (lamps[6]), .C (lamps[8]), .D
       (lamps[9]), .Y (n_83));
  NOR4X1 g22478__8428(.A (counter[17]), .B (counter[16]), .C
       (counter[19]), .D (counter[18]), .Y (n_82));
  OR4X1 g22479__5526(.A (lamps[1]), .B (lamps[0]), .C (lamps[2]), .D
       (lamps[4]), .Y (n_81));
  NOR4X1 g22480__6783(.A (counter[0]), .B (counter[30]), .C
       (counter[31]), .D (counter[29]), .Y (n_80));
  AND2X1 g22481__3680(.A (n_65), .B (n_63), .Y (n_91));
  NAND2X1 g22484__1617(.A (counter[5]), .B (counter[6]), .Y (n_73));
  NAND2X1 g22485__2802(.A (state[1]), .B (state[0]), .Y (n_72));
  NAND2X1 g22486__1705(.A (lamps[9]), .B (lamps[8]), .Y (n_79));
  NOR2X1 g22487__5122(.A (state[0]), .B (state[3]), .Y (n_78));
  NOR2X8 g22488__8246(.A (state[3]), .B (rst), .Y (n_77));
  NAND2X1 g22489__7098(.A (state[2]), .B (state[1]), .Y (n_76));
  AND2X1 g22491__6131(.A (state[2]), .B (state[0]), .Y (n_75));
  NOR2X4 g22493__1881(.A (state[3]), .B (rst), .Y (n_74));
  NOR2X1 g22498__5115(.A (lamps[12]), .B (lamps[14]), .Y (n_65));
  NAND2BX1 g22499__7482(.AN (counter[1]), .B (counter[2]), .Y (n_64));
  NOR2X1 g22500__4733(.A (lamps[13]), .B (lamps[15]), .Y (n_63));
  NAND2X1 g22501__6161(.A (lamps[3]), .B (lamps[2]), .Y (n_62));
  NOR2X1 g22502__9315(.A (n_23), .B (state[3]), .Y (n_71));
  NAND2X1 g22503__9945(.A (state[2]), .B (state[3]), .Y (n_70));
  NOR2X1 g22504__2883(.A (n_26), .B (state[3]), .Y (n_69));
  OR2XL g22507__2346(.A (state[0]), .B (n_27), .Y (n_68));
  OR2XL g22508__1666(.A (state[1]), .B (n_27), .Y (n_67));
  OR2XL g22509__7410(.A (state[2]), .B (n_23), .Y (n_66));
  DFFX1 finish0_reg(.CK (clk), .D (n_387), .Q (finish0), .QN (n_28));
  DFFHQX1 finish1_reg(.CK (clk), .D (n_295), .Q (finish1));
  DFFX2 \lamps_reg[1] (.CK (clk), .D (n_360), .Q (lamps[1]), .QN
       (n_24));
  DFFX2 \lamps_reg[5] (.CK (clk), .D (n_356), .Q (lamps[5]), .QN
       (n_29));
  DFFX4 \lamps_reg[14] (.CK (clk), .D (n_348), .Q (lamps[14]), .QN
       (n_30));
  DFFX2 \state_reg[0] (.CK (clk), .D (n_419), .Q (state[0]), .QN
       (n_26));
  DFFX1 \state_reg[1] (.CK (clk), .D (n_417), .Q (state[1]), .QN
       (n_23));
  DFFX1 \state_reg[2] (.CK (clk), .D (n_416), .Q (state[2]), .QN
       (n_27));
  DFFX4 \state_reg[3] (.CK (clk), .D (n_418), .Q (state[3]), .QN
       (n_22));
  CLKINVX8 g22596(.A (n_262), .Y (n_21));
  CLKINVX8 g22275_0(.A (n_262), .Y (n_20));
  CLKINVX4 g22603(.A (n_216), .Y (n_19));
  CLKINVX4 g22299_0(.A (n_216), .Y (n_18));
  NOR2BX4 g2__6417(.AN (n_403), .B (rst), .Y (n_16));
  NOR2BX4 g22632__5477(.AN (n_189), .B (rst), .Y (n_15));
  NOR2BX2 g22634__2398(.AN (n_101), .B (flick), .Y (n_14));
  NOR2BX4 g22635__5107(.AN (n_70), .B (rst), .Y (n_13));
  OR2X1 g22689__7098(.A (state[1]), .B (state[2]), .Y (n_36));
  NOR2X1 g22691__6131(.A (state[1]), .B (state[0]), .Y (n_37));
  NOR2X1 g22693__1881(.A (state[2]), .B (state[0]), .Y (n_38));
  NOR2X1 g22695__5115(.A (finish1), .B (n_28), .Y (n_32));
  NOR2X1 g22697__7482(.A (state[1]), .B (n_26), .Y (n_34));
  BUFX2 drc_bufs22699(.A (rst), .Y (n_17));
  INVX1 g22701(.A (n_143), .Y (n_46));
  INVX1 g22703(.A (n_140), .Y (n_45));
  INVX1 g22705(.A (n_36), .Y (n_35));
  INVX1 g22709(.A (n_76), .Y (n_39));
  INVX1 g22711(.A (n_34), .Y (n_33));
  INVX1 g22713(.A (n_66), .Y (n_31));
  INVX2 g22719(.A (n_173), .Y (n_49));
  NOR2X1 g22729__4733(.A (n_29), .B (n_109), .Y (n_41));
  NAND3BXL g22731__6161(.AN (n_141), .B (state[1]), .C (n_75), .Y
       (n_48));
  INVX1 g22733(.A (n_144), .Y (n_47));
  INVX1 g22735(.A (n_129), .Y (n_44));
  CLKXOR2X1 inc_add_77_32_g789__9945(.A (counter[19]), .B
       (inc_add_77_32_n_402), .Y (n_149));
  CLKXOR2X1 inc_add_77_32_g790__2883(.A (counter[15]), .B
       (inc_add_77_32_n_404), .Y (n_132));
  CLKXOR2X1 inc_add_77_32_g791__2346(.A (counter[11]), .B
       (inc_add_77_32_n_407), .Y (n_155));
  ADDHX1 inc_add_77_32_g792__1666(.A (counter[18]), .B
       (inc_add_77_32_n_414), .CO (inc_add_77_32_n_402), .S (n_437));
  ADDHX1 inc_add_77_32_g793__7410(.A (counter[14]), .B
       (inc_add_77_32_n_412), .CO (inc_add_77_32_n_404), .S (n_150));
  CLKXOR2X1 inc_add_77_32_g794__6417(.A (counter[7]), .B
       (inc_add_77_32_n_409), .Y (n_156));
  ADDHX1 inc_add_77_32_g795__5477(.A (counter[10]), .B
       (inc_add_77_32_n_418), .CO (inc_add_77_32_n_407), .S (n_157));
  ADDHX1 inc_add_77_32_g796__2398(.A (counter[6]), .B
       (inc_add_77_32_n_424), .CO (inc_add_77_32_n_409), .S (n_425));
  CLKXOR2X1 inc_add_77_32_g797__5107(.A (counter[29]), .B
       (inc_add_77_32_n_420), .Y (n_152));
  ADDHX1 inc_add_77_32_g798__6260(.A (counter[13]), .B
       (inc_add_77_32_n_433), .CO (inc_add_77_32_n_412), .S (n_153));
  ADDHX1 inc_add_77_32_g799__4319(.A (counter[17]), .B
       (inc_add_77_32_n_435), .CO (inc_add_77_32_n_414), .S (n_436));
  CLKXOR2X1 inc_add_77_32_g800__8428(.A (counter[25]), .B
       (inc_add_77_32_n_426), .Y (n_444));
  CLKXOR2X1 inc_add_77_32_g801__5526(.A (counter[21]), .B
       (inc_add_77_32_n_422), .Y (n_148));
  ADDHX1 inc_add_77_32_g802__6783(.A (counter[9]), .B
       (inc_add_77_32_n_438), .CO (inc_add_77_32_n_418), .S (n_136));
  ADDHX1 inc_add_77_32_g803__3680(.A (counter[28]), .B
       (inc_add_77_32_n_441), .CO (inc_add_77_32_n_420), .S (n_447));
  ADDHX1 inc_add_77_32_g804__1617(.A (counter[20]), .B
       (inc_add_77_32_n_452), .CO (inc_add_77_32_n_422), .S (n_439));
  ADDHX1 inc_add_77_32_g805__2802(.A (counter[5]), .B
       (inc_add_77_32_n_451), .CO (inc_add_77_32_n_424), .S (n_424));
  ADDHX1 inc_add_77_32_g806__1705(.A (counter[24]), .B
       (inc_add_77_32_n_454), .CO (inc_add_77_32_n_426), .S (n_443));
  XNOR2X1 inc_add_77_32_g807__5122(.A (counter[23]), .B
       (inc_add_77_32_n_446), .Y (n_442));
  XNOR2X1 inc_add_77_32_g808__8246(.A (counter[30]), .B
       (inc_add_77_32_n_445), .Y (n_449));
  XNOR2X1 inc_add_77_32_g809__7098(.A (counter[22]), .B
       (inc_add_77_32_n_443), .Y (n_441));
  XNOR2X1 inc_add_77_32_g810__6131(.A (counter[31]), .B
       (inc_add_77_32_n_439), .Y (n_450));
  CLKXOR2X1 inc_add_77_32_g811__1881(.A (counter[26]), .B
       (inc_add_77_32_n_442), .Y (n_445));
  ADDHX1 inc_add_77_32_g812__5115(.A (counter[12]), .B
       (inc_add_77_32_n_459), .CO (inc_add_77_32_n_433), .S (n_431));
  ADDHX1 inc_add_77_32_g813__7482(.A (counter[16]), .B
       (inc_add_77_32_n_461), .CO (inc_add_77_32_n_435), .S (n_154));
  XNOR2X1 inc_add_77_32_g814__4733(.A (counter[27]), .B
       (inc_add_77_32_n_455), .Y (n_446));
  ADDHX1 inc_add_77_32_g815__6161(.A (counter[8]), .B
       (inc_add_77_32_n_462), .CO (inc_add_77_32_n_438), .S (n_158));
  NAND2BX1 inc_add_77_32_g816__9315(.AN (inc_add_77_32_n_476), .B
       (inc_add_77_32_n_454), .Y (inc_add_77_32_n_439));
  NOR2BX1 inc_add_77_32_g817__9945(.AN (inc_add_77_32_n_454), .B
       (n_555), .Y (inc_add_77_32_n_441));
  NOR2BX1 inc_add_77_32_g818__2883(.AN (inc_add_77_32_n_454), .B
       (inc_add_77_32_n_514), .Y (inc_add_77_32_n_442));
  NAND2BX1 inc_add_77_32_g819__2346(.AN (inc_add_77_32_n_509), .B
       (inc_add_77_32_n_452), .Y (inc_add_77_32_n_443));
  NAND2BX1 inc_add_77_32_g820__1666(.AN (inc_add_77_32_n_472), .B
       (inc_add_77_32_n_454), .Y (inc_add_77_32_n_445));
  CLKXOR2X1 inc_add_77_32_g822__7410(.A (counter[3]), .B
       (inc_add_77_32_n_458), .Y (n_134));
  ADDHX1 inc_add_77_32_g823__6417(.A (counter[4]), .B
       (inc_add_77_32_n_464), .CO (inc_add_77_32_n_451), .S (n_139));
  AND2X1 inc_add_77_32_g824__5477(.A (inc_add_77_32_n_490), .B
       (inc_add_77_32_n_461), .Y (inc_add_77_32_n_452));
  AND2XL inc_add_77_32_g825__2398(.A (n_554), .B (inc_add_77_32_n_461),
       .Y (inc_add_77_32_n_454));
  NAND3X1 inc_add_77_32_g826__5107(.A (inc_add_77_32_n_480), .B
       (n_554), .C (inc_add_77_32_n_461), .Y (inc_add_77_32_n_455));
  ADDHX1 inc_add_77_32_g827__6260(.A (counter[2]), .B
       (inc_add_77_32_n_468), .CO (inc_add_77_32_n_458), .S (n_421));
  NOR2BX1 inc_add_77_32_g828__4319(.AN (inc_add_77_32_n_462), .B
       (n_556), .Y (inc_add_77_32_n_459));
  AND3XL inc_add_77_32_g831__8428(.A (counter[2]), .B (counter[3]), .C
       (inc_add_77_32_n_468), .Y (inc_add_77_32_n_464));
  ADDHX1 inc_add_77_32_g832__5526(.A (counter[0]), .B (counter[1]), .CO
       (inc_add_77_32_n_468), .S (n_138));
  NOR2X1 inc_add_77_32_g833__6783(.A (inc_add_77_32_n_485), .B (n_556),
       .Y (inc_add_77_32_n_470));
  NAND4BX1 inc_add_77_32_g835__3680(.AN (n_555), .B (counter[28]), .C
       (counter[30]), .D (counter[29]), .Y (inc_add_77_32_n_476));
  NOR2BX1 inc_add_77_32_g837__2802(.AN (counter[26]), .B
       (inc_add_77_32_n_514), .Y (inc_add_77_32_n_480));
  NAND4XL inc_add_77_32_g840__8246(.A (counter[12]), .B (counter[13]),
       .C (counter[14]), .D (counter[15]), .Y (inc_add_77_32_n_485));
  AND4X1 inc_add_77_32_g841__7098(.A (counter[16]), .B (counter[17]),
       .C (counter[18]), .D (counter[19]), .Y (inc_add_77_32_n_490));
  AND4X1 inc_add_77_32_g842__6131(.A (counter[4]), .B (counter[5]), .C
       (counter[6]), .D (counter[7]), .Y (inc_add_77_32_n_495));
  NAND2X1 inc_add_77_32_g845__7482(.A (counter[22]), .B (counter[23]),
       .Y (inc_add_77_32_n_504));
  NAND2X1 inc_add_77_32_g847__6161(.A (counter[20]), .B (counter[21]),
       .Y (inc_add_77_32_n_509));
  NAND2X1 inc_add_77_32_g849__9945(.A (counter[24]), .B (counter[25]),
       .Y (inc_add_77_32_n_514));
  NAND3BXL inc_add_77_32_g851__2883(.AN (inc_add_77_32_n_509), .B
       (counter[22]), .C (inc_add_77_32_n_452), .Y
       (inc_add_77_32_n_446));
  AND2X1 inc_add_77_32_g853__2346(.A (inc_add_77_32_n_495), .B
       (inc_add_77_32_n_464), .Y (inc_add_77_32_n_462));
  NAND3BXL inc_add_77_32_g855__1666(.AN (n_555), .B (counter[28]), .C
       (counter[29]), .Y (inc_add_77_32_n_472));
  AND2X1 inc_add_77_32_g857__7410(.A (inc_add_77_32_n_470), .B
       (inc_add_77_32_n_462), .Y (inc_add_77_32_n_461));
  CLKMX2X3 g2(.A (n_21), .B (n_482), .S0 (counter[0]), .Y (n_454));
  CLKINVX12 g22780(.A (n_482), .Y (n_483));
  NOR2X8 g22369__22781(.A (n_167), .B (rst), .Y (n_482));
  CLKINVX8 g22363_dup(.A (n_482), .Y (n_484));
  DFFHQX1 \lamps_reg[15] (.CK (clk), .D (n_276), .Q (lamps[15]));
  NAND2BX2 g22810(.AN (n_176), .B (n_42), .Y (n_512));
  NOR2BX4 g22811(.AN (n_181), .B (rst), .Y (n_513));
  OAI2BB1X2 g22812(.A0N (n_155), .A1N (n_19), .B0 (n_341), .Y (n_514));
  OAI2BB1X2 g22813(.A0N (n_150), .A1N (n_18), .B0 (n_339), .Y (n_515));
  OAI2BB1X2 g22814(.A0N (n_153), .A1N (n_18), .B0 (n_340), .Y (n_516));
  OAI2BB1X2 g22815(.A0N (n_156), .A1N (n_19), .B0 (n_345), .Y (n_517));
  OAI2BB1X2 g22816(.A0N (n_151), .A1N (n_18), .B0 (n_346), .Y (n_518));
  OAI2BB1X2 g22817(.A0N (n_158), .A1N (n_19), .B0 (n_344), .Y (n_519));
  OAI2BB1X2 g22818(.A0N (n_136), .A1N (n_19), .B0 (n_343), .Y (n_520));
  OAI2BB1X2 g22819(.A0N (n_157), .A1N (n_18), .B0 (n_342), .Y (n_521));
  OAI2BB1X2 g22820(.A0N (n_154), .A1N (n_18), .B0 (n_337), .Y (n_522));
  OAI2BB1X2 g22821(.A0N (n_149), .A1N (n_19), .B0 (n_336), .Y (n_523));
  OAI2BB1X2 g22823(.A0N (n_152), .A1N (n_19), .B0 (n_334), .Y (n_525));
  OAI2BB1X2 g22825(.A0N (n_137), .A1N (n_19), .B0 (n_332), .Y (n_527));
  OAI2BB1X2 g22827(.A0N (n_139), .A1N (n_19), .B0 (n_330), .Y (n_529));
  OAI2BB1X2 g22828(.A0N (n_146), .A1N (n_19), .B0 (n_329), .Y (n_530));
  OAI2BB1X2 g22829(.A0N (n_132), .A1N (n_18), .B0 (n_338), .Y (n_531));
  OAI2BB1X2 g22830(.A0N (n_437), .A1N (n_292), .B0 (n_368), .Y (n_532));
  OAI2BB1X2 g22831(.A0N (n_439), .A1N (n_292), .B0 (n_367), .Y (n_533));
  OAI2BB1X2 g22832(.A0N (n_441), .A1N (n_292), .B0 (n_378), .Y (n_534));
  OAI2BB1X2 g22833(.A0N (n_442), .A1N (n_292), .B0 (n_365), .Y (n_535));
  OAI2BB1X2 g22834(.A0N (n_445), .A1N (n_292), .B0 (n_364), .Y (n_536));
  OAI2BB1X2 g22835(.A0N (n_447), .A1N (n_292), .B0 (n_362), .Y (n_537));
  OAI2BB1X2 g22836(.A0N (n_446), .A1N (n_292), .B0 (n_363), .Y (n_538));
  OAI2BB1X4 g22838(.A0N (lamps[8]), .A1N (n_186), .B0 (n_200), .Y
       (n_540));
  OAI2BB1X4 g22839(.A0N (lamps[2]), .A1N (n_186), .B0 (n_200), .Y
       (n_541));
  OAI2BB1X4 g22840(.A0N (lamps[3]), .A1N (n_186), .B0 (n_200), .Y
       (n_542));
  OAI2BB1X4 g22841(.A0N (lamps[4]), .A1N (n_186), .B0 (n_200), .Y
       (n_543));
  OAI2BB1X4 g22842(.A0N (lamps[6]), .A1N (n_186), .B0 (n_200), .Y
       (n_544));
  OAI2BB1X4 g22843(.A0N (lamps[7]), .A1N (n_186), .B0 (n_200), .Y
       (n_545));
  OAI2BB1X4 g22844(.A0N (lamps[9]), .A1N (n_186), .B0 (n_200), .Y
       (n_546));
  OAI2BB1X4 g22845(.A0N (lamps[10]), .A1N (n_186), .B0 (n_200), .Y
       (n_547));
  OAI2BB1X4 g22846(.A0N (lamps[11]), .A1N (n_186), .B0 (n_200), .Y
       (n_548));
  OAI2BB1X4 g22847(.A0N (lamps[12]), .A1N (n_186), .B0 (n_200), .Y
       (n_549));
  OAI2BB1X4 g22848(.A0N (lamps[13]), .A1N (n_186), .B0 (n_200), .Y
       (n_550));
  NAND4X1 g22850(.A (n_80), .B (n_86), .C (n_84), .D (n_89), .Y
       (n_552));
  NOR3BX1 g22852(.AN (inc_add_77_32_n_490), .B (inc_add_77_32_n_504),
       .C (inc_add_77_32_n_509), .Y (n_554));
  NAND4X1 g22854(.A (counter[10]), .B (counter[11]), .C (counter[8]),
       .D (counter[9]), .Y (n_556));
  OAI2BB1X1 g22870(.A0N (n_449), .A1N (n_292), .B0 (n_361), .Y (n_539));
  OAI2BB1X1 g22881(.A0N (n_138), .A1N (n_18), .B0 (n_333), .Y (n_526));
  OAI2BB1X1 g22883(.A0N (n_134), .A1N (n_18), .B0 (n_331), .Y (n_528));
  OAI2BB1X1 g22897(.A0N (n_148), .A1N (n_18), .B0 (n_335), .Y (n_524));
  NOR2X1 g22376__22899(.A (n_76), .B (n_159), .Y (n_172));
  NAND3BXL g22901(.AN (inc_add_77_32_n_514), .B (counter[26]), .C
       (counter[27]), .Y (n_555));
  NAND2BX1 g22903(.AN (n_181), .B (n_512), .Y (n_455));
  INVX2 g22905(.A (n_214), .Y (n_213));
  INVX2 g22907(.A (n_170), .Y (n_169));
  OR2X4 g22274__22909(.A (n_262), .B (n_513), .Y (n_292));
  INVX1 g22911(.A (n_42), .Y (n_128));
  OAI2BB1X1 g22913(.A0N (n_14), .A1N (n_74), .B0 (finish0), .Y (n_551));
  BUFX6 drc_bufs22997(.A (n_483), .Y (n_589));
endmodule

