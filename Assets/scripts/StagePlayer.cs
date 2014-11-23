using UnityEngine;
using System.Collections;

public class StagePlayer : MonoBehaviour {

	public MonoBehaviour[] moveControls;
	public NPCMovement move;
	public RuntimeAnimatorController battleAnim;
	public RuntimeAnimatorController normAnim;
	
		IEnumerator BattleStations (Transform tran){

		//set the animator
		move.anim.runtimeAnimatorController = battleAnim;
		move.anim.applyRootMotion = false;



		// turn on the navmaesh
		move.nav.enabled = true;
		move.nav.SetDestination(tran.position);

		// disable normal controls
		foreach(MonoBehaviour m in moveControls){
			m.enabled = false;
		}
		// move until you are in place
		while(Vector3.Distance(transform.position, move.nav.destination) >= .1f){
				yield return new WaitForEndOfFrame();
			}

		Debug.Log("letsfight");
		//turn of navagent
		move.nav.enabled = false;
		//turn to correct direction
		move.anim.SetTrigger("Ready");
		transform.rotation = tran.rotation;
		}

}


