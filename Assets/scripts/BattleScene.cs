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
		for(int i=0;i<battleEngine.badGuys.Length;i++){
			GameObject bg;
			bg = battleEngine.badGuys[i].character;
			bg.SendMessage("BattleStations",stage.bGPlaces[i]);
			bg.SendMessage("SetBattle",this);
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

	// this method is called when fighter enters and is ready to go
	public void AddFighter(Fighter f){
		// if the message is sent by a badguy that hes ready
		if(f.team == Team.BadGuys){
			// test the gameobgect sent in the fighter var to see what slot we need
			for(int i=0;i<battleEngine.badGuys.Length;i++){
				GameObject fGo;
				fGo = battleEngine.badGuys[i].character;
				if(fGo == f.character){
					UpdateFighter(f,i);
				}
			}
		}

	}


	public void UpdateFighter(Fighter f, int index){
		if(f.team == Team.BadGuys){
			battleEngine.badGuys[index] = f;
		}

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
	public Fighter[] badGuys;
	public Fighter[] goodGuys;
	public BattleTurn battleTurn;
}

[System.Serializable]
public enum BattleTurn{
	BadGuysTurn,GoodGuysTurnn
}


[System.Serializable]
public enum FighterState{
	outOfPlace,ready,attacking,dead
}

[System.Serializable]
public enum Team{
	GoodGuys,BadGuys
}

[System.Serializable]
public class  Fighter{
	public GameObject character;
	public FighterState fighterState;
	public VitalStats stats;
	public Team team;
}




