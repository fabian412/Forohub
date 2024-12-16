package com.github.cesargh.forohub.domain.topico.records;

import com.github.cesargh.forohub.domain.topico.Estado;
import com.github.cesargh.forohub.domain.topico.Topico;

import java.time.LocalDateTime;

public record TopicoDatosVer(
        Long id,
        String titulo,
        String mensaje,
        LocalDateTime fechacreacion,
        Estado estado,
        Long autor,
        Long curso
) {

    public TopicoDatosVer(Topico topico) {
        this(
            topico.getId(),
            topico.getTitulo(),
            topico.getMensaje(),
            topico.getFechacreacion(),
            topico.getEstado(),
            topico.getAutor().getId(),
            topico.getCurso().getId()
        );
    }

}
