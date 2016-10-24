/**
 * ExileServer_object_player_network_createPlayerRequest
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * Modifed by [FPS]kuplion
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_sessionID","_parameters","_requestingPlayer","_spawnLocationMarkerName","_playerUID","_accountData","_bambiPlayer","_cargoType"];
_sessionID = _this select 0;
_parameters = _this select 1;
_requestingPlayer = _sessionID call ExileServer_system_session_getPlayerObject;
try
{
	if (isNull _requestingPlayer) then 
	{
		throw format ["Session %1 requested a bambi character, but doesn't have a player object. Hacker or Monday?", _sessionID];
	};
	_spawnLocationMarkerName = _parameters select 0;
	_playerUID = getPlayerUID _requestingPlayer;
	if(_playerUID isEqualTo "")then
	{
		throw format ["Player: '%1' has no player UID. Arma/Steam sucks!.",name _requestingPlayer];
	};
	_accountData = format["getAccountStats:%1", _playerUID] call ExileServer_system_database_query_selectSingle;
	_bambiPlayer = (createGroup independent) createUnit ["Exile_Unit_Player", [0,0,0], [], 0, "CAN_COLLIDE"];
	removeHeadgear _bambiPlayer;
	
// Custom Loadout Starts Here. Uncomment the lines you want your players to have..
	
	// Clothing
	_bambiPlayer forceAddUniform "U_I_C_Soldier_Para_3_F"; // Black Exile Overalls
	_bambiPlayer addVest "V_Chestrig_blk"; // Change Vest Class Here
	_bambiPlayer addHeadgear "H_Bandanna_khk_hs"; // Change Headgear Class Here
	//_bambiPlayer addGoggles "G_Bandanna_beast"; // Change Goggles Class Here
	
	// Navigation Items
	_bambiPlayer linkItem "Exile_Item_XM8"; // This Puts The XM8 Into The Correct Slot 
	_bambiPlayer linkItem "ItemCompass"; //This Puts The Compass Into The Correct Slot
	_bambiPlayer linkItem "ItemMap"; //This Puts The Map Into The Correct Slot
	_bambiPlayer linkItem "ItemRadio"; //This Puts The Radio Into The Correct Slot
	_bambiPlayer linkItem "NVGoggles"; //This Puts NVGs Into The Correct Slot
	
	// Food and Drink Items
	_bambiPlayer addItem "Exile_Item_PlasticBottleFreshWater"; // Change Drink Class Here
	_bambiPlayer addItem "Exile_Item_Moobar"; // Change Food Class Here
	
	//Add to Vest
	_bambiPlayer addItemToVest "FirstAidKit"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "MiniGrenade"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "Exile_Item_ZipTie"; // Ammo For Weapon Listed Below
	
	// Ammo
	_bambiPlayer addItemToVest "7Rnd_45ACP_1911"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "7Rnd_45ACP_1911"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "7Rnd_45ACP_1911"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "7Rnd_45ACP_1911"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "7Rnd_45ACP_1911"; // Ammo For Weapon Listed Below
	
	// Weapons
	_bambiPlayer addWeapon "Colt1911"; // Weapon
	
	// Weapons Attachments
	_bambiPlayer addHandgunItem "muzzle_snds_L"; // Adds Attachment to Handgun | Change Attachment Class Here
	//_bambiPlayer addPrimaryWeaponItem "optic_AMS_khk"; // Adds Attachment to Primary Weapon | Change Attachment Class Here

	
// Custom Loadout Ends Here. Uncomment the lines you want your players to have..
	
	{
		_cargoType = _x call ExileClient_util_cargo_getType;
		switch (_cargoType) do
		{
			case 1: 	{ _bambiPlayer addItem _x; };
			case 2: 	{ _bambiPlayer addWeaponGlobal _x; };
			case 3: 	{ _bambiPlayer addBackpackGlobal _x; };
			case 4:		{ _bambiPlayer linkItem _x; };
			default 					{ _bambiPlayer addItem _x; };
		};
	}
	forEach getArray(configFile >> "CfgSettings" >> "BambiSettings" >> "loadOut");
	[_sessionID, _requestingPlayer, _spawnLocationMarkerName, _bambiPlayer, _accountData] call ExileServer_object_player_createBambi;
}
catch
{
	_exception call ExileServer_util_log;
};