package com.vmax.demo.instreamvideo;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;
import com.vmax.android.ads.api.VmaxAdView;
import com.vmax.android.ads.common.VmaxAdListener;
import com.vmax.android.ads.exception.VmaxAdError;



/** Its Recommended To Use VMAX plugin For Android Studio To Add Your Dependencies
 and Manage Changes in AndroidManifest as Well as Proguard,
 However You Can Manually Do This By Referring To Our Documentation Or following this Demo Project  */


public class MainActivity extends YouTubeBaseActivity implements YouTubePlayer.OnInitializedListener {


    public  VmaxAdView vmaxAdView;
    private FrameLayout parent_layout;
    RelativeLayout video_1,video_2,video_3,video_4,video_5;
    String youTubeVideoId="rD4Sakm8bs4";



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


       /** Initialize App UI */
        IntiUi();
      /** Load Instream Video Ad*/
        loadInstreamVideo();



    }


    /** Method for Loading Instream Video */
    public void loadInstreamVideo()
    {

        /** Initializing vmaxAdView with an Adspot, Repalce With the adspot Configured by you */
        vmaxAdView = new VmaxAdView(this,"V933206e4",VmaxAdView.UX_INSTREAM_VIDEO);

        /** To Fetch Your AdvId you can check your device's Google settings under ads subMenu Or You can Run this app Once and check
         * the logs for 'Device Advertisement Id' under the tag vmax/

/** DON'T INCLUDE vmaxAdView.setTestDevices() WHILE GOING LIVE WITH YOUR PROJECT AS THIS SERVES ONLY TEST ADS;*/
        vmaxAdView.setTestDevices(VmaxAdView.TEST_via_ADVID,"<YOUR_DEVICE'S_ADVID>");


        vmaxAdView.setAdListener(new VmaxAdListener() {
            @Override public void onAdError(VmaxAdError error) {
                Toast.makeText(getApplicationContext(),
                        "Failed To Load Ad Please Try Again Later",Toast.LENGTH_LONG).show();
                playVideo();

            }

            @Override
            public void onAdClose() {
                playVideo();
            }

            @Override
            public void onAdMediaEnd(boolean b, long l) {
                playVideo();
            }

            @Override public void onAdReady(VmaxAdView adView) {

                showInstream(adView);
            }

            @Override
            public void onAdSkippable() {

            }

            @Override
            public void onAdMediaStart() {
                super.onAdMediaStart();
            }
        });

        vmaxAdView.cacheAd();
    }

public void playVideo()
    {
        YouTubePlayerView youTubePlayerView = new YouTubePlayerView(this);
        parent_layout.removeAllViews();
        /** Always add the VideoView(YoutubePlayerView in this case) dynamically */
        parent_layout.addView(youTubePlayerView);
        youTubePlayerView.initialize("AIzaSyCjMEz68TicvvNa7kaSX_9F7RuJrndbCJI", this);
    }


    public void showInstream(VmaxAdView vmaxAdView1)
    {
        if (vmaxAdView1.getAdState() == VmaxAdView.AdState.STATE_AD_READY)
        {
            vmaxAdView1.setVideoPlayerDetails(parent_layout);
            vmaxAdView1.showAd();
        }
    }


    public void IntiUi()
    {
        /** Ad/Video Container*/
        parent_layout=(FrameLayout) findViewById(R.id.frame_parent);

        video_1=(RelativeLayout)findViewById(R.id.video_1);
        video_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                youTubeVideoId="w2itwFJCgFQ";
                playVideo();
            }
        });

        video_2=(RelativeLayout)findViewById(R.id.video_2);
        video_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                youTubeVideoId="nA-J0510Pxs";
                playVideo();
            }
        });

        video_3=(RelativeLayout)findViewById(R.id.video_3);
        video_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                youTubeVideoId="v233_FKMgm8";
                playVideo();
            }
        });

        video_4=(RelativeLayout)findViewById(R.id.video_4);
        video_4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                youTubeVideoId="Y_9vd4HWlVA";
                playVideo();
            }
        });


        video_5=(RelativeLayout)findViewById(R.id.video_5);
        video_5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                youTubeVideoId="7oQY0uC52jY";
                playVideo();
            }
        });
    }
   
    /** Handle vmaxAdView object for Activity Lifecycle changes */

    @Override
    protected void onDestroy() {
        if (vmaxAdView != null) {
       /** To Destroy vmaxAdView when Activity Is No Longer Available  */
            vmaxAdView.onDestroy();
        }
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        vmaxAdView.pauseInstreamAd();
    }

    @Override
    protected void onResume() {
        super.onResume();
        vmaxAdView.resumeInstreamAd();
    }

    /** Youtube API callbacks*/
    @Override
    public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer youTubePlayer, boolean b) {
        youTubePlayer.cueVideo(youTubeVideoId);


    }

    @Override
    public void onInitializationFailure(YouTubePlayer.Provider provider, YouTubeInitializationResult youTubeInitializationResult) {
Log.e("vmax",youTubeInitializationResult.name()+"::"+youTubeInitializationResult.toString());
    }
}
