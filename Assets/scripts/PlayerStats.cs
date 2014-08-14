using UnityEngine;
using System.Collections;

public class PlayerStats : MonoBehaviour {

	public EquipedItems equiped;

	public Inventory inventory;

	public VitalStats  vitalStats;
}


[System.Serializable]
public class EquipedItems {
	public MeeleWeapon meeleWeapon = null;
	public RangeWeapon rangeWeapon = null;
	public Helmet helmet = null;
	public Suit suit = null;
}

[System.Serializable]
public class LevelMeter {
	public int current;
	public int max;
}

[System.Serializable]
public class VitalStats {
	public LevelMeter hP;
	public LevelMeter manna;
	public LevelMeter xp;
	public int gold;
	public int xpLevel;
}
