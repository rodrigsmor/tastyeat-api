package com.tastyeat.api.utils.functions;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.time.ZoneId;

@Component
@RequiredArgsConstructor
public class CommomFunctions {
    public OffsetDateTime getPublicationDate() {
        OffsetDateTime date = OffsetDateTime.now();
        return date.atZoneSameInstant(ZoneId.of("Z")).toOffsetDateTime();
    }
}
