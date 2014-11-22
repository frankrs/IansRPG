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
		for(int i=0;i<battleEngine.bGuys.Length;i++){
			GameObject bg;
			bg = battleEngine.bGuys[i];
			bg.SendMessage("BattleStations",stage.bGPlaces[i]);
		}
	}
}


[System.Serializable]
public class Stage{
	public Transform[] bGPlaces;
	public Transform[] gGPlaces;
	public Transform cameraPlace;
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

