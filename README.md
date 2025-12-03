# 🏭 Safe Worker Security Monitor (IIoT System)

> **Sistema de monitoreo ambiental industrial para la prevención de riesgos laborales, con arquitectura distribuida (Local/Remota) y alertas en tiempo real.**

![IoT](https://img.shields.io/badge/IoT-Arduino_%2B_NodeMCU-red)
![Stack](https://img.shields.io/badge/FullStack-PHP_|_PostgreSQL-blue)
![Hardware](https://img.shields.io/badge/Hardware-Sensors_Integration-yellow)

## 📖 Descripción general
Safe Worker es una solución tecnológica diseñada para proteger la salud de trabajadores en entornos industriales expuestos a condiciones nocivas. El sistema monitorea continuamente variables críticas (Gases tóxicos, Temperatura, Ruido) y alerta inmediatamente sobre niveles peligrosos.

El diferenciador clave de este proyecto es su **arquitectura de red híbrida**: garantiza la operatividad visualizando datos en un **Servidor local** (en caso de corte de internet) y sincroniza simultáneamente con un **Servidor remoto** para la gestión centralizada y análisis estadístico.

## 🧩 Diagrama de arquitectura del sistema

> **Diagrama de arquitectura:**
>
> ![Flujo de trabajo](docs/Diagrama_de_flujo.png)
>

## ⚙️ Arquitectura de hardware y sensores
El dispositivo integra microcontroladores y sensores calibrados para la detección precisa:

* **Microcontroladores:** Integración de **Arduino UNO** (adquisición de datos) con módulo **NodeMCU/ESP8266** (Gateway WiFi).
* **Sensores Implementados:**
    * 🌡️ **Temperatura:** LM35 (Rango 55°C a 150°C).
    * ☣️ **Calidad del aire/gases:** MQ-135 calibrado para detectar Amoníaco, CO2, CO y Tolueno.
    * 🔊 **Contaminación acústica:** Módulo MAX9812 con micrófono electret para medición de decibeles.
* **Actuadores:** Sistema de alerta visual (LEDs Verde/Rojo) y sonora en el sitio.

## 💻 Stack de software y funcionalidades

* **Backend y API:** PHP para la recepción de peticiones HTTP (POST/GET) desde los microcontroladores.
* **Base de Datos:** **PostgreSQL** para el almacenamiento de logs de incidencias, valores en tiempo real y configuración de parámetros.
* **Frontend:** Interfaz web responsiva para visualizar semáforos de estado, gráficos de incidencias y modificar umbrales de alerta remotamente.
* **Protocolos:** Comunicación Serial (Arduino <-> NodeMCU) y HTTP sobre WiFi (NodeMCU <-> Servidores).

## 🚀 Highlights del proyecto
* **Tolerancia a fallos de red:** Implementación de servidor local para asegurar que la seguridad de la planta no dependa de la conexión a internet externa.
* **Calibración matemática:** Implementación de curvas logarítmicas y fórmulas de conversión de voltaje a unidades físicas (ppm, dB, °C) directamente en el firmware.
* **Gestión centralizada:** Panel de administración para configurar remotamente los límites permitidos de cada gas o ruido sin reprogramar el hardware.

---
*Proyecto desarrollado para la asignatura de TICs I por:
 * Fernanda Lorca
 * Catalina Lorca
 * Rafael Campos
       
Enfocado en seguridad industrial y normativa laboral chilena.*
