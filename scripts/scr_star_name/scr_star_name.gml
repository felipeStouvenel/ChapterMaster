function scr_star_name() {
	var planet_names=[
		"Accatran","Acteron","Addolorata","Adolphian","Aeschylrai","Agathon","Airephal",
		"Alaric","Albion","Alteraan","Amedeo","Amerigo","Ammonai","Amon","Anark Zeta",
		"Ancreon","Ando","Angelus","Anphelion","Anticanis","Antioch","Anvilus","Ao-Chin",
		"Apollonia","Aquasulis","Arkhamis","Armatura","Arradin","Artaxerxes","Asherah",
		"Astrakhan","Atar-Median","Atep","Athelaq","Atlanta","Atlas","Atopiana","Au'taal",
		"Avalon","Avitohol","Azeroth","Azghrax","Badab","Balanor","Balecaster","Barathred",
		"Barbarus","Barvaria","Batoria","Baxu","Belacane","Belahaam","Belden","Belisimar",
		"Bella","Bellephon","Beroghast","Betechton","Betelgeuse","Biik","Black Creek",
		"Blasted Heath","Bodt","Bojana","Bolanion","Boneyard","Bongistan","Boonhaven","Borealum",
		"Borisia","Borsis","Botmur","Boucherin","Brabastis","Brassica","Bretonia","Bucephalon",
		"Cabulis","Califor","Callistus","Canemara","Canis Canem","Canukistan","Canum","Capilene","Carinae",
		"Carshim","Carthage","Castellax","Cathox","Cegorachi","Cerastus","Ceti","Chaeros","Chanicia","Chemos",
		"Chimaera","Chinchare","Chorta","Circe","Climaxus","Cociaminus","Constantinopolis","Contqual","Corinthe",
		"Coriolanthe","Corkanium","Corrinos","Corvi","Creedia","Crematis","Crucis","Cytheria","Dagobah","Dagon",
		"Damnos","Davin","Dead Cell","Delphini","Deneb","Denova","Desperation","Deus","Devilus","Diherim","Dimmamak",
		"Dirge","Dolsene","Doranno","Dornari","Dornus Noangulus","Draconis","Drathorian"
		,"Dreadhaven","Dregeddon","Drisinta","Dymphna","Dynathi","Edelweiss","Elyon","Enceladus",
		"Endiku","Endymion","Eorcshia","Ephrath","Erasmus","Eskarne","Espandor","Euphrate","Fargotia",
		"Fastoon","Felcarn","Felisian","Fergax","Fistiox","Flint","Fornax","Forrax","Forsarr","Frankonia",
		"Frengold","Freya","Gaima","Galathamar","Gangrenous Rot","Ganymethia","Gardinaal","Garevo","Gehenna",
		"Gelmito","Ghenna","Ghis","Ghorstangrad","Ghourra","Gone","Gonj Mik","Gorgonia","Gorro","Gotenland",
		"Graia","Grave","Grenada","Groznyj Grad","Guderian","Gyratio","Haboga","Hadriath","Haeraphya","Hagia",
		"Haletho","Haliphax","Hamilcar","Hammerfront","Hammeront","Haringvleet","Hasta","Hataria","Heilog's Star",
		"Helen","Hellsiris","Heloeum","Hemera","Herodor","Heskeloth","Hexxo","Hollonan","Honourum","Hordi","Huldwynia","Husania",
		"Hydraphur","Hynnes","Hyperion","Hypnoth","Iapetus","Ichar","Ilbira","Illan","Iman","Impetus",
		"Incaladion","Incaldion","Incanda","Indra-sul","Intarme","Inuit","Inwit","Iocanthus","Iolac","Ironholm",
		"Isstvan","Istanpulia","Jaego","Jagga","Jerulas","Jhanna","Jjojos","Jomungandr","Josian","Jotunheim",
		"Jubal","Judean","Jursa","K'phra","Kaelas","Kallas","Kartheope","Kastorel","Kerondys","Khardeph",
		"Khorinis","Kim Jong","Klimt","Knowhere","Kolossi","Konor","Korabaellan","Koralkal","Korolis","Koros",
		"Korvaran","Kraeg","Krastellan","Kronos","Krumpville","Ksatella","Kuhrwax","Kup Teraz","Kurimizon","Laconia",
		"Lalam","Landersund","Laurentix","Leporis","Lesser Mantelius","Leto","Libertania","Lohab","Loikik","Loki",
		"Lordran","Lorvarian","Lowam","Lunaphage","Lustania","Luxor","Lycaeum","Lycosidae","Lyncis","Lysades","Lytir",
		"Lyubov","M'khan","M'khand","Macharia","Maesa","Magdelene","Magdellan","Maghda","Mahr'douk","Majorial","Malodrax",
		"Mandragoran","Manticore","Mard","Masali","Mathog","Mattiax","Mehitabel","Memlok","Menazoid","Menopetra","Menthu",
		"Metalica","Minerva","Minisotira","Miral","Modgud","Molech","Moloch","Mordan","Mordax","Mordax Prime","Mordian","Moritia Prime",
		"Morphua","Morrowynd","Mortant","Mortarius","Muoskaerl","Muric","Murom","Naeraea","Naogeddon","Natsigan","Nefalia","Neverlight",
		"New Aiur","New Carthage","New Petrostock","New Stalinvast","New Tanith","New Tarant","New Thasia","New Varsavus","New Veracia",
		"Nexaris","Nicaea","Nidus Diptera","Niflheim","Nihilas","Nirn","Noctae","Nostramo","Nova Terra",
		"Nuceria","Obermid","Obsidia","Ogrolla","Olympia","Onian","Optera","Oranos","Orax","Orestes","Ornsworld",
		"Orwell","Ostrola","Outer Heaven","Oynyena","Pachuco","Pandora","Pandorax","Pannonia","Paramar","Parmenio",
		"Parthenope","Pavonis","Pearia","Penumbra","Peripheris","Persya","Perun","Pervigilium","Petrostock","Phall",
		"Pintax","Piscium","Pixor","Pocki","Polmuss","Polonus","Pontus","Portenus","Praste","Presarius","Primordial Frost",
		"Protasia","Protheus","Providence","Pugio","Purgatrex","Pythos","Qetesh","Quaddis","Quarth","Quintaine","Quintarn",
		"Quintox","Quintus Superior","Radnar","Raeden","Raiken","Red Reach","Regina","Reno","Resheph","Retsam Retpahc","Roma",
		"Rosangela","Roserias","Rostern","Rovno","Rybiern","Sabatine","Sabbatorus","Sapiencia","Sarcosa","Sarum","Scarric","Scarus",
		"Schindelgheist","Scorched Citadel","Seadelant","Selene","Serenity","Sextanis","Shadow Hearth","Shadrac","Sheol","Sigilare",
		"Signus Prime","Sinophia","Siriua","Skgorria","Skonii","Skuse","Skyren","Soachton","Sodden Hollow","Solania","Solitude",
		"Solstice","Solveig","Somonor","Sondheim","Sotha","Stalinvast","Starrym","Stryken","Stygia","Stygies","Sulis","Summaminus",
		"Suphera","Taliscant","Tallarax","Tanhaus","Tarant","Taros","Tartarus","Tarturga","Tatarstia","Telenor","Tephaine","Terak","Thanatar",
		"Thandros","Thasia","Thea","Theboze","Theodorichshaven","Tiamat","Tibrias","Tilfis","Tintangiel","Toledo",
		"Tolkhan","Treconandal","Tungusta","Tunusk","Turanshush","Tuskus","Tycor","Tyrannis","Ulfa","Ullanor","Ullatarin",
		"Urdesh","Uristes","Urmox","Urphir","Ursidhe-Ka","Urslavik","Vaelis","Vagorn","Vall Major","Valyria","Vandiria",
		"Vardenfeld","Varestus","Varsavus","Vasalius","Vaxhallia","Velden","Veles","Venady","Venator","Veneria","Veracia",
		"Verghast","Vergilian","Veritas","Vespae","Vidi","Vieglehaven","Vigilatum","Vilhadran","Viridios","Volistad",
		"Voltantis","Voltemand","Voltoris","Vordrast","Vostroya","Vraks","Vyndyalii","Wardian","Whitefall","Woden","Xagem",
		"Xatill","Xi-He","Xu Xiu","Yaogeddon","Yavin","Yaymar","Ygetheddon","Yhette","Yithic","Ymgarl","Yoggoth","Yogneek",
		"Zalia","Zaphonia","Zaporozhye","Zathatethus","Zeist","Zentra","Zindleschlitz","Zinerra","Zorastra","Zuerlais"]

	var ok=0,num="",rand=irandom(array_length(planet_names)-1);

	for(var i=0; i<100; i++){
	    if (ok==0){
			num=planet_names[rand];

	        if (instance_exists(obj_controller)){
				if (obj_controller.diplomacy=6){
					return(num);
					exit;
				}
			}
        
	        if (instance_exists(obj_controller)){
				if (string_count(num,obj_controller.star_names)==0){
					obj_controller.star_names+=num;
					name=num;
					ok=1;
				}
			}
	        if (!instance_exists(obj_controller)) then return(num);
	        if (num=="") then ok=0;
	    }
	}
}
