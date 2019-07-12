//The banner ad, once added, will trigger an asynchronous social event type
// I've added this event to the launch Controller object.

var ident = ds_map_find_value(async_load, "type");
var loaded = ds_map_find_value(async_load, "loaded");
if(ident == "banner_load")
{
    if(loaded)
    {
        banner_w = ds_map_find_value(async_load, "width");
        banner_h = ds_map_find_value(async_load, "height");

    banner_x = (display_get_width() - banner_w) / 2; // the horizontal center of the page
    banner_y = (display_get_height() - banner_h); // at the bottom of the page 
    GoogleMobileAds_MoveBanner(banner_x, banner_y);   
    }

}
