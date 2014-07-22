using UnityEngine;
using System.Collections;

public class BubbleWords : MonoBehaviour {
	public bool talking = false;
	public Texture button;
	private KeyCode yButton = KeyCode.JoystickButton3;
	private GameObject npcCol;
	public Conversation conversation;
	private string line;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (!talking && Input.GetKeyDown(yButton)) {
			talking = true;
//			gameObject.SendMessage("Converse");
		}
	}

	void OnGUI(){

		if (talking) {
			GUILayout.BeginArea (new Rect (Screen.width / 8f, Screen.height * .75f, Screen.width * .75f, Screen.height * .25f));
			GUILayout.BeginHorizontal ("box");
			GUILayout.Box (line);
			GUILayout.EndHorizontal ();
			GUILayout.EndArea ();
		}
		else {
			GUI.Box(new Rect(0,0,75,75),button);
		}
	}

	void Talk(Collider col){
		this.enabled = true;
		npcCol = col.gameObject;
		this.conversation = col.gameObject.GetComponent<NPCScript>().conversation;
		//line = new string (conversation[0]);

	}


	void OnTriggerEnter(Collider col){
		print ("Hi");
		//If we collide with an NPC
		if (col.gameObject.tag == "NPC") {
			
			gameObject.SendMessage("Talk",col);
			col.gameObject.SendMessage("Talk",col);
		}
	}









}

[System.Serializable]

public class Conversation {
	public string[] Lines;
}