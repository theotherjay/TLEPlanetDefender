#define scr_LaunchController_gameStart
scr_Particle_System(); //Initialize the particle system
randomize();

//To determine how to find app id and ad unit id, go to:
// https://support.google.com/admob/answer/7356431?hl=en


//      (ad unit id - for interstitial ads, app id)

GoogleMobileAds_Init("", "ca-app-pub-1237389989323433~1912753609");
GoogleMobileAds_UseTestAds(true, "85EB44451B6A73E947CCF2E943F2DD46");// "E9132BB7290575BF7064CDFAE7E84C29"); //This is the id of my moto z play

GoogleMobileAds_AddBannerAt("ca-app-pub-1237389989323433/1048170593", GoogleMobileAds_Banner, 0,-1000);

#define scr_GameEnd
    
    //destroy all of the particle system and particle types to prevent memory leak
    part_system_destroy(global.ps);
    part_type_destroy(global.pt_spark);
    part_type_destroy(global.pt_cloud);
    part_type_destroy(global.pt_portal);
    part_emitter_destroy_all(global.ps);
#define scr_launchController_roomStart
var i = irandom_range(1, 3);
if(i == 1)
{
    GoogleMobileAds_ShowBanner();
}

#define scr_launchController_social
//The banner ad, once added, will trigger an asynchronous social event type
// I've added this event to the launch Controller object.

var ident = ds_map_find_value(async_load, 'type');
var loaded = ds_map_find_value(async_load, 'loaded');
if(ident == 'banner_load')
{
    if(loaded)
    {
        banner_w = ds_map_find_value(async_load, 'width');
        banner_h = ds_map_find_value(async_load, 'height');

    banner_x = (display_get_width() - banner_w) / 2; // the horizontal center of the page
    banner_y = (display_get_height() - banner_h); // at the bottom of the page 
    GoogleMobileAds_MoveBanner(banner_x, banner_y);   
    }

}