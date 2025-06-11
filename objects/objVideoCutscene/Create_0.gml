videoPath = undefined;
video = undefined;

toExec = undefined;
args = undefined;

drawing = false;

objCreated = [];

executed = false;

run = function() {
    video = video_open(videoPath);
    video_enable_loop(false);
};