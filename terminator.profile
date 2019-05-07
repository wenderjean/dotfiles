[global_config]
[keybindings]
  copy = <Primary>c
  paste = <Primary>v
  split_horiz = <Shift><Alt>d
  split_vert = <Shift><Alt>e
  switch_to_tab_1 = <Alt>1
  switch_to_tab_10 = <Alt>0
  switch_to_tab_2 = <Alt>2
  switch_to_tab_3 = <Alt>3
  switch_to_tab_4 = <Alt>4
  switch_to_tab_5 = <Alt>5
  switch_to_tab_6 = <Alt>6
  switch_to_tab_7 = <Alt>7
  switch_to_tab_8 = <Alt>8
  switch_to_tab_9 = <Alt>9
[layouts]
  [[default]]
    [[[child1]]]
      parent = window0
      type = Terminal
    [[[window0]]]
      parent = ""
      type = Window
  [[wender.freese.dev]]
    [[[child0]]]
      fullscreen = False
      last_active_window = True
      maximised = True
      order = 0
      parent = ""
      position = 0:0
      size = 1360, 731
      title = wenderfreese@localhost: ~/Documents/Stack/stack-ops
      type = Window
    [[[child1]]]
      active_page = 1
      labels = None, None
      last_active_term = 9d3b94b6-3d53-4867-ab44-4d169a0c7149, a2958842-94d6-4abe-91dd-4f5b982f9aef
      order = 0
      parent = child0
      type = Notebook
    [[[terminal2]]]
      order = 0
      parent = child1
      profile = default
      type = Terminal
      uuid = 9d3b94b6-3d53-4867-ab44-4d169a0c7149
    [[[terminal3]]]
      order = 1
      parent = child1
      profile = default
      type = Terminal
      uuid = a2958842-94d6-4abe-91dd-4f5b982f9aef
[plugins]
[profiles]
  [[default]]
    cursor_color = "#aaaaaa"
    login_shell = True
