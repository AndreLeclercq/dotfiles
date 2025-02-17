#!/bin/bash

spaces (){
    WORKSPACE_JSON=$(i3-msg -t get_workspaces)
    echo $WORKSPACE_JSON
}

# Initial workspace status
spaces

# Subscribe to workspace events
i3-msg -t subscribe -m '[ "workspace" ]' | while read -r line; do
    spaces
done
