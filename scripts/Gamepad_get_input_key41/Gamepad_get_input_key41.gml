///////////////////////////////get which controller textblock we actually have
function Gamepad_get_input_key41() {
							if (do_space > 0)
							{
								global.key_space = old_keymap
							}
							else if (do_ability > 0)
							{
								global.key_ability = old_keymap
							}
							else if (do_G > 0)
							{
								global.key_G = old_keymap
							}
							else if (do_tab > 0)
							{
								global.key_tab = old_keymap
							}
							else if (do_select > 0)
							{
								global.key_select = old_keymap
							}
							else if (do_start > 0)
							{
								global.key_enter = old_keymap
							}
							else if (do_L1 > 0)
							{
								global.key_L1 = old_keymap
							}
							else if (do_L2 > 0)
							{
								global.key_L2 = old_keymap
							}
							else if (do_R1 > 0)
							{
								global.key_R1 = old_keymap
							}
							else if (do_R2 > 0)
							{
								global.key_R2 = old_keymap
							}


}
