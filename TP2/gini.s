.global procesar_gini    # hace visible la función para que C pueda llamarla

procesar_gini:
    push %rbp            # guarda el frame anterior
    mov %rsp, %rbp       # crea el nuevo stack frame

    cvttsd2si %xmm0, %rax       # convierte el float (que llega en xmm0) a entero en rax
    add $1, %rax                # le suma 1

    pop %rbp             # restaura el frame anterior
    ret                  # devuelve el resultado (que está en rax)