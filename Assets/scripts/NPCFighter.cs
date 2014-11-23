using UnityEngine;
using System.Collections;

public class NPCFighter : NPCScript {

	public Inventory inventory;
	public VitalStats vStats;
	public BattleScene bScene;
	public Team team;
	public RuntimeAnimatorController battleController;

	void SetBattle(BattleScene b){
		bScene = b;
	}

	// corotine that runs to battlestation
	IEnumerator BattleStations (Transform tran){
		npcMovement.nav.enabled = true;
		npcMovement.nav.SetDestination(tran.position);
		npcMovement.anim.runtimeAnimatorController = battleController;
		npcMovement.anim.applyRootMotion = false;
		while(Vector3.Distance(transform.position, npcMovement.nav.destination) >= .25f){
			yield return new WaitForEndOfFrame();
		}
		npcMovement.nav.enabled = false;
		npcMovement.anim.SetTrigger("Ready");
		npcMovement.anim.applyRootMotion = true;
		// turn character to face proper direction
		transform.rotation = tran.rotation;
		ImReady();
	}




	void ImReady(){
		var f = new Fighter();
		f.character = gameObject;
		f.fighterState = FighterState.ready;
		f.stats = vStats;
		f.team = team;
		bScene.AddFighter(f);
	}


}
