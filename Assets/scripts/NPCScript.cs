using UnityEngine;
using System.Collections;

public class NPCScript : MonoBehaviour {

	public NPCTalk npcTalk; 

	public NPCMovement npcMovement;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	void Talk(Collider col){
		
	}


}


[System.Serializable]
public class NPCMovement{
	public CharacterController characterController;
	public Animator anim;
	public NavMeshAgent nav;
}

[System.Serializable]
public class NPCTalk{
	public Conversation conversation;
}