# Ventra – Wind Farm Monitoring App

Developing mobile application for real-time monitoring and control of wind farms powered by an OPC UA backend.

Ventra centralizes key functionalities typically split across separate industrial systems: providing real-time turbine metrics, interactive 3D visualization, alerts on system anomalies, and operational statistics – all in a single mobile dashboard.

---

## 🔑 Key Features

- **Authentication** – JWT-based login and session management
- **Turbine List View** – see status, performance, and health of each turbine
- **3D Wind Farm Map** – interactive visualization with click-through turbine details
- **Performance Charts** – real-time and historical output statistics
- **Fault Notifications** – push alerts on critical events and maintenance needs

---

## 🚀 Technologies Used

- **Swift & SwiftUI** – UI framework with declarative layout
- **EnvironmentObject & @StateObject** – for global state and routing
- **Combine** – reactive binding between data and views
- **Swift Concurrency (async/await)** – for async OPC calls and API tasks
- **RESTful API** – middleware API layer consuming OPC UA data
- **OPC UA Integration** – server in Node.js (via `node-opcua`)
- **Docker** – containerized OPC UA server and backend service

---

## 🔧 Architecture & Navigation

The app uses a **Modular Feature Architecture** structure:

- **AppState** – central observable model tracking login state and JWT
- **Router** – renders `Login View` or `Main App Views` based on auth state
- **TabView based Navigation** – between turbines, map, stats, and notifications
- **Reusable Components** – e.g. `Turbine` and `Farm Stats`

---

## 🗂️ Backend Overview

- **OPC UA Server** – generates simulated turbine data (wind speed, power, status)
- **Node.js Backend** – JWT auth + REST API exposing turbine info

---


## 📷 Showcase


<img width="471" height="971" alt="simulator_screenshot_C5738490-5811-4C82-AE0F-E7A9A68BD643" src="https://github.com/user-attachments/assets/2b69312b-9cee-4296-93b8-1e2428510a7f" />
<img width="471" height="971" alt="simulator_screenshot_2B2ED19B-38BE-48C7-B34C-FC18370E7C03" src="https://github.com/user-attachments/assets/c25c99ef-70be-4750-a7db-3711a5b7665a" />

