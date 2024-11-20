package com.example;

interface OnEmitListener {
    void onEmit(Integer playbackTime);
}

class Player {
    public Boolean isPlaying = false;
    public Integer playbackTime = 0;
    private OnEmitListener emitListener;

    public void setOnEmitListener(OnEmitListener listener) {
        this.emitListener = listener;
    }

    public void play() {
        this.isPlaying = true;
        new Thread(() -> {
            while (isPlaying) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                playbackTime += 1000;
                if (emitListener != null) {
                    emitListener.onEmit(playbackTime);
                }
            }
        }).start();
    }
}

public class MyClass {

    public static void main(String[] args) {
        Player player = new Player();
        player.play();
        System.out.println(player.isPlaying);

        player.setOnEmitListener(playbackTime -> {
            System.out.println("Current playback time: " + playbackTime / 1000 + " seconds");
        });
    }


}
