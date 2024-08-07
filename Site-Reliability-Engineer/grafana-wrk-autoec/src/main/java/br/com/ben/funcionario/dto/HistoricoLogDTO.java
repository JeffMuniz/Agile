package br.com.mac.funcionario.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class HistoricoLogDTO implements Serializable {

  private String modulo;
  private String subModulo;
  private String descricaoSubModulo;
  private String origem;
  private String chaveModulo;
  private String chaveSubModulo;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
  private LocalDateTime data;

  private String login;
  private String nome;
  private Object valorAnterior;
  private Object valorPosterior;

}
