//Enigma Revive
[] execVM "Custom\EnigmaRevive\init.sqf";

// Zupa Capture Points
[] execVM "addons\zupa\zcp.sqf";

//R3F Logistics
execVM "R3F_LOG\init.sqf";

if (isServer) then {
ETG_Cargo_Drop_Mission = 0;
_nul = execVM "\scripts\ETG_HeliCrashAndDropScript.sqf";
};