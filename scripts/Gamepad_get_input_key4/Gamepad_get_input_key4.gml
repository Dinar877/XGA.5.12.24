///////////////////////////////get which controller textblock we actually have
function Gamepad_get_input_key4() {
							if (do_space > 0)
							{
								global.key_space = new_keymap
							}
							else if (do_ability > 0)
							{
								global.key_ability = new_keymap
							}
							else if (do_G > 0)
							{
								global.key_G = new_keymap
							}
							else if (do_tab > 0)
							{
								global.key_tab = new_keymap
							}
							else if (do_select > 0)
							{
								global.key_select = new_keymap
							}
							else if (do_start > 0)
							{
								global.key_enter = new_keymap
							}
							else if (do_L1 > 0)
							{
								global.key_L1 = new_keymap
							}
							else if (do_L2 > 0)
							{
								global.key_L2 = new_keymap
							}
							else if (do_R1 > 0)
							{
								global.key_R1 = new_keymap
							}
							else if (do_R2 > 0)
							{
								global.key_R2 = new_keymap
							}
					gp_input_old = new_keymap


}
