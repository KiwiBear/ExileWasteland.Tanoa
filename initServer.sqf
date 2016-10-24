/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 96 Vehicles
private _vehicles = [
["Exile_Sign_Armory", [5727.56, 10119.6, 5.55958], [-0.296529, 0.955024, 0], [0, 0, 1], false],
["Exile_Sign_Armory", [13132.4, 11868.6, 9.07686], [-0.519392, -0.854536, 0], [0, 0, 1], false],
["Exile_Sign_Armory", [11659.8, 2773.48, 4.45125], [0.999923, -0.0124119, 0], [0, 0, 1], false],
["Exile_Sign_Armory", [2987.21, 3524.34, 13.4812], [-0.14099, -0.990011, 0], [0, 0, 1], false],
["Exile_Sign_Equipment", [7897.63, 7790.26, 7.03325], [0.977196, -0.21234, 0], [0, 0, 1], false],
["Exile_Sign_Hardware", [7896.33, 7784.3, 7.0348], [0.969443, -0.245315, -0.00115949], [0.00119604, 0, 0.999999], false],
["Exile_Sign_Equipment", [1833.34, 11952, 8.12337], [-0.374654, 0.927165, 0], [0, 0, 1], false],
["Exile_Sign_Hardware", [1839.64, 11949.4, 8.1425], [0.927105, 0.374801, -0.000452526], [0.000488106, 0, 1], false],
["Exile_Sign_Equipment", [12827.9, 4802.86, 5.08017], [0.997562, 0.0697065, 0.00334903], [-0.00336388, 9.56444e-005, 0.999994], false],
["Exile_Sign_Hardware", [12828.5, 4796.2, 5.07922], [0.997567, 0.0697079, -0.000688606], [0.000690285, 0, 1], false],
["Exile_Sign_Equipment", [5457.49, 4047.38, 4.78867], [-0.722406, -0.691469, 0], [0, 0, 1], false],
["Exile_Sign_Hardware", [5457.63, 4054.23, 4.78867], [-0.691682, 0.722203, 0], [0, 0, 1], false],
["Exile_Locker", [3043.82, 11147.3, 9.94121], [-0.986869, -0.161524, 0], [0, 0, 1], true],
["Exile_Locker", [4112.63, 5593.74, 1.8125], [-0.782049, 0.623217, 0], [0, 0, 1], true],
["Exile_Locker", [5919.14, 10502.4, 21.3992], [-0.474236, 0.880398, 0], [0, 0, 1], true],
["Exile_Locker", [7901.87, 7772.34, 5.75295], [0.0187871, 0.999824, 0], [0, 0, 1], true],
["Exile_Locker", [6576.56, 13096.7, 16.8451], [-0.918757, 0.394824, 0], [0, 0, 1], true],
["Exile_Locker", [9511.47, 13587.3, 3.30266], [0.111189, 0.993799, 0], [0, 0, 1], true],
["Exile_Locker", [13245.9, 12000.1, 2.60082], [0.901888, -0.43197, 0], [0, 0, 1], true],
["Exile_Locker", [14350.9, 8747.32, 16.5304], [0.0523117, 0.998631, 0], [0, 0, 1], true],
["Exile_Locker", [10814.9, 6488.82, 4.1775], [-0.91356, -0.406705, 0], [0, 0, 1], true],
["Exile_Locker", [11649.7, 2551, 3.06], [0.00024453, -1, 0], [0, 0, 1], true],
["Exile_Locker", [12836.7, 4796.01, 3.88], [-0.997958, -0.0638703, 0], [0, 0, 1], true],
["Exile_Locker", [5515.69, 4127.57, 3.9615], [0.760793, 0.648995, 0], [0, 0, 1], true],
["Exile_Locker", [2979.88, 3521.09, 12.2933], [0.149657, 0.988657, -0.0126254], [-0.0213272, 0.015994, 0.999645], true],
["Exile_Locker", [1895.46, 7698.45, 19.5064], [0.502744, -0.863574, 0.0385771], [0.023991, 0.0585487, 0.997996], true],
["Exile_Locker", [1811.05, 11943.8, 6.34647], [0.42832, -0.903627, 0], [0, 0, 1], true],
["Exile_Locker", [10944.1, 9869.07, 110.932], [0.99669, -0.0812976, 0], [0, 0, 1], true],
["Exile_Locker", [9458.26, 3990.32, 6.65], [-0.221282, -0.97521, 0], [0, 0, 1], true],
["Exile_Locker", [7268.2, 7006.25, 2.82338], [0.207912, -0.978148, 0], [0, 0, 1], true],
["Exile_Sign_WasteDump", [2316.92, 6336.84, 14.5491], [0.43105, 0.902328, 0], [0, 0, 1], false],
["Exile_Sign_WasteDump", [3889.89, 12591.2, 12.766], [-0.296724, -0.954963, 0], [0, 0, 1], false],
["Exile_Sign_WasteDump", [11258.5, 5404.64, 3.09722], [-0.201134, 0.979564, 0], [0, 0, 1], false],
["Exile_Sign_WasteDump", [14615.7, 11003.3, 16.7159], [-0.294823, 0.955552, 0], [0, 0, 1], false],
["Exile_Sign_Aircraft", [7269.31, 7005.88, 3.84475], [-0.201682, 0.979451, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [7272.75, 7003.99, 3.84475], [0.981715, 0.190356, 0], [0, 0, 1], false],
["Exile_Sign_VehicleCustoms", [11676.4, 2246.5, 6.03592], [-0.884944, -0.465698, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [11678.4, 2242.93, 6.03411], [-0.884944, -0.465698, 0], [0, 0, 1], false],
["Exile_Sign_VehicleCustoms", [5336.78, 4276.48, 5.00426], [-0.925502, 0.378743, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [5338.39, 4280.63, 5.00957], [-0.936524, 0.350604, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations", [2980.39, 3530.51, 13.5832], [-0.985156, 0.17166, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations", [13127.8, 11871.4, 9.08005], [-0.541679, -0.840586, 0], [0, 0, 1], false],
["Exile_Locker", [2245.4, 13184.7, 13.1366], [-0.850309, 0.526284, 0], [0, 0, 1], true],
["Exile_Sign_VehicleCustoms", [2374.72, 13315, 14.3781], [-0.587463, 0.809251, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [2371.2, 13312.4, 14.3588], [-0.60791, 0.794006, 0], [0, 0, 1], false],
["Exile_Sign_Office", [9348.87, 4129.11, 7.98942], [-0.877087, -0.480332, 0], [0, 0, 1], false],
["Exile_Sign_Office", [1012.2, 7759.56, 5.52292], [-0.780678, 0.624933, 0], [0, 0, 1], false],
["Exile_Sign_Office", [12862.8, 7450.81, 6.37001], [-0.636691, 0.771119, 0], [0, 0, 1], false],
["Exile_Sign_WasteDump", [4295.66, 8448.27, 4.72193], [0.999999, -0.00172142, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations", [11656, 2769.42, 4.11337], [0.0161759, -0.999869, 0], [0, 0, 1], false],
["Exile_Sign_Aircraft", [11727.5, 13087, 8.03628], [0.958653, -0.284577, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [11726.1, 13082.7, 8.03832], [0.954083, -0.299541, 0], [0, 0, 1], false],
["Exile_Sign_VehicleCustoms", [10085.9, 11743.7, 411.059], [-0.0369666, -0.999317, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [10090.2, 11743.5, 411.059], [-0.0369666, -0.999317, 0], [0, 0, 1], false],
["Land_Warehouse_03_F", [2377.32, 13310.4, 15.6071], [-0.598101, 0.801421, 0], [0, 0, 1], true],
["Exile_Sign_Vehicles", [5164.99, 8655.9, 4.75039], [0.999848, -0.0174524, 0], [0, 0, 1], false],
["Exile_Sign_VehicleCustoms", [5164.83, 8651.61, 4.75201], [0.999664, -0.0259286, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [8867.42, 3594.32, 6.45851], [-0.652171, -0.758072, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [2248.35, 8602.31, 2.31535], [-0.0320959, 0.999485, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [4190.73, 11704.3, 3.46731], [0.791906, 0.610643, 0], [0, 0, 1], false],
["Exile_Locker", [9946.32, 11788.2, 409.965], [0.0561788, 0.998421, 0], [0, 0, 1], true],
["Exile_Sign_Equipment", [14386.6, 8877.64, 10.2469], [0.997562, 0.0697065, 0.00334903], [-0.00336388, 9.56444e-005, 0.999994], false],
["Exile_Sign_Hardware", [14382.5, 8869.69, 9.9746], [0.103262, -0.994654, 0], [0, 0, 1], false],
["Land_GuardHouse_01_F", [7271.02, 7001.23, 3.81112], [0.200993, -0.979593, 0], [0, 0, 1], true],
["Exile_Locker", [11909.3, 2894.1, 4.97093], [-0.818504, 0.5745, 0], [0, 0, 1], true],
["Exile_Sign_Aircraft", [11908.3, 2893.62, 5.98492], [0.814836, -0.579691, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [11904.5, 2892.66, 6.0639], [-0.589227, -0.807968, 0], [0, 0, 1], false],
["Land_GuardHouse_01_F", [11903.8, 2895.85, 6.13447], [-0.81442, 0.580276, 0], [0, 0, 1], true],
["Exile_Locker", [1840.86, 3475.57, 13.3823], [0.954907, 0.296906, 0], [0, 0, 1], true],
["Exile_Sign_Aircraft", [1841.13, 3476.71, 13.9657], [-0.957045, -0.28994, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [1842.7, 3480.31, 13.9875], [-0.278876, 0.960327, 0], [0, 0, 1], false],
["Land_GuardHouse_01_F", [1845.6, 3478.84, 14.2103], [0.957244, 0.289282, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [1873.57, 3447.56, 12.95], [0.962668, 0.270684, 0], [0, 0, 1], true],
["Exile_Locker", [1851.13, 12961.8, 13.6069], [-0.774912, -0.632069, 0], [0, 0, 1], true],
["Exile_Sign_Aircraft", [1851.31, 12960.7, 14.4911], [0.778919, 0.627125, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [1851.2, 12956.8, 14.6458], [0.618086, -0.78611, 0], [0, 0, 1], false],
["Land_GuardHouse_01_F", [1847.96, 12957, 14.7651], [-0.77936, -0.626576, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [1833.02, 12991.2, 13.45], [0.781237, 0.624234, 0], [0, 0, 1], true],
["Exile_Locker", [11532.7, 13221.9, 7.25003], [-0.962442, 0.271489, 0], [0, 0, 1], true],
["Exile_Sign_Aircraft", [11531.9, 13221.1, 8.29108], [0.960699, -0.277591, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [11528.6, 13218.9, 8.29108], [-0.288736, -0.957409, 0], [0, 0, 1], false],
["Land_GuardHouse_01_F", [11527, 13221.7, 8.40112], [-0.960498, 0.278287, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [11500.8, 13269.9, 6.95], [0.958278, -0.285839, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [7229.63, 6973.75, 2.66], [-0.193738, 0.981053, 0], [0, 0, 1], true],
["Exile_Sign_Boat", [5001.85, 2589.81, 13.0094], [-0.096707, -0.995313, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [13214.7, 7497.2, 4.20517], [-0.116049, -0.993244, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [8502.65, 13774.4, 7.36871], [-0.481117, -0.876656, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [5400.98, 7572.99, 2.11454], [-0.502071, 0.864826, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations", [5732.89, 10116.6, 5.55964], [0.951188, 0.308612, 0], [0, 0, 1], false],
["Exile_Sign_Equipment", [5779.46, 11251.1, 4.1782], [-0.823849, 0.5668, 0.00333906], [0.00256568, -0.0021618, 0.999994], false],
["Exile_Sign_Hardware", [5788.4, 11244.9, 4.1782], [0.818872, -0.573977, 0], [0, 0, 1], false],
["Exile_Locker", [8507.06, 12429.7, 169.612], [0.150345, -0.988634, -0.000127152], [0.000845734, 0, 1], true],
["Exile_Sign_Office", [6485.56, 12924.1, 4.13911], [0.697054, -0.717018, 0], [0, 0, 1], false],
["Exile_Locker", [8864.64, 10185.6, 19.1078], [0.886475, -0.462772, -0.00206213], [0.00190288, -0.000810924, 0.999998], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 97 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [7256.11, 7008.53, 3.42641], [-0.987688, -0.156435, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7261.9, 7010.23, 3.42341], [-0.156434, 0.987688, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7270.05, 7011.88, 3.42341], [-0.156434, 0.987688, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [7276.8, 7013.19, 3.42641], [-0.156434, 0.987688, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7278.4, 7007.52, 3.42341], [0.987688, 0.156434, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7280.12, 6999.41, 3.41612], [0.987674, 0.156434, -0.00526097], [0.00532655, 0, 0.999986]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7281.64, 6991.34, 3.41444], [0.987674, 0.15642, -0.00567582], [0.00532655, 0.00265201, 0.999982]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7283.74, 6980.74, 3.42341], [0.987688, 0.156434, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7285.33, 6972.66, 3.42341], [0.987688, 0.156434, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [7286.5, 6965.79, 3.42574], [0.987685, 0.156434, -0.00261934], [0.00265199, 0, 0.999996]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7280.72, 6964.08, 3.42341], [0.156434, -0.987688, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7272.83, 6962.61, 3.42341], [0.156434, -0.987688, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [7266.08, 6961.29, 3.42641], [0.156434, -0.987688, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7264.48, 6966.96, 3.42341], [-0.987688, -0.156435, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7259.13, 6993.74, 3.42341], [-0.987688, -0.156435, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [7257.54, 7001.82, 3.42341], [-0.987688, -0.156435, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11919.7, 2900.67, 5.6345], [0.616634, 0.787243, -0.00328458], [0.00532655, 0, 0.999986]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11916.7, 2895.48, 5.64789], [0.787312, -0.616541, -0.00419371], [0.00532655, 0, 0.999986]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11911.8, 2888.72, 5.67892], [0.787291, -0.616549, -0.00629337], [0.00799344, 0, 0.999968]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11907.8, 2883.17, 5.71874], [0.787338, -0.61644, -0.0100315], [0.0106641, -0.00265184, 0.99994]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11902.7, 2886.23, 5.79256], [-0.616606, -0.787154, 0.0136147], [0.0186626, 0.00267396, 0.999822]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11895.9, 2890.99, 5.94523], [-0.616387, -0.787013, 0.0260216], [0.031983, 0.0079968, 0.999456]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11889.3, 2895.87, 6.10015], [-0.61613, -0.785709, 0.0551847], [0.0452853, 0.03461, 0.998374]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11880.6, 2902.19, 6.20659], [-0.616396, -0.785906, 0.0490777], [0.031983, 0.0372872, 0.998793]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11873.9, 2907.03, 6.16405], [-0.616523, -0.78572, 0.0504313], [0.0239934, 0.0452738, 0.998686]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11868.4, 2911.26, 6.08189], [-0.616624, -0.786173, 0.0413209], [0.0159975, 0.0399634, 0.999073]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11871.4, 2916.45, 5.86717], [-0.787292, 0.616521, -0.00849454], [0.00800059, 0.0239905, 0.99968]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11876.2, 2922.9, 5.7159], [-0.787313, 0.616538, -0.00448711], [0.00265199, 0.010664, 0.99994]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11880.3, 2928.47, 5.65799], [-0.787313, 0.616548, -0.00284507], [0.00265199, 0.00800087, 0.999964]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11885.3, 2925.4, 5.66715], [0.616635, 0.787228, -0.00582857], [0.00265199, 0.00532648, 0.999982]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11907.5, 2909.44, 5.67849], [0.61663, 0.787235, -0.00537236], [0.00532655, 0.00265201, 0.999982]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11914.1, 2904.61, 5.65581], [0.616648, 0.787221, -0.00537241], [0.00532655, 0.00265201, 0.999982]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1839.69, 3463.33, 13.7192], [0.248668, -0.968589, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1837.47, 3468.93, 13.7434], [-0.968643, -0.248458, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1835.09, 3476.9, 13.7434], [-0.967001, -0.254771, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1833.17, 3483.5, 13.7464], [-0.966645, -0.256121, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1838.67, 3485.61, 13.7855], [-0.248236, 0.9687, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1846.59, 3488.06, 13.9203], [-0.245632, 0.969363, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1854.49, 3490.31, 14.3015], [-0.245638, 0.969361, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1864.85, 3493.37, 14.564], [-0.245638, 0.969361, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1872.76, 3495.68, 14.574], [-0.245638, 0.969361, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1879.49, 3497.48, 14.3526], [-0.245638, 0.969361, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1881.72, 3491.88, 13.7376], [0.969345, 0.245558, 0.00843765], [-0.0053265, -0.0133311, 0.999897]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1883.9, 3484.15, 13.7142], [0.969359, 0.245649, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1885.83, 3477.55, 13.7141], [0.969356, 0.245641, -0.00322219], [0.00265199, 0.00265203, 0.999993]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1880.33, 3475.44, 13.7134], [0.245643, -0.96936, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1854.14, 3467.68, 13.7119], [0.245567, -0.969378, 0.0019196], [0.00265199, 0.00265203, 0.999993]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1846.24, 3465.36, 14.0633], [0.249089, -0.968481, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1847.64, 12973.6, 14.2164], [-0.590648, 0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1851.8, 12969.3, 14.2154], [0.80693, 0.590648, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1856.98, 12962.8, 14.2154], [0.80693, 0.590648, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1861.24, 12957.4, 14.2164], [0.80693, 0.590648, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1856.93, 12953.3, 14.2154], [0.590647, -0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1850.5, 12948.1, 14.2134], [0.590647, -0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1844.02, 12943.1, 14.2134], [0.590647, -0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1835.55, 12936.4, 14.2134], [0.590647, -0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1829.09, 12931.3, 14.2134], [0.590647, -0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1823.51, 12927.1, 14.2164], [0.590647, -0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1819.35, 12931.4, 14.2134], [-0.80693, -0.590647, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1814.43, 12937.8, 14.2134], [-0.80693, -0.590647, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [1810.18, 12943.2, 14.2201], [-0.80693, -0.590647, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1814.49, 12947.2, 14.2147], [-0.590648, 0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1835.86, 12964.2, 14.2141], [-0.590648, 0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [1842.32, 12969.3, 14.2134], [-0.590648, 0.80693, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11540.4, 13231.5, 7.76497], [0.32045, 0.941859, -0.101066], [0.0797443, 0.0794907, 0.993641]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11539.2, 13225.6, 7.97791], [0.943904, -0.321469, -0.0755124], [0.0797452, 0, 0.996815]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11536.9, 13217.6, 7.92291], [0.94692, -0.320445, -0.0256356], [0, -0.0797452, 0.996815]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11534.9, 13211, 7.71643], [0.94692, -0.321469, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11529.1, 13212.3, 7.71343], [-0.321538, -0.946897, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11521.1, 13214.5, 7.71343], [-0.321538, -0.946897, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11513.3, 13216.9, 7.71343], [-0.321538, -0.946897, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11502.9, 13220, 7.71343], [-0.321538, -0.946897, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11495, 13222.4, 7.71341], [-0.321378, -0.946951, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11488.4, 13224.5, 7.71641], [-0.321538, -0.946897, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11489.6, 13230.4, 7.74768], [-0.945247, 0.325318, 0.0260254], [0, -0.0797452, 0.996815]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11492, 13238.1, 8.01341], [-0.946914, 0.321486, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_corner_green_f.p3d", [11493.9, 13244.7, 7.73614], [-0.946507, 0.322676, 0.00204004], [0.0293221, 0.0797111, 0.996387]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11499.7, 13243.5, 7.83623], [0.321474, 0.943903, -0.0755124], [0, 0.0797454, 0.996815]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11525.9, 13235.7, 7.71341], [0.321474, 0.946919, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\hbarrier_01_wall_6_green_f.p3d", [11533.8, 13233.4, 7.74402], [0.321474, 0.943903, -0.0755124], [0, 0.0797454, 0.996815]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [11652.3, 2771.7, 3.82463], [-0.999146, -0.0413138, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [11652.4, 2769.93, 3.82463], [-0.999146, -0.0413138, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [11652.3, 2772.04, 4.59079], [0.999038, 0.0438607, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [11652.3, 2770.4, 4.59307], [0.999038, 0.0438607, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [11652.3, 2768.86, 4.59641], [0.999038, 0.0438607, 0], [0, 0, 1]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [11658.6, 2770.7, 4.23565], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [2987.7, 3530.93, 12.9492], [0.111588, 0.993755, -7.70275e-005], [0.000690285, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [2987.68, 3530.98, 13.76], [-0.106609, -0.994301, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [2982.33, 3531.75, 12.9534], [0.111588, 0.993755, -7.70275e-005], [0.000690285, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [2982.31, 3531.81, 13.7578], [-0.106609, -0.994301, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [5731.65, 10112.8, 4.93202], [0.335105, -0.942181, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [5733.33, 10113.3, 4.9323], [0.335105, -0.942181, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [5731.5, 10112.8, 5.6981], [-0.337495, 0.941327, 0], [0, 0, 1]],
["a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d", [5733.2, 10113.3, 5.70077], [-0.337495, 0.941327, 0], [0, 0, 1]],
["a3\structures_f_epa\mil\scrapyard\pallet_milboxes_f.p3d", [5730.67, 10119.2, 4.96813], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\mil\scrapyard\pallet_milboxes_f.p3d", [13131.1, 11870.5, 8.48679], [0.815387, -0.578915, -0.00056285], [0.000690285, 0, 1]],
["a3\supplies_f_heli\cargonets\cargonet_01_box_f.p3d", [13126.4, 11874.3, 8.67487], [0.87237, -0.488845, -0.000602184], [0.000690285, 0, 1]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;