/// @description state_machine_execute()
/// @function state_machine_execute
function State_machine_execute() {
	if (state!=-1)
	    script_execute(state);
	state_new = false;
}
