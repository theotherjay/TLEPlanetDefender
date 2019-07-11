#define scr_objMenuOverlay
depth = GUI_OVERLAY_DEPTH - 1;

#define scr_objMenuOverlay_leftPress
if(owner.managementOverlayOpen == true)
{
    owner.managementOverlayOpen = false;
}
instance_destroy();