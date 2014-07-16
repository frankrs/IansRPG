#pragma strict

var xBInput : MoveInput;

private var movement : Movement;

function Start () {
// get the movement input
movement = GetComponent(Movement);

}

function Update () {
// set the variables according to the input manager
xBInput.fb = Input.GetAxis("Vertical");
xBInput.lr = Input.GetAxis("Horizontal");
// set the characters input controls to the ones captured here
movement.moveInput = xBInput;
}



@ script RequireComponent(Movement)
