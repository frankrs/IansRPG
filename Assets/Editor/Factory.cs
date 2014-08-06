﻿using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


public class Factory : MonoBehaviour {

	[MenuItem("Assets/Create/Conversation")]
	public static void CreateConversation ()
	{
		//var c = new Conversation();
		//AssetDatabase.CreateAsset(c,"Assets/Conversations/NewConversation.asset");
		//AssetDatabase.SaveAssets();
		var c = ScriptableObject.CreateInstance<Conversation> ();
		AssetDatabase.CreateAsset(c,"Assets/Conversations/NewConversation.asset");
	}


	[MenuItem("Assets/Create/InventoryItem")]
	public static void CreateInventoryItem ()
	{
		//var c = new Conversation();
		//AssetDatabase.CreateAsset(c,"Assets/Conversations/NewConversation.asset");
		//AssetDatabase.SaveAssets();
		var i = ScriptableObject.CreateInstance<InventoryItem> ();
		AssetDatabase.CreateAsset(i,"Assets/InventoryItems/NewItem.asset");
	}

	[MenuItem("Assets/Create/GameSave")]
	public static void CreateGamesave ()
	{
		//var c = new Conversation();
		//AssetDatabase.CreateAsset(c,"Assets/Conversations/NewConversation.asset");
		//AssetDatabase.SaveAssets();
		var s = ScriptableObject.CreateInstance<GameSave> ();
		s.saveTime = System.DateTime.Now.ToString();
		AssetDatabase.CreateAsset(s,"Assets/GameSaves/GameSave.asset");
	}

}

