using UnityEngine;
using System.Collections;

public class StagePlayer : MonoBehaviour {

	public MonoBehaviour[] moveControls;
	
		IEnumerator BattleStations (Transform tran){
		foreach(MonoBehaviour m in moveControls){
			m.enabled = false;
		}
			while(this){
				yield return new WaitForEndOfFrame();
			}
		}

}
