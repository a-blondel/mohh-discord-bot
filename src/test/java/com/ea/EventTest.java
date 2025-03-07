package com.ea;

import com.ea.model.Event;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class EventTest {

    @Test
    void compareToWithDifferentTimes() {
        LocalDateTime earlier = LocalDateTime.of(2024, 1, 1, 12, 0);
        LocalDateTime later = LocalDateTime.of(2024, 1, 1, 12, 1);

        Event event1 = new Event(1, earlier, "player1 connected");
        Event event2 = new Event(2, later, "player2 connected");

        assertTrue(event1.compareTo(event2) < 0);
        assertTrue(event2.compareTo(event1) > 0);

        List<Event> events = new ArrayList<>();
        events.add(event1);
        events.add(event2);
        Collections.sort(events);

        assertEquals(event1, events.get(0));
        assertEquals(event2, events.get(1));
    }

    @Test
    void compareToWithSameTimeDisconnectedLast() {
        LocalDateTime time = LocalDateTime.of(2024, 1, 1, 12, 0);

        Event event1 = new Event(1, time, "player1 connected");
        Event event2 = new Event(2, time, "player2 disconnected");

        assertTrue(event1.compareTo(event2) < 0);
        assertTrue(event2.compareTo(event1) > 0);

        List<Event> events = new ArrayList<>();
        events.add(event1);
        events.add(event2);
        Collections.sort(events);

        assertEquals(event1, events.get(0));
        assertEquals(event2, events.get(1));
    }

    @Test
    void compareToWithSameTimeNeitherDisconnected() {
        LocalDateTime time = LocalDateTime.of(2024, 1, 1, 12, 0);

        Event event1 = new Event(1, time, "player1 connected");
        Event event2 = new Event(2, time, "player2 connected");

        assertTrue(event1.compareTo(event2) < 0);
        assertTrue(event2.compareTo(event1) > 0);

        List<Event> events = new ArrayList<>();
        events.add(event1);
        events.add(event2);
        Collections.sort(events);

        assertEquals(event1, events.get(0));
        assertEquals(event2, events.get(1));
    }

    @Test
    void compareToWithSameTimeBothDisconnected() {
        LocalDateTime time = LocalDateTime.of(2024, 1, 1, 12, 0);

        Event event1 = new Event(1, time, "player1 disconnected");
        Event event2 = new Event(2, time, "player2 disconnected");

        assertTrue(event1.compareTo(event2) < 0);
        assertTrue(event2.compareTo(event1) > 0);

        List<Event> events = new ArrayList<>();
        events.add(event1);
        events.add(event2);
        Collections.sort(events);

        assertEquals(event1, events.get(0));
        assertEquals(event2, events.get(1));
    }
}