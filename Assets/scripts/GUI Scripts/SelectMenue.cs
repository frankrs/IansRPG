using UnityEngine;
using System.Collections;

[ExecuteInEditMode]

public class SelectMenue : MonoBehaviour {

	public SelectMenueTab[] tabs;
	public Menu currentMenu;
	public GUISkin skin;
	public PlayerStats playerStats;
	public Layout layout;

	private Inventory inventory;
	private VitalStats vitalStats;

	void Update (){

		layout.w = Screen.width;
		layout.h = Screen.height;

		inventory = playerStats.inventory;
		vitalStats = playerStats.vitalStats;
	}

	void OnGUI () {
		//set skin
		GUI.skin = skin;

		GUILayout.BeginArea(new Rect(layout.w*.0f, layout.h*.0f, layout.w*1f, layout.h*1f), GUI.skin.GetStyle("Window"));
			GUILayout.BeginHorizontal();
			foreach (SelectMenueTab t in tabs){
			if(GUILayout.Button(t.name)){
				currentMenu = t.menu;
				}
			}
			GUILayout.EndHorizontal();
		GUILayout.BeginVertical(GUILayout.ExpandHeight(true));
		// togle your menues bassed on the enum here
		if(currentMenu == Menu.invintory){
			DisplayInventory();
		}
		else if(currentMenu == Menu.stats){
			DisplayStats();
		}
		GUILayout.EndVertical();
		GUILayout.EndArea();
	}











	// theese fuctions have to do with the inventory menu page




	void DisplayInventory(){
		GUILayout.BeginHorizontal();
			GUILayout.BeginVertical();
				GUILayout.Box("Meele Weapons");
				DisplayMeeleItems();
				GUILayout.Box("Range Weapons");
				DisplayRangeItems();
			GUILayout.EndVertical();
			GUILayout.BeginVertical();
				GUILayout.Box("Armour");
				DisplaySuits();
				GUILayout.Box("Helmets");
				DisplayHelmets();
			GUILayout.EndVertical();
			GUILayout.BeginVertical();
				GUILayout.Box("Equiped");
				DisplayEquiped();
				GUILayout.Box("Potions");
				DisplayPotions();
			GUILayout.EndVertical();
		GUILayout.EndHorizontal();
	}
	


	void DisplayMeeleItems(){
		GUILayout.BeginVertical(GUI.skin.GetStyle("Box"));
			layout.mWeaponsScroll = GUILayout.BeginScrollView(layout.mWeaponsScroll);
			foreach (MeeleWeapon m in inventory.meeleWeapons){
				GUILayout.BeginVertical();
					GUILayout.Label(m.Name);
					GUILayout.BeginHorizontal();
						if(GUILayout.Button(m.icon,GUI.skin.GetStyle("ItemButton"))){
							EquipMeele(m);
							}
						GUILayout.Box (m.description);
					GUILayout.EndHorizontal();
				GUILayout.EndVertical();
			}
			GUILayout.EndScrollView();
		GUILayout.EndVertical();
	}


	void DisplayRangeItems(){
		GUILayout.BeginVertical(GUI.skin.GetStyle("Box"));
			layout.rWeaponsScroll = GUILayout.BeginScrollView(layout.rWeaponsScroll);
			foreach (RangeWeapon m in inventory.rangeWapon){
				GUILayout.BeginVertical();
					GUILayout.Label(m.Name);
					GUILayout.BeginHorizontal();
					if(GUILayout.Button(m.icon,GUI.skin.GetStyle("ItemButton"))){
						EquipRange(m);
					}
					GUILayout.Box (m.description);
					GUILayout.EndHorizontal();
				GUILayout.EndVertical();
			}
			GUILayout.EndScrollView();
		GUILayout.EndVertical();
	}


	void DisplaySuits(){
		GUILayout.BeginVertical(GUI.skin.GetStyle("Box"));
		layout.armourScroll = GUILayout.BeginScrollView(layout.armourScroll);
		foreach (Suit m in inventory.suits){
			GUILayout.BeginVertical();
			GUILayout.Label(m.Name);
				GUILayout.BeginHorizontal();
					if(GUILayout.Button(m.icon,GUI.skin.GetStyle("ItemButton"))){
						EquipSuit(m);
						}
					GUILayout.Box (m.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
		}
		GUILayout.EndScrollView();
		GUILayout.EndVertical();
	}
	
	
	void DisplayHelmets(){
		GUILayout.BeginVertical(GUI.skin.GetStyle("Box"));
		layout.helmetScroll = GUILayout.BeginScrollView(layout.helmetScroll);
		foreach (Helmet m in inventory.helmets){
			GUILayout.BeginVertical();
				GUILayout.Label(m.Name);
					GUILayout.BeginHorizontal();
					if(GUILayout.Button(m.icon,GUI.skin.GetStyle("ItemButton"))){
						EquipHelmet(m);
						}
					GUILayout.Box (m.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
		}
		GUILayout.EndScrollView();
		GUILayout.EndVertical();
	}


	void DisplayPotions(){
		GUILayout.BeginVertical(GUI.skin.GetStyle("Box"));
		layout.potionScroll = GUILayout.BeginScrollView(layout.potionScroll);
		foreach (Potion m in inventory.potions){
			GUILayout.BeginVertical();
				GUILayout.Label(m.Name);
				GUILayout.BeginHorizontal();
					GUILayout.Box(m.icon);
					GUILayout.Box (m.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
		}
		GUILayout.EndScrollView();
		GUILayout.EndVertical();
	}
	
	void DisplayEquiped(){
		GUILayout.BeginVertical(GUI.skin.GetStyle("Box"));
		layout.equipScroll = GUILayout.BeginScrollView(layout.equipScroll);
			GUILayout.BeginVertical();
				GUILayout.Label("Meele");
				GUILayout.BeginHorizontal();
					GUILayout.Box(playerStats.equiped.meeleWeapon.icon);
					GUILayout.Box (playerStats.equiped.meeleWeapon.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
			GUILayout.BeginVertical();
				GUILayout.Label("Range");
				GUILayout.BeginHorizontal();
					GUILayout.Box(playerStats.equiped.rangeWeapon.icon);
					GUILayout.Box (playerStats.equiped.rangeWeapon.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
			GUILayout.BeginVertical();
				GUILayout.Label("Suit");
				GUILayout.BeginHorizontal();
					GUILayout.Box(playerStats.equiped.suit.icon);
					GUILayout.Box (playerStats.equiped.suit.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
			GUILayout.BeginVertical();
				GUILayout.Label("Helmet");
				GUILayout.BeginHorizontal();
					GUILayout.Box(playerStats.equiped.helmet.icon);
					GUILayout.Box (playerStats.equiped.helmet.description);
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
		GUILayout.EndScrollView();
		GUILayout.EndVertical();
	}
	

	void EquipMeele(MeeleWeapon m){
		playerStats.equiped.meeleWeapon = m;
	}

	void EquipRange (RangeWeapon m){
		playerStats.equiped.rangeWeapon = m;
	}

	void EquipSuit (Suit m){
		playerStats.equiped.suit= m;
	}

	void EquipHelmet (Helmet m){
		playerStats.equiped.helmet = m;
	}












	// theese functions are for the display stats menu page


	void DisplayStats(){
		GUILayout.BeginHorizontal();
			GUILayout.Box(layout.camView);
			GUILayout.BeginVertical();
				GUILayout.BeginVertical();
					GUILayout.Label("HP");
					GUILayout.Box(vitalStats.hP.current.ToString()+"/"+vitalStats.hP.max.ToString());
				GUILayout.EndVertical();
				GUILayout.BeginVertical();
					GUILayout.Label("Manna");
					GUILayout.Box(vitalStats.manna.current.ToString()+"/"+vitalStats.manna.max.ToString());
				GUILayout.EndVertical();
				GUILayout.BeginVertical();
					GUILayout.Label("Gold");
					GUILayout.Box(vitalStats.gold.ToString());
				GUILayout.EndVertical();
				GUILayout.BeginHorizontal();
					GUILayout.BeginVertical();
						GUILayout.Label("Level");
						GUILayout.Box(vitalStats.xpLevel.ToString());
					GUILayout.EndVertical();
					GUILayout.BeginVertical();
						GUILayout.Label("Experience");
						GUILayout.Box(vitalStats.xp.current.ToString());
					GUILayout.EndVertical();
					GUILayout.BeginVertical();
						GUILayout.Label("NextLevel");
						GUILayout.Box(vitalStats.xp.max.ToString());
					GUILayout.EndVertical();
				GUILayout.EndHorizontal();
			GUILayout.EndVertical();
		GUILayout.EndHorizontal();
	}






}









[System.Serializable]
public class SelectMenueTab{
	public string name;
	public Menu menu;
}


public enum Menu {
	invintory,
	stats,
	newplaceholder
}


[System.Serializable]
public class Layout{
	public Vector2 mWeaponsScroll = Vector2.zero;
	public Vector2 rWeaponsScroll = Vector2.zero;
	public Vector2 armourScroll = Vector2.zero;
	public Vector2 helmetScroll = Vector2.zero;
	public Vector2 equipScroll = Vector2.zero;
	public Vector2 potionScroll = Vector2.zero;
	public int w;
	public int h;
	public Texture2D camView;
}




