using UnityEngine;
using System.Collections;

public class BubbleWords : MonoBehaviour {
	public bool talking = false;
	public Texture button;
	public Texture bButton;
	private KeyCode yButton = KeyCode.JoystickButton3;
	public KeyCode xBoxB = KeyCode.JoystickButton1;
	private GameObject npcCol;
	public Conversation conversation;
	public int converseLine = 0;



	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (!talking && Input.GetKeyDown(yButton)) {
			talking = true;
		}
		if(talking && Input.GetKeyDown(xBoxB)){
			Debug.Log("next");
			converseLine = converseLine+1;
		}
	}

	void OnGUI(){

		if (talking) {
			GUILayout.BeginArea (new Rect (Screen.width / 8f, Screen.height * .75f, Screen.width * .75f, Screen.height * .25f));
			GUILayout.BeginHorizontal ("box");
			GUILayout.Box(conversation.portrait[converseLine],GUILayout.Height(Screen.height*.2f),GUILayout.Width(Screen.height*.2f));
			GUILayout.Box (conversation.Lines[converseLine]);
			GUILayout.BeginVertical();
			GUILayout.Label(bButton,GUILayout.Height(Screen.height*.1f));
			GUILayout.Label("Next");
			GUILayout.EndVertical();
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


	}


	void OnTriggerEnter(Collider col){
		//If we collide with an NPC
		if (col.gameObject.tag == "NPC") {
			conversation = col.GetComponent<NPCScript>().conversation;
			gameObject.SendMessage("Talk",col);
			col.gameObject.SendMessage("Talk",col);
		}
	}









}

