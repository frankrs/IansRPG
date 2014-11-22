using UnityEngine;
using System.Collections;

public class BattleScene : MonoBehaviour {


	public Stage stage;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}


[System.Serializable]
public class Stage{
	public Transform[] bGPlaces;
	public Transform[] gGPlaces;
	public Transform cameraPlace;
}