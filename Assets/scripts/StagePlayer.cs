using UnityEngine;
using System.Collections;

public class StagePlayer : MonoBehaviour {

	public MonoBehaviour[] moveControls;
	public NPCMovement move;
	
		IEnumerator BattleStations (Transform tran){

		//set the animator
		move.anim.applyRootMotion = false;
		move.anim.SetBool("BattleWalk",true);

		// turn on the navmaesh
		move.nav.enabled = true;
		move.nav.SetDestination(tran.position);

		// disable normal controls
		foreach(MonoBehaviour m in moveControls){
			m.enabled = false;
		}
		// move until you are in place
		while(Vector3.Distance(transform.position, move.nav.destination) >= .25f){
				yield return new WaitForEndOfFrame();
			}
		//turn to correct direction
		transform.rotation = tran.rotation;

		}

}


