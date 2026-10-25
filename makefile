# Makefile para automatizar el proyecto

# Le decimos a Make que estos comandos no generan archivos con su mismo nombre
.PHONY: todo test reporte limpiar

# La regla por defecto si solo escribes "make"
todo: test reporte

# Regla para correr los tests de Python
test:
	@echo "Ejecutando pruebas de Python..."
	cd /d/pythonprojects/1project && ./.venv/Scripts/python.exe -m pytest

# Regla para renderizar el reporte de Quarto
reporte:
	@echo "Generando reporte con Quarto..."
	quarto render reporte.qmd

# Regla para limpiar los archivos generados
limpiar:
	@echo "Limpiando archivos generados..."
	rm -f reporte.html
	rm -rf reporte_files