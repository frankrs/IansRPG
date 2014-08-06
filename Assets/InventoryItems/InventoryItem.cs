using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class InventoryItem : ScriptableObject {
	public ItemType itemType;
	public string Name;
	public Texture2D icon;
}


[System.Serializable]
public enum ItemType{weapon,spell,potion,aromr};