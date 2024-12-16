package com.github.cesargh.forohub.domain.topico;

import com.github.cesargh.forohub.domain.curso.Curso;
import com.github.cesargh.forohub.domain.topico.records.TopicoDatosActualizar;
import com.github.cesargh.forohub.domain.usuario.Usuario;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity()
@Table( name = "topico",
        uniqueConstraints = { @UniqueConstraint(name = "ui_topico_titulo_mensaje", columnNames = {"titulo", "mensaje"}) }
)
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Topico {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable=false, length=100)
    private String titulo;

    @Column(nullable=false, length=500)
    private String mensaje;

    @Column(nullable=false)
    private LocalDateTime fechacreacion;

    @Column(nullable=false, length=50)
    @Enumerated(EnumType.STRING)
    private Estado estado;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "usuario_id")
    private Usuario autor;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "curso_id")
    private Curso curso;

    public Topico(String titulo, String mensaje, Usuario autor, Curso curso) {
        this.titulo = titulo;
        this.mensaje = mensaje;
        this.fechacreacion = LocalDateTime.now();
        this.estado = Estado.ABIERTO;
        this.autor = autor;
        this.curso = curso;
    }

    public void actualizar(TopicoDatosActualizar datos) {
        this.titulo = datos.titulo();
        this.mensaje = datos.mensaje();
        this.estado = datos.estado();
    }

}
