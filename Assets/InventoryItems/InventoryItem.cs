using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class MeeleWeapon : Weapon {

}

[System.Serializable]
public class RangeWeapon : Weapon {
	public int range;
}

[System.Serializable]
public class Helmet : Armour {
}

[System.Serializable]
public class Suit : Armour {
}


// here the classes for items are broken down into subclasses for organization and uniformity

//here is the main scriptable object that derives all the items
[System.Serializable]
public class Item : ScriptableObject {
	public string Name;
	public Texture2D icon;
	public string description;
}

// this is the subclass weapon for example
[System.Serializable]
public class Weapon : Item {
	public int damage;

}

[System.Serializable]
public class Armour : Item {
	public int protection;
	public GameObject mesh;
}


[System.Serializable]
public class Potion : Item {
	public int hPGain;
	public int manaGain;
}






// here the inventory class is defined for use throughout the game

[System.Serializable]
public class Inventory {
	public MeeleWeapon[] meeleWeapons;
	public RangeWeapon[] rangeWapon;
	public Helmet[] helmets;
	public Suit[] suits;
	public Potion[] potions;
}




