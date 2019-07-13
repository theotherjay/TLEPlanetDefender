__view_set( e__VW.Visible, 0, !__view_get( e__VW.Visible, 0 ) );
__view_set( e__VW.Visible, 1, !__view_get( e__VW.Visible, 1 ) );

layerName = "GUI_Zoom_In";
layer_set_visible(layerName, !layer_get_visible(layerName));
layerName = "GUI_Zoom_Out";
layer_set_visible(layerName, !layer_get_visible(layerName));

