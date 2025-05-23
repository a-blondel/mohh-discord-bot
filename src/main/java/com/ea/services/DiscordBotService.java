package com.ea.services;

import jakarta.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import net.dv8tion.jda.api.JDA;
import net.dv8tion.jda.api.JDABuilder;
import net.dv8tion.jda.api.entities.Activity;
import net.dv8tion.jda.api.entities.channel.concrete.TextChannel;
import net.dv8tion.jda.api.utils.FileUpload;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@Service
@Slf4j
public class DiscordBotService {

    @Value("${discord.token}")
    private String token;

    @Value("${services.bot-activity-enabled}")
    private boolean botActivityEnabled;

    private JDA jda;
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    @PostConstruct
    public void init() {
        if (!botActivityEnabled) {
            log.debug("Bot activity is disabled, skipping initialization");
            return;
        }
        jda = JDABuilder.createDefault(token).build();
    }

    public void sendMessage(String channelId, String message) {
        if (!botActivityEnabled) {
            log.debug("Bot activity is disabled, skipping message: {}", message);
            return;
        }

        TextChannel channel = jda.getTextChannelById(channelId);
        if (channel != null && message != null && !message.isEmpty()) {
            Runnable sendTask = () -> channel.sendMessage(message).queue();
            scheduler.schedule(sendTask, 1, TimeUnit.SECONDS);
        }
    }

    public void sendImage(String channelId, File imageFile, String message) {
        if (!botActivityEnabled) {
            log.debug("Bot activity is disabled, skipping image: {}", imageFile.getName());
            return;
        }

        TextChannel channel = jda.getTextChannelById(channelId);
        if (channel != null) {
            Runnable sendTask = () -> {
                if (message == null || message.isEmpty()) {
                    channel.sendFiles(FileUpload.fromData(imageFile)).queue();
                } else {
                    channel.sendMessage(message).addFiles(FileUpload.fromData(imageFile)).queue();
                }
            };
            scheduler.schedule(sendTask, 1, TimeUnit.SECONDS);
        }
    }

    public void updateActivity(String activity) {
        if (!botActivityEnabled) {
            log.debug("Bot activity is disabled, skipping activity update: {}", activity);
            return;
        }

        if (jda != null) {
            jda.getPresence().setActivity(Activity.customStatus(activity));
        }
    }
}