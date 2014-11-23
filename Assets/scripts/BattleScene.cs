using UnityEngine;
using System.Collections;

public class BattleScene : MonoBehaviour {


	public Stage stage;
	public BattleEngine battleEngine;


	void OnTriggerEnter (Collider col) {
		if(col.tag == "Player"){
			SetUpBattle();
		}
	}


	void SetUpBattle(){
		// tell on the badguys to get in place
		for(int i=0;i<battleEngine.bGuys.Length;i++){
			GameObject bg;
			bg = battleEngine.bGuys[i];
			bg.SendMessage("BattleStations",stage.bGPlaces[i]);
		}

		// create a battlecam
		stage.battleCam = GameObject.Instantiate(stage.battleCam,Camera.main.transform.position,Camera.main.transform.rotation) as GameObject;
		Camera.main.enabled = false;
		//Camera.main.GetComponent<AudioListener>().enabled = false;
		stage.battleCam.SendMessage("SetFOV",stage.fov);
		stage.battleCam.SendMessage("BattleStations",stage.cameraPlace);

		// tell players object to get into place
		var player = GameObject.FindGameObjectWithTag("Player");
		player.SendMessage("BattleStations",stage.playerPlace);

	}
}


[System.Serializable]
public class Stage{
	public Transform playerPlace;
	public Transform[] bGPlaces;
	public Transform[] gGPlaces;
	public GameObject battleCam = null;
	public Transform cameraPlace;
	public float fov = 60;
}

[System.Serializable]
public class BattleEngine{
	public GameObject[] bGuys;
	public GameObject[] gGuys;
	public BattleTurn battleTurn;
	public FighterState fighterState;
}

[System.Serializable]
public enum BattleTurn{
	BadGuysTurn,GoodGuysTurnn
}


[System.Serializable]
public enum FighterState{
	thinking,attacking,dead
}

