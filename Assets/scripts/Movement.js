#pragma strict

var moveInput : MoveInput;
class MoveInput{
var fb : float;
var lr : float;
}




var gravity : float = 9.7;

private var cc : CharacterController;
private var anim : Animator;

function Awake () {
// get character controller
cc = GetComponent(CharacterController);
// get animator 
anim = GetComponent(Animator);
}

function Update () {
// set the animator controlers variables according to the input
anim.SetFloat("FB",moveInput.fb);
anim.SetFloat("LR",moveInput.lr);
}



function LateUpdate(){
// pull character down with gravity
cc.Move(Vector3(0,-gravity*Time.deltaTime,0));
}


@ script RequireComponent(CharacterController)
@ script RequireComponent(Animator)