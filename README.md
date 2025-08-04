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

<img width="489" height="990" alt="image" src="https://github.com/user-attachments/assets/b57d0804-64fa-4c1a-85ae-dae75ee1749d" />
<img width="488" height="992" alt="image" src="https://github.com/user-attachments/assets/ee7ee5b0-ac4e-4cb8-8300-4dc6fac480b8" />



