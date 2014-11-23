using UnityEngine;
using System.Collections;

public class BattleCam : MonoBehaviour {

	public float tarFov = 60f;
	public float speed = 1f;
	public float duration;
	private float elapsedTime;


	IEnumerator BattleStations (Transform tran) {
		var startPosition = new Vector3();
		var startRot = new Quaternion();
		startPosition = transform.position;
		startRot = transform.rotation;
		while (elapsedTime < duration){
			transform.position = Vector3.Lerp(startPosition, tran.position, elapsedTime);
			transform.rotation = Quaternion.Lerp(startRot,tran.rotation,elapsedTime);
			elapsedTime += Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}
		transform.position = tran.position;
	}

	void SetFOV (float f){
		tarFov = f;
	}
}
