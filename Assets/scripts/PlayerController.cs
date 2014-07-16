using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {
	public KeyCode optionA;
	public KeyCode optionB;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter2D(Collider2D col){
		print ("Hi");
		//If we collide with an NPC
		if (col.gameObject.tag == "NPC") {

			gameObject.SendMessage("Talk",col);
			col.gameObject.SendMessage("Talk",col);
		}
	}

	void Talk(){

	}
}
