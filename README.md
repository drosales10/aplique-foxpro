# Aplique FoxPro

Colección de ejemplos educativos de Visual FoxPro / FoxPro organizados por capítulos. El repositorio está pensado para estudiar, practicar y reutilizar scripts de ejemplo de forma ordenada.

## Objetivo

Este proyecto toma como referencia el documento `Ejemplos.docx` y reorganiza los ejemplos en carpetas temáticas para facilitar su consulta y aprendizaje.

## Estructura del repositorio

- `cap01_introduccion/` — introducción y ejemplo principal
- `cap02_tecnicas_herramientas/` — técnicas, validación, color y pruebas de archivos
- `cap03_modelo_basico/` — mantenimiento básico de clientes
- `cap04_menus/` — menús verticales, de prompts y jerárquicos
- `cap05_hojear_ventanas/` — browsing, ventanas y listas de selección
- `cap06_entrada_datos/` — pantallas, validación y cálculo
- `cap07_informes_laser/` — informes, generación de salida y librería PCL/Laser
- `cap08_relaciones/` — relación entre tablas y detalle
- `cap09_planificacion/` — planificación semanal y turnos

## Contenido por capítulo

### cap01_introduccion
- PRINCIPAL.PRG

### cap02_tecnicas_herramientas
- AUDITOR.PRG
- SETCOLOR.PRG
- TESTARCH.PRG
- V_ESTADO.PRG

### cap03_modelo_basico
- AVANZADO.PRG
- SIMPLE.PRG
- SIM_PROC.PRG

### cap04_menus
- MENU1.PRG
- MENU2.PRG
- MENU3.PRG
- MENU4.PRG
- MENU5.PRG

### cap05_hojear_ventanas
- BROWPROC.PRG
- GENBROW.PRG
- HOJEAR.PRG
- SELLISTA.PRG
- VENTANA.PRG

### cap06_entrada_datos
- HOJACALC.PRG
- PANTALLA.PRG
- SUPERIOR.PRG
- VALIDAFDU.PRG

### cap07_informes_laser
- ABRE_RPT.PRG
- BIBLASER.PRG
- CIER_RPT.PRG
- INFORME1.PRG
- INFORME2.PRG
- INFORME3.PRG
- INFORMES.PRG

### cap08_relaciones
- MULTREGS.PRG

### cap09_planificacion
- PLAN.PRG

## Cómo usarlo

1. Abre Visual FoxPro o un entorno compatible.
2. Navega hasta la carpeta del ejemplo que quieras probar.
3. Ejecuta el `.PRG` correspondiente.
4. Si el programa crea tablas o archivos auxiliares, revisa la carpeta de trabajo para comprobar el resultado.

## Notas

- Algunos ejemplos crean tablas temporales si no existen.
- La intención es didáctica y de aprendizaje, no una aplicación de producción.
- Los nombres de archivos se han normalizado para mantener una estructura más consistente en el repositorio.
- El repositorio ignora archivos generados por FoxPro mediante [.gitignore](.gitignore) para evitar ruido en Git.

## Estado

El repositorio tiene la estructura de capítulos completada y los ejemplos principales organizados por temática.

## Licencia

No se especifica licencia comercial adicional. El contenido está destinado a uso educativo y de estudio.
