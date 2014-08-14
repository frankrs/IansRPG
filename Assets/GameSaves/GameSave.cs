using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class GameSave : ScriptableObject {
	public string saveTime;
	public Texture2D saveScreen;
	public Inventory inventory;
}


