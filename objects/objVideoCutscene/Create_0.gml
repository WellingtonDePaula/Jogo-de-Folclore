videoPath = undefined;
video = undefined;



run = function() {
    video = video_open(videoPath);
    video_enable_loop(false);
};