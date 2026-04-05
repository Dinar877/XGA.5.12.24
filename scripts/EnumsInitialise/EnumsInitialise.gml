// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnumsInitialise(){
	
	enum Cutscenes 
	{
		staticTriggerPoint = 0,
		blackholetalk1 = 3,
		blackholetalk2 = 4,
		blackholetalk3 = 5,
		floweyVineTriggerPoint = 10,
		xgaTease1 = 11,
		xgaTeaseBoxboss = 12,
		elevatorCorruption1 = 13,
		elevatorCorruption2 = 14,
		voltEngineGet = 15,
		biocorpArrive = 16,
		biocorpBrainchip = 17,
		bridgeFallIntro = 22,
		bugspiderDrill = 28,
		midgameScientist = 50,
		trueintro3TriggerPoint = 88,
		xga2scream = 89,
		xga2entrance = 90,
		ceoTalk1 = 91,
		ceoTalk2 = 92,
		xga3scream = 93,
		xga3entrance = 94,
		scc_active = 95,
		ssc_scrndarkCutscene = 6,
		sc_key_aquired = 7,
		sc_scrndark_cutscene = 9,
		credits = 99
	}

	enum bossblockers
	{
		darkeaterStage1 = 1,
		bugspider = 2,
		flowey = 3,
		kingstalker = 4,
		box = 5,
		turtle = 20,
		gorilla = 21,
		darklord = 22,
		robospider = 66,
		xga = 90,
		bigsnail = 91,
		
		MSbugspider = 23,
		MSflowey = 24,
		MSkingstalker = 25,
		MSbox = 26,
		MSturtle = 27,
		MSgorilla = 28,
		MSdarklord = 29,
		MSrobospider = 30,
		MSxga = 31,
		MSbigsnail = 32,
		
		xga2 = 33,
		ceo = 34,
		xga3 = 35
	}

	enum upgrades
	{
		chargeshot = 950,
		spreadshot = 951,
		impactshot = 952,
		reflectshot = 953,
		shieldshot = 954,
		
		dashengine = 955,
		voltengine = 966,
		
		wallscaler = 1,
		xVision = 957,
		heatBalancer = 958,
		hydrodash = 959,
		jetjump = 968,
		instacharge = 970,
		chargebooster2instachargeLimit = 2,
		attractor = 972,
		
		nanoshield = 962,
		invisibility = 963,
		nuclearblast = 964,
		shockwave = 965,
		
		xsaber = 967,
		xswing = 969,
		xwave = 971,
		xdrill = 973
	}
	
	enum bulletDamages
	{
		normal = 1,
		chargeUC = 1,
		chargeC = 20,
		spreadUC = 2,
		spreadC = 25,
		burnUC = 3,
		burnC = 30,
		homingUC = 4,
		homingC = 35,
		shieldUC = 5,
		shieldC = 40
	}
	
	enum itemTotals //unused
	{
		mainsector = 1,
		sector1 = 1,
		sector2 = 1,
		sector3 = 1,
		sector4 = 1,
		temple = 1,
		vaults = 1,
		systemcore = 1,
		mothership = 1
	}
	
	enum specialRedblockerIDs 
	{
		mainsectorBridge = 2,
		mainsectorYellowDoor = 11,
		mainsectorXGA_1_0_plug = 866,
		sector3BOXautohack = 45,
		sector3BOXspikewall = 50,
		sector1FalseWall_1 = 155,
		sector1FalseWall_2 = 160
	}
	
	enum WMdiscovered
	{
		mainsector = 0,
		s1 = 1,
		s2 = 2,
		s3 = 3,
		s4 = 4,
		t = 5,
		v = 6,
		sc = 7,
		ms = 8,
		bridge_mainsector_s1 = 9,
		bridge_mainsector_s2 = 10,
		bridge_mainsector_s3 = 11,
		bridge_mainsector_s4 = 12,
		bridge_mainsector_t = 13,
		bridge_s1_s4 = 14,
		bridge_s2_s3 = 15,
		bridge_s1_t = 16,
		bridge_s2_t = 17,
		bridge_v_sc = 18,
		bridge_sc_ms = 19
	}

}