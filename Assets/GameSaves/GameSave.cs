using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class GameSave : ScriptableObject {
	public string saveTime;
	public Texture2D saveScreen;
	public Inventory inventory;
}


[System.Serializable]
public class Inventory{
	public InventoryItem[] weapons;
	public InventoryItem[] spells;
	public InventoryItem[] potions;
	public InventoryItem[] aromr;
}