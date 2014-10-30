using UnityEngine;
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


	[MenuItem("Assets/Create/InventoryItems/Weapons/MeeleWeapon")]
	public static void CreateMeeleWeapon ()
	{
		//var c = new Conversation();
		//AssetDatabase.CreateAsset(c,"Assets/Conversations/NewConversation.asset");
		//AssetDatabase.SaveAssets();
		var i = ScriptableObject.CreateInstance<MeeleWeapon> ();
		AssetDatabase.CreateAsset(i,"Assets/InventoryItems/MeeleWeapons/NewMeeleWeapon.asset");
	}


	[MenuItem("Assets/Create/InventoryItems/Weapons/RangeWeapon")]
	public static void CreateRangeWeapon ()
	{
		var i = ScriptableObject.CreateInstance<RangeWeapon> ();
		AssetDatabase.CreateAsset(i,"Assets/InventoryItems/RangeWeapons/NewRangeWeapon.asset");
	}

	[MenuItem("Assets/Create/InventoryItems/Armour/Helmet")]
	public static void CreateHelmet ()
	{
		var i = ScriptableObject.CreateInstance<Helmet> ();
		AssetDatabase.CreateAsset(i,"Assets/InventoryItems/Helmets/NewHelmet.asset");
	}

	[MenuItem("Assets/Create/InventoryItems/Armour/Suit")]
	public static void CreateSuit ()
	{
		var i = ScriptableObject.CreateInstance<Suit> ();
		AssetDatabase.CreateAsset(i,"Assets/InventoryItems/Suits/NewSuit.asset");
	}

	[MenuItem("Assets/Create/InventoryItems/Potions/Potion")]
	public static void CreatePotion ()
	{
		var i = ScriptableObject.CreateInstance<Potion> ();
		AssetDatabase.CreateAsset(i,"Assets/InventoryItems/Potions/NewPotion.asset");
	}

	[MenuItem("Assets/Create/GameSave")]
	public static void CreateGamesave ()
	{
		//var c = new Conversation();
		//AssetDatabase.CreateAsset(c,"Assets/Conversations/NewConversation.asset");
		//AssetDatabase.SaveAssets();
		var s = ScriptableObject.CreateInstance<GameSave> ();
		string t = System.DateTime.Now.ToString();
		string assetName = t.Replace("/", "-");
		assetName = assetName.Replace(" ", "-");
		assetName = assetName.Replace(":", "-");
		Debug.Log(assetName);
		s.saveTime = t;
		//Application.CaptureScreenshot("Assets/GameSaves/t.jpg");
		//s.saveScreen = "Assets/GameSaves/t.png";
		AssetDatabase.CreateAsset(s,"Assets/GameSaves/"+assetName+".asset");
	}

}

