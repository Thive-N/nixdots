_: ''
  * {
    font-family: JetBrainsMono Nerd Font, sans-serif;
    font-weight: normal;
    font-size: 14px;
    min-height: 0;
    color: #cdd6f4;
  }

  #window,
  #clock,
  #pulseaudio,
  #network,
  #workspaces,
  #window,
  #cpu,
  #memory,
  #custom-media {
    background-color:  #1e1e2e;
    margin-top: 2px;
    margin-bottom: 0px;
    padding: 3px;
  }

  #window,
  #custom-media {
  border: 2px solid #9999CC ;
  border-radius: 10px 10px 10px 10px;
  }

  
  #workspaces {
  border: 2px solid #9999CC ;
  color: #eeeeef;
  }

  #clock {
  border-right: 2px solid #9999CC;
  border-top: 2px solid #9999CC;
  border-bottom: 2px solid #9999CC
  }

  #cpu {
  border-left: 2px solid #9999CC;
  border-top: 2px solid #9999CC;
  border-bottom: 2px solid #9999CC
  }

  #pulseaudio,
  #memory {
  border-top: 2px solid #9999CC;
  border-bottom: 2px solid #9999CC
  }

  #cpu {
    border-radius: 10px 0px 0px 10px;
  }

  #clock {
    border-radius: 0px 10px 10px 0px
  }

  #clock {
    font-weight: bold;
    margin-right: 3px;
  }
  #window,
  #custom-media {
  font-weight: bold;
  border-radius: 10px 10px 10px 10px;
  padding-left: 7px;
  padding-right: 7px;
  }
  #workspaces button {
    color: #eeeeef;
    padding: 1px;
    }
  #workspaces button.active {
      color: white;
  }

  #workspaces button.focused {
      color: white;
    }
  #workspaces {
     border-radius: 10px 10px 10px 10px;
  }
  button {
    min-width: 16px;
  }
  window#waybar {
    /* you can also GTK3 CSS functions! */
    background-color: transparent;
    border-radius: 10px 10px 10px 10px;
  }
''