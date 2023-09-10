function scr_company_view(argument0) {

    var mans, onceh, company, bad, squads, squad_typ, squad_loc, squad_members;
    gogogo = 0;
    mans = 0;
    vehicles = 0;
    last_man = 0;
    last_vehicle = 0;
    bad = 0;
    squads = 0;
    squad_typ = "";
    squad_loc = 0;
    squad_members = 0;

    // v: check number
    // mans: number of mans that a hit has gotten
    // Calculates the temporary variables to be displayed as marines in the individual company screens

    for (var i = 1; i <= 499; i++) {
        man[i] = "";
        ide[i] = 0;
        man_sel[i] = 0;
        ma_lid[i] = 0;
        ma_wid[i] = 0;
        ma_bio[i] = 0;
        ma_race[i] = 0;
        ma_loc[i] = "";
        ma_name[i] = "";
        ma_role[i] = "";
        ma_gear[i] = "";
        ma_mobi[i] = "";
        ma_wep1[i] = "";
        ma_wep2[i] = "";
        ma_armour[i] = "";
        ma_health[i] = 100;
        ma_chaos[i] = 0;
        ma_exp[i] = 0;
        ma_promote[i] = 0;
        ma_god[i] = 0;
    }

    for (var i = 0; i < 20; i++) {
        sel_uni[i] = "";
        sel_veh[i] = "";
    }

    sel_uni[1] = "Command";

    // This sets up the mans, but not the vehicles
    for (var v = 1; v <= 499; v++) {
        bad = 0;

        if (argument0 >= 0) and(argument0 <= 10) {
            company = argument0;
            if (obj_ini.name[company, v] != "") {
                // if (obj_ini.god[company,v]>=10) then bad=1;
                if (obj_ini.lid[company, v] > 0) {
                    var ham = obj_ini.lid[company, v];
                    if (obj_ini.ship_location[ham] = "Lost") then bad = 1;
                }
                if (bad = 1) then man[v] = "hide";

                if (bad = 0) {
                    mans += 1;
                    man[v] = "man";
                    ide[v] = v;
                    ma_race[v] = obj_ini.race[company, v];
                    ma_loc[v] = obj_ini.loc[company, v];
                    ma_name[v] = obj_ini.name[company, v];
                    ma_role[v] = obj_ini.role[company, v];
                    ma_wep1[v] = obj_ini.wep1[company, v];
                    ma_wep2[v] = obj_ini.wep2[company, v];
                    ma_armour[v] = obj_ini.armour[company, v];
                    ma_gear[v] = obj_ini.gear[company, v];
                    ma_health[v] = obj_ini.hp[company, v];
                    ma_exp[v] = obj_ini.experience[company, v];
                    ma_lid[v] = obj_ini.lid[company, v];
                    ma_wid[v] = obj_ini.wid[company, v];
                    ma_god[v] = obj_ini.god[company, v];
                    ma_bio[v] = obj_ini.bio[company, v];
                    ma_mobi[v] = obj_ini.mobi[company, v];
                    if (ma_lid[v] > 0) {
                        ma_loc[v] = obj_ini.ship[ma_lid[v]];
                        if (obj_ini.ship_location[ma_lid[v]] = "Lost") then ma_loc[v] = "Lost";
                    }


                    // Select All Setup
                    var go = 0,
                        op = 0;

                    if (man[v] = "man") and(ma_role[v] != obj_ini.role[100, 14]) and(ma_role[v] != obj_ini.role[100, 15])
                    and(ma_role[v] != obj_ini.role[100, 16]) and(ma_role[v] != obj_ini.role[100, 17])
                    and(ma_role[v] != obj_ini.role[100, 5]) and(ma_role[v] != "Standard Bearer")
                    and(ma_role[v] != "Company Champion") {
                        for (var j = 0; j < 20; j++) {
                            if (sel_uni[j] == "" && op == 0) then op = j;
                            if (sel_uni[j] == ma_role[v]) then go = 1;
                        }
                        if (go = 0) then sel_uni[op] = ma_role[v];
                    }

                    go = 0;
                    op = 0;

                    if (man[v] = "vehicle") {
                        for (var j = 0; j < 20; j++) {
                            if (sel_veh[j] = "") and(op = 0) then op = j;
                            if (sel_veh[j] = ma_role[v]) then go = 1;
                        }
                        if (go = 0) then sel_veh[op] = ma_role[v];
                    }
                    // Squad setup
                    // 137 ;

                    // Should have this be only ran for MAN, somehow run it a second time for VEHICLE
                    if (squads > 0) {
                        var n = 1;
                        if (squad_typ = obj_ini.role[100, 5]) then n = 0;
                        if (squad_typ = obj_ini.role[100, 15]) then n = 0;
                        if (squad_typ = obj_ini.role[100, 14]) then n = 0;
                        if (squad_typ = obj_ini.role[100, 17]) then n = 0;
                        if (squad_typ = obj_ini.role[100, 16]) then n = 0;
                        if (squad_typ = "Standard Bearer") then n = 0;
                        if (squad_typ = "Company Champion") then n = 0;
                        if (squad_typ = "Codiciery") then n = 0;
                        if (squad_typ = "Lexicanum") then n = 0;
                        // if (squad_typ=obj_ini.role[100,6]) then n=0;

                        if (squad_typ = "Master of Sanctity") then n = 1;
                        if (squad_typ = "Chief " + string(obj_ini.role[100, 17])) then n += 1;
                        if (squad_typ = "Forge Master") then n += 1;
                        if (squad_typ = "Chapter Master") then n += 1;
                        if (squad_typ = "Master of the Apothecarion") then n += 1;
                        if (squad_typ = obj_ini.role[100, 6]) and(squad_typ != ma_role[v]) and(squad_typ != "Venerable " + string(ma_role[v])) then n = 2;
                        if (squad_typ = obj_ini.role[100, 6]) and(ma_role[v] = obj_ini.role[100, 6]) then n = 0;
                        if (squad_typ = obj_ini.role[100, 6]) and(ma_role[v] = "Venerable " + string(obj_ini.role[100, 6])) then n = 0;
                        if (squad_typ = "Venerable " + string(obj_ini.role[100, 6])) and(ma_role[v] = obj_ini.role[100, 6]) then n = 0;

                        if (squad_typ = ma_role[v]) then n = 0;
                        if (squad_members + 1 > 10) then n = 1;
                        if ((ma_wid[v] + (ma_lid[v] / 100)) != squad_loc) then n = 1;

                        if (n = 0) {
                            squad_members += 1;
                            squad_typ = ma_role[v];
                            squad[v] = squads;
                        } else if (n = 1) {
                            squads += 1;
                            squad_members = 1;
                            squad_typ = ma_role[v];
                            squad[v] = squads;
                            squad_loc = ma_wid[v] + (ma_lid[v] / 100);
                        } else if (n = 2) then squad[v] = 0;
                    }

                    if (squads = 0) {
                        squads += 1;
                        squad_members = 1;
                        squad_typ = ma_role[v];
                        squad[v] = squads;
                        squad_loc = ma_wid[v] + (ma_lid[v] / 100);
                    }

                    // Right here is where the promotion check will go
                    // If EXP is enough for that company then ma_promote[i]=1

                    if (ma_role[v] = obj_ini.role[100, 3]) or(ma_role[v] = obj_ini.role[100, 4]) {
                        if (company = 1) and(ma_exp[v] >= 300) then ma_promote[v] = 1;
                        if (ma_health[v] <= 10) then ma_promote[v] = 10;
                    }

                    if (ma_role[v] = obj_ini.role[100, 6]) and(ma_exp[v] >= 400) then ma_promote[v] = 1;

                    if (ma_role[v] = obj_ini.role[100, 15]) or(ma_role[v] = obj_ini.role[100, 14]) then ma_promote[v] = 1;
                    if (ma_role[v] = obj_ini.role[100, 16]) then ma_promote[v] = 1;

                    if (ma_role[v] = obj_ini.role[100, 8]) or(ma_role[v] = obj_ini.role[100, 12]) or(ma_role[v] = obj_ini.role[100, 10]) or(ma_role[v] = obj_ini.role[100, 9]) {

                        if (company = 10) and(ma_exp[v] >= 40) then ma_promote[v] = 1;
                        if (company = 9) and(ma_exp[v] >= 50) then ma_promote[v] = 1;
                        if (company = 8) and(ma_exp[v] >= 60) then ma_promote[v] = 1;
                        if (company = 7) and(ma_exp[v] >= 70) then ma_promote[v] = 1;
                        if (company = 6) and(ma_exp[v] >= 80) then ma_promote[v] = 1;
                        if (company = 5) and(ma_exp[v] >= 100) then ma_promote[v] = 1;
                        if (company = 4) and(ma_exp[v] >= 110) then ma_promote[v] = 1;
                        if (company = 3) and(ma_exp[v] >= 120) then ma_promote[v] = 1;
                        if (company = 2) and(ma_exp[v] >= 150) then ma_promote[v] = 1;



                        if (ma_health[v] <= 10) then ma_promote[v] = 10;
                    }

                    if (ma_role[v] = obj_ini.role[100, 5]) {
                        if (company = 10) and(ma_exp[v] >= 40) then ma_promote[v] = 1;
                        if (company = 9) and(ma_exp[v] >= 50) then ma_promote[v] = 1;
                        if (company = 8) and(ma_exp[v] >= 60) then ma_promote[v] = 1;
                        if (company = 7) and(ma_exp[v] >= 70) then ma_promote[v] = 1;
                        if (company = 6) and(ma_exp[v] >= 80) then ma_promote[v] = 1;
                        if (company = 5) and(ma_exp[v] >= 100) then ma_promote[v] = 1;
                        if (company = 4) and(ma_exp[v] >= 110) then ma_promote[v] = 1;
                        if (company = 3) and(ma_exp[v] >= 120) then ma_promote[v] = 1;
                        if (company = 2) and(ma_exp[v] >= 150) then ma_promote[v] = 1;

                    }

                    if (obj_controller.command_set[2] = 1) and(ma_promote[v] = 0) then ma_promote[v] = 1;
                }
            }

            if (obj_ini.name[company, v + 1] = "") and(obj_ini.name[company, v] != "") and(last_man = 0) and(obj_ini.ship_location[obj_ini.lid[company, v]] != "Lost")
            then last_man = v;
        }
    }


    var v = last_man;
    last_vehicle = 0;

    for (var i = 1; i <= 100; i++) {
        bad = 0;

        if (obj_ini.veh_race[company, i] != 0) {
            if (obj_ini.veh_lid[company, i] > 0) {
                if (obj_ini.ship_location[obj_ini.veh_lid[company, i]] = "Lost") then bad = 1;
            }

            if (bad = 0) {
                v += 1;

                var step = false;
                if (i > 1) {
                    if (ide[v - 1] = i) {
                        step = true;
                        v -= 1;
                    }
                }

                if (step = false) {

                    man[v] = "vehicle";
                    ide[v] = i;
                    last_vehicle += 1;
                    ma_loc[v] = obj_ini.veh_loc[company, i];
                    ma_role[v] = obj_ini.veh_role[company, i];
                    ma_wep1[v] = obj_ini.veh_wep1[company, i];
                    ma_wep2[v] = obj_ini.veh_wep2[company, i];
                    ma_armour[v] = obj_ini.veh_wep3[company, i];
                    ma_gear[v] = obj_ini.veh_upgrade[company, i];
                    ma_mobi[v] = obj_ini.veh_acc[company, i];
                    ma_health[v] = obj_ini.veh_hp[company, i];
                    ma_lid[v] = obj_ini.veh_lid[company, i];
                    ma_wid[v] = obj_ini.veh_wid[company, i];
                    if (ma_lid[v] > 0) {
                        ma_loc[v] = obj_ini.ship[ma_lid[v]];
                        if (obj_ini.ship_location[ma_lid[v]] = "Lost") then ma_loc[v] = "Lost";
                    }
                    // Select All Setup
                    var go = 0,
                        op = 0;
                    if (man[v] = "vehicle") {
                        for (var p = 0; p < 20; p++) {
                            if (sel_veh[p] = "") and(op = 0) then op = p;
                            if (sel_veh[p] = ma_role[v]) then go = 1;
                        }
                        if (go = 0) then sel_veh[op] = ma_role[v];
                    }
                }
            }
        }
    }

    man_current = 1;
    man_max = last_man + last_vehicle + 2;
    if (last_vehicle = 0) and(last_man = 0) then man_max = 0;
    man_see = 38 - 4;
}