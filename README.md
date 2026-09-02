# Linktree & Biglietto da Visita Digitale

Pagina singola, autocontenuta, in stile **Linktree / Bio-Link** di livello premium, pensata per smartphone, Instagram, WhatsApp e AirDrop.

## Caratteristiche principali

- **Stile Linktree**: Profilo compatto con avatar, ruoli e una lista verticale di link curati e immediati da toccare.
- **Salva in Rubrica**: Pulsante primario in evidenza che genera e scarica istantaneamente la scheda contatto standard (`.vcf` vCard 3.0), compatibile nativamente con iOS (Rubrica Apple) e Android (Google Contatti).
- **Quick Action Bar**: Icone rapide per chiamata diretta, WhatsApp, email e LinkedIn (se un contatto non è valorizzato, il relativo pulsante sparisce da solo).
- **Scheda Bio espandibile**: Fisarmonica pulita per chi vuole approfondire percorso e competenze senza appesantire la prima schermata.
- **Condivisione istantanea**: Tasto rapido con supporto Web Share API (condivisione nativa) e fallback automatico con copia del link negli appunti con toast notification.

## Contatti & Personalizzazione

Tutti i dati si trovano nell'oggetto `CONFIG` all'interno di [`index.html`](file:///Users/christianizzo/Projects/biglietto/index.html) (cerca `① DATI DI CONFIGURAZIONE`):

```javascript
const CONFIG = {
  nome:      'Francesco Piemonte',
  iniziali:  'FP',
  ruolo:     'Presidente Nazionale',
  azienda:   'MO.D.A.V.I. APS-RA',
  citta:     'Salerno · Roma',
  tagline:   'Politiche giovanili, terzo settore e fondi europei.',

  // Recapiti diretti
  tel:       '+39 06 8424 2188',   // Sostituire col numero diretto
  whatsapp:  '',                   // Solo cifre: es. '393401234567'
  email:     'info@modavi.it',     // Sostituire con l'email diretta

  // Link dello stack Linktree
  links: [
    { title: '...', desc: '...', url: '...', badge: '...', icon: '...' },
    ...
  ],
  ...
};
```

### Foto profilo
La pagina carica `foto.jpg` accanto a `index.html`. Se il file manca o non carica, compare automaticamente il monogramma con le iniziali in stile oro/brass.

### Open Graph per WhatsApp
Nel blocco `<head>` di [`index.html`](file:///Users/christianizzo/Projects/biglietto/index.html) ci sono i meta tag `og:url` e `og:image`. Dopo il deploy, inserisci l'URL pubblico definitivo per garantire un'anteprima perfetta su WhatsApp e Telegram.

## Deploy veloce

```bash
npx vercel --prod
```
Oppure trascina la cartella su [Netlify Drop](https://app.netlify.com/drop) o pubblica su GitHub Pages.
