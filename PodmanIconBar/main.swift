// main.swift
import Cocoa

// 1. Forza l'app ad essere un "agente" (senza icona nel Dock)
// Normalmente si fa nell'Info.plist, ma qui lo impostiamo via codice.
// Questa è la chiave cruciale che manca se non la imposti nell'Info.plist/Target Info.
UserDefaults.standard.set(true, forKey: "LSUIElement")

// 2. Crea l'istanza dell'Applicazione
let application = NSApplication.shared

// 3. Crea e assegna il Delegato
let delegate = AppDelegate()
application.delegate = delegate

// 4. Avvia il ciclo di vita dell'Applicazione
application.run()
