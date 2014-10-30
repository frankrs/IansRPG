using UnityEngine;
using System.Collections;

public class BubbleWords : MonoBehaviour {
	public bool talking = false;
	public Texture ybutton;
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
			if(converseLine<conversation.Lines.Length-1){
				converseLine = converseLine+1;
				}
			else{
				EndTalk();
			}
		}
	}

	void OnGUI(){

		if (talking) {
			GUILayout.BeginArea (new Rect (Screen.width * .25f, Screen.height * .75f, Screen.width * .51f, Screen.height * .25f));
			GUILayout.BeginHorizontal ("box");
			GUILayout.Box(conversation.portrait[converseLine],GUILayout.Height(Screen.height*.2f),GUILayout.Width(Screen.width*.1f));
			GUILayout.Box (conversation.Lines[converseLine],GUILayout.Width(Screen.width*.3f),GUILayout.Height(Screen.height*.2f));
			GUILayout.BeginVertical();
			GUILayout.Label(bButton,GUILayout.Height(Screen.height*.1f),GUILayout.Width(Screen.width*.1f));
			GUILayout.Label("Next");
			GUILayout.EndVertical();
			GUILayout.EndHorizontal ();
			GUILayout.EndArea ();
		}
		else {
			GUILayout.BeginArea (new Rect (Screen.width*.45f, Screen.height * .15f, Screen.width * .1f, Screen.width * .1f));
			GUILayout.BeginVertical("label");
			GUILayout.Label(ybutton,GUILayout.Height(Screen.height*.1f),GUILayout.Width(Screen.height*.1f));
			GUILayout.Label("Talk");
			GUILayout.EndVertical();
			GUILayout.EndArea ();
		}
	}

	void Talk(Collider col){
		this.enabled = true;
		npcCol = col.gameObject;


	}

	void EndTalk(){
		this.enabled = false;
		talking = false;
		converseLine = 0;
		
	}


	void OnTriggerEnter(Collider col){
		//If we collide with an NPC
		if (col.gameObject.tag == "NPC") {
			conversation = col.GetComponent<NPCScript>().conversation;
			gameObject.SendMessage("Talk",col);
			col.gameObject.SendMessage("Talk",col);
		}

	}



	void OnTriggerExit(Collider col){
		//If we leave an NPC
		if (col.gameObject.tag == "NPC") {
				EndTalk();
		}
	}


}

