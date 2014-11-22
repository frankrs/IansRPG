using UnityEngine;
using System.Collections;

public class NPCFighter : NPCScript {

	public Inventory inventory;
	public VitalStats vStats;


	// corotine that runs to battlestation
	IEnumerator BattleStations (Transform tran){
		npcMovement.nav.enabled = true;
		npcMovement.nav.SetDestination(tran.position);
		npcMovement.anim.applyRootMotion = false;
		npcMovement.anim.SetBool("Run",true);
		while(Vector3.Distance(transform.position, npcMovement.nav.destination) >= .25f){
			Debug.Log("ud");
			yield return new WaitForEndOfFrame();
		}
		npcMovement.nav.enabled = false;
		npcMovement.anim.applyRootMotion = true;
		npcMovement.anim.SetBool("Turn",false);

	}

}
