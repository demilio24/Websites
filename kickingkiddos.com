<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Kicking Kiddos | Private Swim Lessons in Topeka, KS</title>
    <meta
      name="description"
      content="Private, one-on-one swim lessons for children 16 months and older in Topeka, KS. Kicking Kiddos offers personalized instruction at just $25 per lesson."
    />
    <meta property="og:title" content="Kicking Kiddos | Private Swim Lessons in Topeka, KS" />
    <meta property="og:description" content="Private, one-on-one swim lessons for children 16 months and older in Topeka, KS. Just $25 per lesson. No long-term contracts." />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />

    <style>
      /* =============================================
         CSS VARIABLES
      ============================================= */
      :root {
        --primary: #1a7bc4;
        --primary-dark: #156599;
        --primary-light: #e8f4fc;
        --accent: #f4845f;
        --accent-dark: #d96b45;
        --bg: #ffffff;
        --surface: #f7fbfe;
        --text-primary: #1a2b3c;
        --text-secondary: #5a6b7a;
        --border: #dde8f0;
        --stars: #ffd45d;
        --footer-bg: #112337;

        --space-xs: 8px;
        --space-sm: 16px;
        --space-md: 24px;
        --space-lg: 32px;
        --space-xl: 48px;
        --space-2xl: 64px;
        --space-3xl: 80px;

        --radius-btn: 9999px;
        --radius-card: 14px;
        --radius-img: 14px;
        --radius-pill: 9999px;

        --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.06);
        --shadow-md: 0 4px 20px rgba(0, 0, 0, 0.08);
        --shadow-lg: 0 8px 40px rgba(0, 0, 0, 0.1);
        --shadow-hover: 0 12px 48px rgba(0, 0, 0, 0.14);

        --font: "Poppins", sans-serif;
        --container: 1200px;
        --nav-h: 68px;
      }

      /* =============================================
         RESET & BASE
      ============================================= */
      *,
      *::before,
      *::after {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }
      html {
        scroll-behavior: smooth;
      }
      body {
        font-family: var(--font);
        color: var(--text-primary);
        background: var(--bg);
        line-height: 1.6;
        overflow-x: hidden;
      }
      img {
        max-width: 100%;
        height: auto;
        display: block;
      }
      a {
        color: var(--primary);
        text-decoration: none;
      }

      /* =============================================
         TYPOGRAPHY
      ============================================= */
      h1 {
        font-size: clamp(1.875rem, 5vw, 3.5rem);
        font-weight: 700;
        line-height: 1.1;
        letter-spacing: -0.02em;
      }
      h2 {
        font-size: clamp(1.5rem, 4vw, 2.625rem);
        font-weight: 700;
        line-height: 1.2;
        letter-spacing: -0.01em;
      }
      h3 {
        font-size: clamp(1.25rem, 3vw, 1.75rem);
        font-weight: 600;
        line-height: 1.3;
      }
      h4 {
        font-size: clamp(1.125rem, 2.5vw, 1.375rem);
        font-weight: 600;
        line-height: 1.3;
      }
      p {
        font-size: 1rem;
        line-height: 1.65;
      }

      .eyebrow {
        font-size: 0.75rem;
        font-weight: 600;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        color: var(--primary);
        display: inline-block;
        margin-bottom: var(--space-sm);
      }
      .accent {
        color: var(--primary);
      }

      /* =============================================
         LAYOUT UTILITIES
      ============================================= */
      .container {
        max-width: var(--container);
        margin: 0 auto;
        padding: 0 1.5rem;
      }
      .section {
        padding: 3rem 1.5rem;
        background: var(--bg);
      }
      .section-alt {
        padding: 3rem 1.5rem;
        background: var(--surface);
      }
      .text-center {
        text-align: center;
      }
      .text-narrow {
        max-width: 800px;
        margin-left: auto;
        margin-right: auto;
      }

      .section-header {
        text-align: center;
        margin-bottom: var(--space-2xl);
      }
      .section-header h2 {
        margin-bottom: var(--space-sm);
      }
      .section-header .section-subtitle {
        font-size: 1.125rem;
        color: var(--text-secondary);
        max-width: 700px;
        margin: 0 auto;
      }

      /* =============================================
         BUTTONS
      ============================================= */
      .btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-family: var(--font);
        font-weight: 700;
        padding: 0.875rem 2rem;
        border-radius: var(--radius-btn);
        border: none;
        cursor: pointer;
        text-decoration: none;
        transition: all 0.3s ease;
        letter-spacing: 0.02em;
        font-size: 1rem;
      }
      .btn-lg {
        padding: 1.125rem 2.5rem;
        font-size: 1.125rem;
      }
      .btn-primary {
        background: var(--primary);
        color: #fff;
        min-width: 200px;
      }
      .btn-primary:hover {
        background: var(--primary-dark);
        box-shadow: var(--shadow-lg);
        transform: translateY(-2px);
        color: #fff;
      }
      .btn-white {
        background: #fff;
        color: var(--primary);
      }
      .btn-white:hover {
        background: var(--surface);
        box-shadow: var(--shadow-md);
        transform: translateY(-2px);
        color: var(--primary);
      }
      .btn-subtext {
        display: block;
        font-size: 0.75rem;
        color: var(--text-secondary);
        margin-top: 0.625rem;
        text-align: center;
        font-weight: 400;
      }
      .btn-wrap {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
      }
      .btn-wrap-center {
        align-items: center;
      }

      /* =============================================
         CARDS
      ============================================= */
      .card {
        background: #fff;
        border-radius: var(--radius-card);
        padding: var(--space-lg);
        box-shadow: var(--shadow-md);
        border: 1px solid var(--border);
        transition: all 0.3s ease;
      }
      .card:hover {
        transform: translateY(-4px);
        box-shadow: var(--shadow-hover);
      }
      .card-icon {
        width: 64px;
        height: 64px;
        background: var(--primary-light);
        border-radius: var(--radius-card);
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--primary);
        margin-bottom: var(--space-md);
        flex-shrink: 0;
      }

      /* =============================================
         ANIMATIONS
      ============================================= */
      @keyframes fadeInUp {
        from { opacity: 0; transform: translateY(30px); }
        to   { opacity: 1; transform: translateY(0); }
      }
      @keyframes fadeIn {
        from { opacity: 0; }
        to   { opacity: 1; }
      }
      @keyframes slideInLeft {
        from { opacity: 0; transform: translateX(-30px); }
        to   { opacity: 1; transform: translateX(0); }
      }
      @keyframes slideInRight {
        from { opacity: 0; transform: translateX(30px); }
        to   { opacity: 1; transform: translateX(0); }
      }
      @keyframes formPulse {
        0%   { box-shadow: 0 24px 64px rgba(0,0,0,0.30), 0 0 0 0px rgba(26,123,196,0.5); }
        50%  { box-shadow: 0 24px 64px rgba(0,0,0,0.30), 0 0 0 14px rgba(26,123,196,0); }
        100% { box-shadow: 0 24px 64px rgba(0,0,0,0.30), 0 0 0 0px rgba(26,123,196,0); }
      }
      @keyframes gradient-shift {
        0%   { background-position: 0% 50%; }
        100% { background-position: 100% 50%; }
      }

      .fade-up {
        opacity: 0;
        transform: translateY(28px);
        transition: opacity 0.55s ease, transform 0.55s ease;
      }
      .fade-up.visible {
        opacity: 1;
        transform: translateY(0);
      }
      .fade-up:nth-child(2) { transition-delay: 0.08s; }
      .fade-up:nth-child(3) { transition-delay: 0.16s; }
      .fade-up:nth-child(4) { transition-delay: 0.24s; }
      .fade-up:nth-child(5) { transition-delay: 0.32s; }
      .fade-up:nth-child(6) { transition-delay: 0.40s; }

      /* =============================================
         NAVIGATION
      ============================================= */
      #nav {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
        background: #fff;
        border-bottom: 1px solid var(--border);
        transition: box-shadow 0.3s ease;
        height: var(--nav-h);
        display: flex;
        align-items: center;
      }
      #nav.scrolled {
        box-shadow: var(--shadow-md);
      }
      .nav-inner {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        max-width: var(--container);
        margin: 0 auto;
        padding: 0 1.5rem;
      }
      .nav-logo {
        font-size: 1.25rem;
        font-weight: 700;
        color: var(--text-primary);
        letter-spacing: -0.01em;
      }
      .nav-logo span {
        color: var(--primary);
      }
      .nav-links {
        display: none;
        gap: 4px;
        list-style: none;
        align-items: center;
      }
      .nav-links a {
        color: var(--text-primary);
        font-weight: 600;
        font-size: 0.9375rem;
        padding: 8px 12px;
        transition: color 0.2s ease;
        white-space: nowrap;
      }
      .nav-links a:hover {
        color: var(--primary);
      }
      .nav-cta {
        flex-shrink: 0;
        display: none;
      }
      .hamburger {
        display: flex;
        flex-direction: column;
        gap: 6px;
        cursor: pointer;
        background: none;
        border: none;
        padding: 10px;
        border-radius: 8px;
        transition: background 0.2s;
        z-index: 1001;
        position: relative;
      }
      .hamburger:hover { background: var(--primary-light); }
      .hamburger span {
        display: block;
        width: 24px;
        height: 2px;
        background: var(--text-primary);
        border-radius: 2px;
        transition: all 0.3s ease;
        transform-origin: center;
      }
      .hamburger.open span:nth-child(1) { transform: translateY(8px) rotate(45deg); }
      .hamburger.open span:nth-child(2) { opacity: 0; transform: scaleX(0); }
      .hamburger.open span:nth-child(3) { transform: translateY(-8px) rotate(-45deg); }

      .mobile-backdrop {
        position: fixed;
        inset: 0;
        background: rgba(0, 0, 0, 0);
        z-index: 998;
        pointer-events: none;
        transition: background 0.35s ease;
      }
      .mobile-backdrop.open {
        background: rgba(0, 0, 0, 0.5);
        pointer-events: all;
      }
      .mobile-menu {
        position: fixed;
        top: var(--nav-h);
        left: 0;
        right: 0;
        background: #fff;
        z-index: 999;
        display: flex;
        flex-direction: column;
        transform: translateY(-110%);
        transition: transform 0.38s cubic-bezier(0.4, 0, 0.2, 1);
        overflow-y: auto;
        max-height: 80vh;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.14);
        border-top: 2px solid var(--primary);
      }
      .mobile-menu.open { transform: translateY(0); }
      .mobile-menu-links {
        display: flex;
        flex-direction: column;
        padding: 10px 16px;
        gap: 2px;
      }
      .mobile-menu-links a {
        font-size: 1rem;
        font-weight: 600;
        color: var(--text-primary);
        padding: 13px 16px;
        border-radius: 10px;
        transition: background 0.2s, color 0.2s;
        display: flex;
        align-items: center;
        gap: 10px;
        border-bottom: 1px solid var(--border);
      }
      .mobile-menu-links a:last-child { border-bottom: none; }
      .mobile-menu-links a:hover {
        background: var(--primary-light);
        color: var(--primary);
      }
      .mobile-menu-cta {
        padding: 16px 16px 20px;
      }
      .mobile-menu-cta a {
        display: flex;
        align-items: center;
        justify-content: center;
        background: var(--primary);
        color: #fff;
        font-size: 1rem;
        font-weight: 700;
        padding: 16px 24px;
        border-radius: var(--radius-card);
        text-align: center;
        transition: background 0.25s, box-shadow 0.25s;
      }
      .mobile-menu-cta a:hover {
        background: var(--primary-dark);
        box-shadow: var(--shadow-lg);
        color: #fff;
      }
      .mobile-menu-cta p {
        text-align: center;
        font-size: 0.75rem;
        color: var(--text-secondary);
        margin-top: 8px;
      }

      /* =============================================
         HERO
      ============================================= */
      #hero {
        position: relative;
        min-height: 100vh;
        display: flex;
        align-items: center;
        background-color: var(--primary-dark);
      }
      .hero-bg {
        position: absolute;
        inset: 0;
        overflow: hidden;
      }
      .hero-bg img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        object-position: center;
      }
      .hero-overlay {
        position: absolute;
        inset: 0;
        background: linear-gradient(105deg, rgba(17,35,55,0.82) 0%, rgba(17,35,55,0.45) 100%);
      }
      .hero-container {
        position: relative;
        z-index: 2;
        width: 100%;
        max-width: var(--container);
        margin: 0 auto;
        padding: calc(var(--nav-h) + 2rem) 1.5rem var(--space-3xl);
      }
      .hero-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-2xl);
        align-items: start;
      }
      .hero-badge {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        background: rgba(255,255,255,0.12);
        backdrop-filter: blur(6px);
        border: 1px solid rgba(255,255,255,0.22);
        border-radius: var(--radius-pill);
        padding: 0.4rem 1.1rem;
        color: rgba(255,255,255,0.92);
        font-size: 0.75rem;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.07em;
        margin-bottom: var(--space-md);
      }
      .hero-badge svg { flex-shrink: 0; }
      .hero-text h1 {
        color: #fff;
        margin-bottom: var(--space-md);
      }
      .hero-accent-word {
        background: linear-gradient(135deg, var(--accent) 0%, var(--primary) 100%);
        background-size: 200% auto;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        animation: gradient-shift 3s ease infinite alternate;
      }
      .hero-sub {
        font-size: 1.125rem;
        color: rgba(255,255,255,0.82);
        line-height: 1.6;
        max-width: 500px;
        margin-bottom: var(--space-lg);
      }
      .hero-stats {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 0.75rem;
        max-width: 420px;
      }
      .hero-stat {
        background: rgba(255,255,255,0.10);
        backdrop-filter: blur(8px);
        border: 1px solid rgba(255,255,255,0.16);
        border-radius: 10px;
        padding: 1rem 1.25rem;
        text-align: center;
      }
      .hero-stat-num {
        display: block;
        font-family: var(--font);
        font-size: 1.75rem;
        font-weight: 700;
        color: var(--accent);
        line-height: 1.1;
      }
      .hero-stat-label {
        display: block;
        font-size: 0.75rem;
        color: rgba(255,255,255,0.72);
        font-weight: 500;
        margin-top: 4px;
      }

      /* Form card */
      .hero-form-card {
        background: #fff;
        border-radius: var(--radius-card);
        box-shadow: 0 24px 64px rgba(0,0,0,0.30);
        overflow: hidden;
        transition: border 0.3s;
      }
      .hero-form-card.form-highlight {
        animation: formPulse 1.6s ease-out;
        border: 2px solid var(--primary);
      }
      .form-card-header {
        background: var(--primary);
        padding: var(--space-md) var(--space-lg);
        text-align: center;
      }
      .form-card-header h3 {
        color: #fff;
        font-size: 1.25rem;
        margin-bottom: 4px;
      }
      .form-card-header p {
        color: rgba(255,255,255,0.82);
        font-size: 0.8125rem;
        margin: 0;
      }
      .form-card-body {
        padding: var(--space-lg);
        display: flex;
        flex-direction: column;
        gap: var(--space-sm);
      }
      .form-field {
        display: flex;
        flex-direction: column;
        gap: 6px;
      }
      .form-field label {
        font-size: 0.8125rem;
        font-weight: 600;
        color: var(--text-primary);
      }
      .form-field input,
      .form-field textarea {
        width: 100%;
        padding: 0.75rem 1rem;
        border: 1.5px solid var(--border);
        border-radius: 8px;
        font-size: 0.9375rem;
        font-family: var(--font);
        color: var(--text-primary);
        background: #fff;
        transition: border-color 0.18s, box-shadow 0.18s;
        resize: vertical;
      }
      .form-field input:focus,
      .form-field textarea:focus {
        outline: none;
        border-color: var(--primary);
        box-shadow: 0 0 0 3px rgba(26,123,196,0.12);
      }
      .form-field textarea {
        min-height: 90px;
      }
      .form-submit {
        width: 100%;
        background: var(--primary);
        color: #fff;
        font-family: var(--font);
        font-size: 1.125rem;
        font-weight: 700;
        padding: 1rem;
        border: none;
        border-radius: var(--radius-btn);
        cursor: pointer;
        transition: background 0.3s, box-shadow 0.3s, transform 0.2s;
        letter-spacing: 0.02em;
        margin-top: 4px;
      }
      .form-submit:hover {
        background: var(--primary-dark);
        box-shadow: var(--shadow-lg);
        transform: translateY(-2px);
      }
      .form-note {
        text-align: center;
        font-size: 0.75rem;
        color: var(--text-secondary);
        margin-top: 4px;
      }

      /* =============================================
         WAVE DIVIDERS
      ============================================= */
      .wave-divider {
        display: block;
        overflow: hidden;
        line-height: 0;
        margin-bottom: -2px;
        position: relative;
        z-index: 1;
      }
      .wave-divider svg {
        display: block;
        width: 100%;
        height: 44px;
      }
      .wave-bg-hero   { background: transparent; }
      .wave-bg-proof  { background: var(--primary); }
      .wave-bg-white  { background: var(--bg); }
      .wave-bg-alt    { background: var(--surface); }
      .wave-bg-primary { background: var(--primary); }
      .wave-fill-proof .wave-main  { fill: var(--primary); }
      .wave-fill-white .wave-main  { fill: var(--bg); }
      .wave-fill-alt .wave-main    { fill: var(--surface); }
      .wave-fill-primary .wave-main { fill: var(--primary); }
      .wave-secondary { opacity: 0.25; }
      .wave-fill-proof .wave-secondary  { fill: var(--primary); }
      .wave-fill-white .wave-secondary  { fill: var(--bg); }
      .wave-fill-alt .wave-secondary    { fill: var(--surface); }
      .wave-fill-primary .wave-secondary { fill: var(--primary); }

      /* =============================================
         PROOF BAR
      ============================================= */
      #proof-bar {
        background: var(--primary);
        padding: var(--space-lg) 0;
      }
      .proof-inner {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        max-width: var(--container);
        margin: 0 auto;
        padding: 0 1.5rem;
        gap: var(--space-md);
      }
      .proof-stat {
        text-align: center;
        padding: 8px 16px;
      }
      .proof-num {
        display: block;
        font-size: clamp(1.75rem, 3vw, 2.25rem);
        font-weight: 700;
        color: #fff;
        line-height: 1.1;
      }
      .proof-label {
        display: block;
        font-size: 0.8125rem;
        color: rgba(255,255,255,0.8);
        font-weight: 500;
        margin-top: 4px;
      }

      /* =============================================
         SECTION-SPECIFIC STYLES
      ============================================= */

      /* --- Why Different --- */
      .why-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-md);
        margin-top: var(--space-xl);
      }
      .why-card .card-icon svg {
        width: 28px;
        height: 28px;
        stroke: var(--primary);
        fill: none;
        stroke-width: 1.5;
      }
      .why-card h4 {
        margin-bottom: 8px;
        color: var(--text-primary);
      }
      .why-card p {
        color: var(--text-secondary);
        font-size: 0.9375rem;
      }

      /* --- Services --- */
      .service-single {
        max-width: 720px;
        margin: 0 auto;
      }
      .service-card {
        background: #fff;
        border: 1px solid var(--border);
        border-radius: var(--radius-card);
        overflow: hidden;
        box-shadow: var(--shadow-md);
      }
      .service-card-header {
        background: var(--primary);
        padding: var(--space-md) var(--space-lg);
        color: #fff;
      }
      .service-card-header h3 { color: #fff; margin-bottom: 4px; }
      .service-price {
        display: inline-block;
        background: rgba(255,255,255,0.18);
        border: 1px solid rgba(255,255,255,0.25);
        border-radius: var(--radius-pill);
        padding: 4px 14px;
        font-size: 0.875rem;
        font-weight: 700;
        color: #fff;
        margin-top: 8px;
      }
      .service-card-body {
        padding: var(--space-lg);
      }
      .service-card-body p {
        color: var(--text-secondary);
        margin-bottom: var(--space-md);
      }
      .service-includes {
        list-style: none;
        display: flex;
        flex-direction: column;
        gap: 10px;
        margin-bottom: var(--space-md);
      }
      .service-includes li {
        display: flex;
        align-items: flex-start;
        gap: 10px;
        font-size: 0.9375rem;
        color: var(--text-primary);
      }
      .service-includes li::before {
        content: "✓";
        color: var(--primary);
        font-weight: 700;
        flex-shrink: 0;
        margin-top: 1px;
      }

      /* --- Process --- */
      .process-steps {
        display: flex;
        flex-direction: column;
        gap: var(--space-xl);
        position: relative;
      }
      .process-step {
        display: flex;
        gap: var(--space-md);
        align-items: flex-start;
      }
      .process-num {
        width: 56px;
        height: 56px;
        min-width: 56px;
        border-radius: var(--radius-pill);
        background: var(--primary);
        color: #fff;
        font-size: 1.25rem;
        font-weight: 700;
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: var(--shadow-md);
        flex-shrink: 0;
      }
      .process-content h3 {
        margin-bottom: 8px;
        color: var(--text-primary);
      }
      .process-content p {
        color: var(--text-secondary);
        font-size: 0.9375rem;
      }

      /* --- Benefits --- */
      .benefits-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-md);
      }
      .benefit-card .card-icon {
        width: 56px;
        height: 56px;
      }
      .benefit-card .card-icon svg {
        width: 28px;
        height: 28px;
        stroke: var(--primary);
        fill: none;
        stroke-width: 1.5;
      }
      .benefit-card h4 { margin-bottom: 8px; }
      .benefit-card p { color: var(--text-secondary); font-size: 0.9375rem; }

      /* --- Who We Help --- */
      .who-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-2xl);
        align-items: center;
      }
      .who-list {
        list-style: none;
        display: flex;
        flex-direction: column;
        gap: 14px;
        margin-bottom: var(--space-xl);
      }
      .who-list li {
        display: flex;
        align-items: flex-start;
        gap: 12px;
        font-size: 1rem;
        color: var(--text-primary);
        font-weight: 500;
      }
      .who-check {
        flex-shrink: 0;
        width: 22px;
        height: 22px;
        color: var(--primary);
        margin-top: 1px;
      }
      .who-image {
        width: 100%;
        height: 400px;
        object-fit: cover;
        border-radius: var(--radius-img);
      }

      /* --- Gallery --- */
      .gallery-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: 1rem;
      }
      .gallery-item {
        border-radius: var(--radius-img);
        overflow: hidden;
        aspect-ratio: 4/3;
        background: var(--border);
      }
      .gallery-item img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.4s ease;
      }
      .gallery-item:hover img { transform: scale(1.04); }

      /* --- Testimonials --- */
      .testimonials-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-md);
      }
      .testimonial-card {
        background: #fff;
        border-radius: var(--radius-card);
        padding: var(--space-lg);
        box-shadow: var(--shadow-md);
        border: 1px solid var(--border);
        display: flex;
        flex-direction: column;
        gap: var(--space-sm);
      }
      .testimonial-stars { color: var(--stars); font-size: 1rem; letter-spacing: 2px; }
      .testimonial-quote {
        font-size: 0.9375rem;
        font-style: italic;
        color: var(--text-secondary);
        line-height: 1.7;
        flex: 1;
      }
      .testimonial-quote::before {
        content: "\201C";
        font-size: 2.5rem;
        color: var(--primary-light);
        line-height: 0;
        vertical-align: -0.7rem;
        margin-right: 4px;
        font-style: normal;
      }
      .testimonial-author strong {
        display: block;
        font-weight: 700;
        color: var(--text-primary);
        font-size: 0.9375rem;
      }
      .testimonial-author span {
        font-size: 0.8125rem;
        color: var(--text-secondary);
      }

      /* --- About --- */
      .about-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-2xl);
        align-items: center;
      }
      .about-photo {
        width: 100%;
        height: 380px;
        object-fit: cover;
        object-position: top center;
        border-radius: var(--radius-img);
      }
      .about-text p {
        color: var(--text-secondary);
        margin-bottom: var(--space-sm);
        font-size: 0.9375rem;
      }
      .about-text h2 { margin-bottom: var(--space-sm); }
      .cred-badges {
        display: flex;
        flex-wrap: wrap;
        gap: 8px;
        margin: var(--space-md) 0;
      }
      .cred-badge {
        display: inline-block;
        padding: 5px 14px;
        border-radius: var(--radius-pill);
        background: var(--primary-light);
        color: var(--primary-dark);
        border: 1px solid var(--primary);
        font-size: 0.75rem;
        font-weight: 700;
        letter-spacing: 0.02em;
      }

      /* --- FAQ --- */
      .faq-list {
        max-width: 800px;
        margin: 0 auto;
        display: flex;
        flex-direction: column;
        gap: 12px;
      }
      .faq-item {
        border: 1px solid var(--border);
        border-radius: var(--radius-card);
        overflow: hidden;
        transition: border-color 0.2s;
      }
      .faq-item.open { border-color: var(--primary); }
      .faq-question {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 12px;
        padding: var(--space-md) var(--space-lg);
        background: none;
        border: none;
        cursor: pointer;
        font-family: var(--font);
        font-size: 1rem;
        font-weight: 700;
        color: var(--text-primary);
        text-align: left;
        min-height: 44px;
        transition: background 0.2s;
      }
      .faq-question:hover { background: var(--primary-light); }
      .faq-icon {
        flex-shrink: 0;
        font-size: 1.25rem;
        color: var(--primary);
        transition: transform 0.3s;
        line-height: 1;
      }
      .faq-item.open .faq-icon { transform: rotate(45deg); }
      .faq-answer {
        max-height: 0;
        overflow: hidden;
        opacity: 0;
        transition: max-height 0.35s ease, opacity 0.3s ease;
      }
      .faq-item.open .faq-answer {
        max-height: 400px;
        opacity: 1;
      }
      .faq-answer-inner {
        padding: 0 var(--space-lg) var(--space-md);
        font-size: 0.9375rem;
        color: var(--text-secondary);
        line-height: 1.7;
      }

      /* --- Final CTA --- */
      #final-cta {
        background: var(--primary);
        padding: 3rem 1.5rem;
        text-align: center;
        color: #fff;
      }
      #final-cta .eyebrow { color: rgba(255,255,255,0.85); }
      #final-cta h2 { color: #fff; margin-bottom: var(--space-sm); }
      #final-cta .cta-body {
        color: rgba(255,255,255,0.85);
        font-size: 1.0625rem;
        max-width: 600px;
        margin: 0 auto var(--space-xl);
      }
      .trust-badges {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 12px;
        margin: var(--space-xl) 0 var(--space-lg);
      }
      .trust-badge {
        display: flex;
        align-items: center;
        gap: 6px;
        background: rgba(255,255,255,0.12);
        border: 1px solid rgba(255,255,255,0.2);
        border-radius: var(--radius-pill);
        padding: 6px 14px;
        font-size: 0.8125rem;
        font-weight: 600;
        color: rgba(255,255,255,0.92);
      }
      .trust-badge svg {
        width: 16px; height: 16px;
        stroke: rgba(255,255,255,0.8);
        fill: none;
        stroke-width: 1.5;
        flex-shrink: 0;
      }
      .cta-contact {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: var(--space-md);
        margin-top: var(--space-md);
      }
      .cta-contact a {
        color: rgba(255,255,255,0.85);
        font-size: 0.9375rem;
        font-weight: 600;
        display: flex;
        align-items: center;
        gap: 6px;
        transition: color 0.2s;
      }
      .cta-contact a:hover { color: #fff; }
      .cta-contact svg {
        width: 18px; height: 18px;
        stroke: currentColor;
        fill: none;
        stroke-width: 1.5;
      }

      /* =============================================
         FOOTER
      ============================================= */
      #footer {
        background: var(--footer-bg);
        padding: var(--space-3xl) 0 var(--space-lg);
        color: rgba(255,255,255,0.7);
      }
      .footer-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: var(--space-2xl);
        max-width: var(--container);
        margin: 0 auto;
        padding: 0 1.5rem;
      }
      .footer-brand-name {
        font-size: 1.25rem;
        font-weight: 700;
        color: #fff;
        margin-bottom: 8px;
      }
      .footer-brand-name span { color: var(--primary); }
      .footer-tagline {
        font-size: 0.875rem;
        color: rgba(255,255,255,0.55);
        margin-bottom: var(--space-md);
        line-height: 1.6;
      }
      .footer-social {
        display: flex;
        gap: 10px;
      }
      .footer-social a {
        width: 38px;
        height: 38px;
        border-radius: var(--radius-pill);
        background: rgba(255,255,255,0.08);
        display: flex;
        align-items: center;
        justify-content: center;
        transition: background 0.2s;
      }
      .footer-social a:hover { background: var(--primary); }
      .footer-social svg {
        width: 18px; height: 18px;
        stroke: rgba(255,255,255,0.8);
        fill: none;
        stroke-width: 1.5;
      }
      .footer-col h5 {
        font-size: 0.8125rem;
        font-weight: 700;
        text-transform: uppercase;
        letter-spacing: 0.08em;
        color: rgba(255,255,255,0.5);
        margin-bottom: var(--space-md);
      }
      .footer-links {
        list-style: none;
        display: flex;
        flex-direction: column;
        gap: 10px;
      }
      .footer-links a {
        color: rgba(255,255,255,0.65);
        font-size: 0.9375rem;
        transition: color 0.2s;
      }
      .footer-links a:hover { color: #fff; }
      .footer-contact-item {
        display: flex;
        align-items: flex-start;
        gap: 10px;
        font-size: 0.9375rem;
        color: rgba(255,255,255,0.65);
        margin-bottom: 12px;
      }
      .footer-contact-item svg {
        width: 18px; height: 18px;
        stroke: var(--primary);
        fill: none;
        stroke-width: 1.5;
        flex-shrink: 0;
        margin-top: 2px;
      }
      .footer-bottom {
        border-top: 1px solid rgba(255,255,255,0.08);
        margin-top: var(--space-2xl);
        padding-top: var(--space-md);
        max-width: var(--container);
        margin-left: auto;
        margin-right: auto;
        padding-left: 1.5rem;
        padding-right: 1.5rem;
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: space-between;
        gap: 12px;
      }
      .footer-bottom p {
        font-size: 0.8125rem;
        color: rgba(255,255,255,0.4);
        margin: 0;
      }
      .footer-bottom a { color: rgba(255,255,255,0.55); }
      .footer-bottom a:hover { color: #fff; }
      .footer-credit {
        text-align: center;
        font-size: 0.75rem !important;
        color: rgba(255,255,255,0.3) !important;
        padding: var(--space-sm) 1.5rem 0;
        max-width: var(--container);
        margin: 0 auto;
      }
      .footer-credit a { color: rgba(255,255,255,0.45); }
      .footer-credit a:hover { color: rgba(255,255,255,0.75); }

      /* =============================================
         RESPONSIVE
      ============================================= */
      @media (min-width: 480px) {
        .proof-inner { grid-template-columns: repeat(2, 1fr); }
        .gallery-grid { grid-template-columns: repeat(2, 1fr); }
      }
      @media (min-width: 768px) {
        .section, .section-alt { padding: var(--space-3xl) 1.5rem; }
        #final-cta { padding: var(--space-3xl) 1.5rem; }
        .wave-divider svg { height: 72px; }
        .why-grid { grid-template-columns: repeat(3, 1fr); }
        .benefits-grid { grid-template-columns: repeat(2, 1fr); }
        .testimonials-grid { grid-template-columns: 1fr; }
        .proof-inner { grid-template-columns: repeat(4, 1fr); }
        .who-image { height: 480px; }
        .about-photo { height: 500px; }
      }
      @media (min-width: 1024px) {
        .nav-links { display: flex; }
        .nav-cta { display: inline-flex; }
        .hamburger { display: none; }
        .hero-grid { grid-template-columns: 1fr 420px; align-items: center; }
        .hero-container {
          padding-top: calc(var(--nav-h) + var(--space-3xl));
        }
        .who-grid { grid-template-columns: 1fr 1fr; }
        .about-grid { grid-template-columns: 1fr 1fr; }
        .testimonials-grid { grid-template-columns: repeat(3, 1fr); }
        .gallery-grid { grid-template-columns: repeat(3, 1fr); }
        .process-steps {
          flex-direction: row;
          align-items: flex-start;
        }
        .process-step { flex-direction: column; align-items: center; text-align: center; flex: 1; }
        .who-image { height: 520px; }
        .about-photo { height: 600px; }
      }
      @media (min-width: 1200px) {
        .proof-inner { grid-template-columns: repeat(4, 1fr); }
      }
    </style>
  </head>

  <body>

    <!-- ========== NAVIGATION ========== -->
    <nav id="nav">
      <div class="nav-inner">
        <a href="#hero" class="nav-logo">
          <span>Kicking</span> Kiddos
        </a>
        <ul class="nav-links">
          <li><a href="#how-it-works">How It Works</a></li>
          <li><a href="#programs">Our Programs</a></li>
          <li><a href="#why-us">Why Kicking Kiddos</a></li>
          <li><a href="#about">Meet Your Instructor</a></li>
          <li><a href="#faq">FAQ</a></li>
        </ul>
        <a href="#hero" class="btn btn-primary nav-cta">Get in Touch</a>
        <button class="hamburger" id="hamburger" aria-label="Open menu">
          <span></span><span></span><span></span>
        </button>
      </div>
    </nav>

    <div class="mobile-backdrop" id="mobile-backdrop"></div>
    <div class="mobile-menu" id="mobile-menu">
      <div class="mobile-menu-links">
        <a href="#how-it-works">How It Works</a>
        <a href="#programs">Our Programs</a>
        <a href="#why-us">Why Kicking Kiddos</a>
        <a href="#about">Meet Your Instructor</a>
        <a href="#faq">FAQ</a>
      </div>
      <div class="mobile-menu-cta">
        <a href="#hero">Get in Touch</a>
        <p>No commitment required.</p>
      </div>
    </div>

    <!-- ========== HERO ========== -->
    <section id="hero">
      <div class="hero-bg">
        <!-- REPLACE WITH ACTUAL IMAGE: https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/UD1yQoD1SaeJsLLevQ4T -->
        <img
          src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/UD1yQoD1SaeJsLLevQ4T"
          alt="Child swimming with instructor in Topeka KS"
          loading="eager"
        />
      </div>
      <div class="hero-overlay"></div>
      <div class="hero-container">
        <div class="hero-grid">

          <div class="hero-text">
            <div class="hero-badge">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="var(--accent)" stroke="none"><path d="M12 2l2.4 7.4H22l-6.2 4.5 2.4 7.4L12 17 5.8 21.3l2.4-7.4L2 9.4h7.6z"/></svg>
              Private Swim Lessons in Topeka, KS &bull; Ages 16 Mo+
            </div>
            <h1>Building <span class="hero-accent-word">Confident</span>, Safe Swimmers One Child at a Time</h1>
            <p class="hero-sub">Kicking Kiddos offers private, one-on-one swim lessons for children 16 months and older in the Topeka area, with instructors who truly love what they do.</p>
            <div class="hero-stats">
              <div class="hero-stat">
                <span class="hero-stat-num">1-on-1</span>
                <span class="hero-stat-label">Private Lessons Only</span>
              </div>
              <div class="hero-stat">
                <span class="hero-stat-num">16 Mo+</span>
                <span class="hero-stat-label">Ages We Teach</span>
              </div>
              <div class="hero-stat">
                <span class="hero-stat-num">$25</span>
                <span class="hero-stat-label">Per Lesson, Per Child</span>
              </div>
              <div class="hero-stat">
                <span class="hero-stat-num">Topeka</span>
                <span class="hero-stat-label">KS and Surrounding Areas</span>
              </div>
            </div>
          </div>

          <div class="hero-form-card">
            <div class="form-card-header">
              <h3>Get in Touch</h3>
              <p>Submit your info and we will call you back.</p>
            </div>
            <div class="form-card-body">
              <!-- UPDATE action URL to your GHL webhook -->
              <form id="hero-form">
                <div class="form-field">
                  <label for="f-name">Full Name *</label>
                  <input type="text" id="f-name" name="name" placeholder="Your full name" required />
                </div>
                <div class="form-field">
                  <label for="f-phone">Phone *</label>
                  <input type="tel" id="f-phone" name="phone" placeholder="(555) 000-0000" required />
                </div>
                <div class="form-field">
                  <label for="f-email">Email *</label>
                  <input type="email" id="f-email" name="email" placeholder="your@email.com" required />
                </div>
                <div class="form-field">
                  <label for="f-note">What are you looking for?</label>
                  <textarea id="f-note" name="message" placeholder="Tell us about your child's age and swimming experience..."></textarea>
                </div>
                <button type="submit" class="form-submit">Get in Touch &rarr;</button>
              </form>
              <p class="form-note">No commitment required. We will be in touch shortly.</p>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- Wave: Hero -> Proof -->
    <div class="wave-divider wave-bg-hero wave-fill-proof" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,52 C240,20 480,64 720,40 C960,16 1200,56 1440,36 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,36 C280,8 560,60 840,32 C1120,4 1280,52 1440,24 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== PROOF BAR ========== -->
    <div id="proof-bar">
      <div class="proof-inner">
        <div class="proof-stat fade-up">
          <span class="proof-num" data-target="1" data-suffix="-on-1">1</span>
          <span class="proof-label">Private Lessons</span>
        </div>
        <div class="proof-stat fade-up">
          <span class="proof-num">$25</span>
          <span class="proof-label">Per Lesson</span>
        </div>
        <div class="proof-stat fade-up">
          <span class="proof-num">16 Mo+</span>
          <span class="proof-label">Ages Welcome</span>
        </div>
        <div class="proof-stat fade-up">
          <span class="proof-num">Topeka</span>
          <span class="proof-label">KS Area</span>
        </div>
      </div>
    </div>

    <!-- Wave: Proof -> Why Different (alt) -->
    <div class="wave-divider wave-bg-proof wave-fill-alt" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,30 C360,65 720,10 1080,50 C1260,68 1380,30 1440,40 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,48 C320,12 640,68 960,28 C1200,0 1360,44 1440,20 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== WHY DIFFERENT ========== -->
    <section class="section-alt" id="why-us">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">A Different Kind of Swim Lesson</span>
          <h2>Why Private Lessons Make All the Difference</h2>
          <p class="section-subtitle">Every child learns at their own pace, and a private setting gives them the focused attention they need to truly thrive in the water.</p>
        </div>

        <p class="text-narrow text-center fade-up" style="color: var(--text-secondary); margin-bottom: var(--space-sm);">
          Group swim environments can be a great starting point for some children, but for many kids the pace moves too quickly or the setting feels overwhelming. When your child is one of many, it can be hard for an instructor to catch every hesitation, every small win, or every moment of readiness.
        </p>
        <p class="text-narrow text-center fade-up" style="color: var(--text-secondary); margin-bottom: var(--space-xl);">
          At Kicking Kiddos, every lesson is built around your child specifically. We take the time to understand their comfort level, their strengths, and the areas where they need extra encouragement before we move forward.
        </p>

        <div class="why-grid">
          <div class="card why-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
              </svg>
            </div>
            <h4>One Instructor, One Child</h4>
            <p>Your child receives undivided attention every single lesson, so no skill goes unnoticed and no concern goes unaddressed.</p>
          </div>
          <div class="card why-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <rect x="3" y="3" width="18" height="18" rx="2"/><path d="M9 12l2 2 4-4"/>
              </svg>
            </div>
            <h4>Customized Lesson Plans</h4>
            <p>We build each lesson plan around your child's current abilities and learning style, so they progress at a pace that feels right for them.</p>
          </div>
          <div class="card why-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78L12 21.23l8.84-8.84a5.5 5.5 0 0 0 0-7.78z"/>
              </svg>
            </div>
            <h4>Instructors Who Genuinely Care</h4>
            <p>Our instructors love what they do and love each child they teach. That warmth makes a real difference in how quickly children build confidence in the water.</p>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--space-2xl);" class="fade-up">
          <div class="btn-wrap btn-wrap-center">
            <a href="#hero" class="btn btn-primary btn-lg">Book Your Spot</a>
            <span class="btn-subtext">No commitment required. Just a quick conversation.</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: Alt -> White -->
    <div class="wave-divider wave-bg-alt wave-fill-white" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,20 C400,55 800,5 1200,48 C1340,60 1400,28 1440,36 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,44 C360,10 720,62 1080,22 C1280,0 1380,38 1440,16 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== PROGRAMS ========== -->
    <section class="section" id="programs">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">Our Programs</span>
          <h2>Simple, Affordable Lessons Built Around Your Child</h2>
          <p class="section-subtitle">One straightforward program, one low price, and everything your child needs to become safer and more confident in the water.</p>
        </div>

        <p class="text-narrow text-center fade-up" style="color: var(--text-secondary); margin-bottom: var(--space-xl);">
          We keep our pricing simple so families can focus on what matters. There are no complicated packages or hidden fees to sort through.
        </p>

        <div class="service-single fade-up">
          <div class="service-card">
            <div class="service-card-header">
              <h3>Private Swim Lessons</h3>
              <span class="service-price">$25 per lesson, per child</span>
            </div>
            <div class="service-card-body">
              <p>Kicking Kiddos offers private, one-on-one swim lessons for children ages 16 months and older. Each lesson is individually tailored to your child's current skill level and comfort in the water. Your instructor will guide your child through water safety fundamentals, swimming technique, and the confidence-building milestones that make a lasting difference.</p>
              <strong style="font-size: 0.875rem; text-transform: uppercase; letter-spacing: 0.06em; color: var(--text-secondary); display: block; margin-bottom: 12px;">What is Included</strong>
              <ul class="service-includes">
                <li>Fully customized lesson plan for each child</li>
                <li>One-on-one instruction for the full lesson</li>
                <li>Progress tracking and instructor follow-up</li>
                <li>Access to the parent band forum for updates and communication</li>
                <li>Class cancellation notices handled by our team</li>
              </ul>
            </div>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--space-2xl);" class="fade-up">
          <div class="btn-wrap btn-wrap-center">
            <a href="#hero" class="btn btn-primary btn-lg">Book Your Spot</a>
            <span class="btn-subtext">$25 per lesson. No long-term contracts required.</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: White -> Alt -->
    <div class="wave-divider wave-bg-white wave-fill-alt" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,55 C300,15 600,65 900,30 C1150,2 1320,50 1440,22 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,28 C480,68 720,8 1080,52 C1260,72 1380,20 1440,40 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== PROCESS ========== -->
    <section class="section-alt" id="how-it-works">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">Getting Started</span>
          <h2>Four Simple Steps to Your Child's First Lesson</h2>
          <p class="section-subtitle">The whole registration process takes less than 30 minutes, and we handle everything after that.</p>
        </div>

        <div class="process-steps" style="max-width: 960px; margin: 0 auto;">
          <div class="process-step fade-up">
            <div class="process-num">1</div>
            <div class="process-content">
              <h3>Register and Schedule</h3>
              <p>Sign up and choose all the lesson dates that work for your family. The process is quick and easy, and you can select as many sessions as you would like from the start.</p>
            </div>
          </div>
          <div class="process-step fade-up">
            <div class="process-num">2</div>
            <div class="process-content">
              <h3>Complete Forms and Pay Your Deposit</h3>
              <p>Fill out your child's intake forms and pay a 50% deposit to hold your spot. This step takes under 30 minutes and confirms your child's place in the schedule.</p>
            </div>
          </div>
          <div class="process-step fade-up">
            <div class="process-num">3</div>
            <div class="process-content">
              <h3>Finish Registration Before Your First Lesson</h3>
              <p>Two weeks before your first lesson, complete the remaining balance and watch the short first-day instructional video so you and your child know exactly what to expect.</p>
            </div>
          </div>
          <div class="process-step fade-up">
            <div class="process-num">4</div>
            <div class="process-content">
              <h3>Watch Your Child Grow in the Water</h3>
              <p>Show up, relax, and let us do what we do best. We take care of every follow-up, communication, and update along the way.</p>
            </div>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--space-2xl);" class="fade-up">
          <div class="btn-wrap btn-wrap-center">
            <a href="#hero" class="btn btn-primary btn-lg">Get in Touch</a>
            <span class="btn-subtext">We will walk you through every step together.</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: Alt -> White -->
    <div class="wave-divider wave-bg-alt wave-fill-white" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,38 C200,8 480,60 760,24 C1040,0 1280,54 1440,30 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,56 C320,20 640,70 960,36 C1200,8 1360,50 1440,20 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== BENEFITS ========== -->
    <section class="section" id="benefits">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">Why Families Choose Us</span>
          <h2>What Your Child Gains From Every Lesson</h2>
          <p class="section-subtitle">Private swim lessons do more than teach swimming skills. They build the confidence and safety awareness that stays with a child for life.</p>
        </div>

        <div class="benefits-grid">
          <div class="card benefit-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
              </svg>
            </div>
            <h4>Water Safety for Life</h4>
            <p>Your child learns the survival skills that matter most, so you can feel more at ease any time they are near water.</p>
          </div>
          <div class="card benefit-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <polyline points="23 6 13.5 15.5 8.5 10.5 1 18"/><polyline points="17 6 23 6 23 12"/>
              </svg>
            </div>
            <h4>Real, Measurable Progress</h4>
            <p>With one instructor focused entirely on your child, you will see advancement that group settings often cannot match.</p>
          </div>
          <div class="card benefit-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/>
              </svg>
            </div>
            <h4>A Comfortable, Low-Pressure Environment</h4>
            <p>Children learn best when they feel safe. Our calm, caring approach means your child is never rushed or overwhelmed.</p>
          </div>
          <div class="card benefit-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 2L2 7l10 5 10-5-10-5z"/><path d="M2 17l10 5 10-5"/><path d="M2 12l10 5 10-5"/>
              </svg>
            </div>
            <h4>Lessons Built Just for Them</h4>
            <p>No two children are the same, and no two lesson plans at Kicking Kiddos are the same either.</p>
          </div>
          <div class="card benefit-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/>
              </svg>
            </div>
            <h4>Clear Communication Every Step of the Way</h4>
            <p>From scheduling to updates and cancellations, we keep parents in the loop through our band forum so nothing falls through the cracks.</p>
          </div>
          <div class="card benefit-card fade-up">
            <div class="card-icon">
              <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78L12 21.23l8.84-8.84a5.5 5.5 0 0 0 0-7.78z"/>
              </svg>
            </div>
            <h4>Instructors Who Love What They Do</h4>
            <p>Teaching children to swim is more than a job for our instructors. That genuine care shows up in every single lesson.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: White -> Alt -->
    <div class="wave-divider wave-bg-white wave-fill-alt" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,42 C360,72 720,12 1080,56 C1280,80 1400,20 1440,32 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,24 C400,60 760,4 1120,44 C1300,62 1400,28 1440,48 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== WHO WE HELP ========== -->
    <section class="section-alt" id="who-we-help">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">Who We Work With</span>
          <h2>Is Kicking Kiddos the Right Fit for Your Family?</h2>
          <p class="section-subtitle">We work with families across Topeka and surrounding areas who want a safe, personalized swimming experience for their child.</p>
        </div>

        <div class="who-grid">
          <div class="fade-up">
            <p style="color: var(--text-secondary); margin-bottom: var(--space-lg);">
              If your child is 16 months or older and you are looking for focused, one-on-one instruction from an instructor who truly cares, you are in the right place.
            </p>
            <ul class="who-list">
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You have a child aged 16 months or older
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You want one-on-one instruction rather than a group class
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You are located in Topeka, KS or the surrounding area
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                Water safety is a priority for your family
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You want progress tailored to your child's unique pace and personality
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You are looking for an instructor who communicates clearly and cares genuinely
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You want a simple, affordable lesson structure without long-term commitments
              </li>
              <li>
                <svg class="who-check" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" xmlns="http://www.w3.org/2000/svg"><polyline points="20 6 9 17 4 12"/></svg>
                You want to feel confident that your child is in safe, loving hands
              </li>
            </ul>
            <div class="btn-wrap fade-up" style="margin-top: var(--space-lg);">
              <a href="#hero" class="btn btn-primary btn-lg">Get in Touch</a>
              <span class="btn-subtext">Serving Topeka, KS and surrounding areas.</span>
            </div>
          </div>
          <div class="fade-up">
            <!-- REPLACE with actual image: https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/IThf0zjrRTdrHbVU4TV0 -->
            <img
              class="who-image"
              src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/IThf0zjrRTdrHbVU4TV0"
              alt="Child and instructor in the water showing a warm and confident interaction"
            />
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: Alt -> Alt (gallery stays alt) — no change needed, gallery is also alt -->
    <!-- Wave: Alt -> White (for gallery into testimonials) -->

    <!-- ========== GALLERY ========== -->
    <section class="section-alt" id="gallery">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">Lessons in Action</span>
          <h2>A Glimpse Into the Kicking Kiddos Experience</h2>
          <p class="section-subtitle">Real lessons, real children, real progress.</p>
        </div>
        <div class="gallery-grid">
          <!-- REPLACE all src values with: https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/[IMAGE_ID] -->
          <div class="gallery-item fade-up">
            <img src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/IThf0zjrRTdrHbVU4TV0" alt="Instructor and child during an active lesson" />
          </div>
          <div class="gallery-item fade-up">
            <img src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/XCIdWdDBRQUzhUUk5Rnr" alt="Child swimming with a joyful expression" />
          </div>
          <div class="gallery-item fade-up">
            <img src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/B73HcykwmSQVxOLWhAaX" alt="Action shot of swim lesson in progress" />
          </div>
          <div class="gallery-item fade-up">
            <img src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/fWOIEu0Teyk2YyI2qZH5" alt="Instructor and child showing water safety technique" />
          </div>
          <div class="gallery-item fade-up">
            <img src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/jAXRRiwWKiCq3VuzoApT" alt="Child showing a milestone moment in the water" />
          </div>
          <div class="gallery-item fade-up">
            <img src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/qHeHGaN9dyiCJCsNlti6" alt="Joyful child comfortable in the water" />
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: Alt -> White -->
    <div class="wave-divider wave-bg-alt wave-fill-white" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,60 C280,20 560,68 840,28 C1120,0 1320,52 1440,32 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,40 C360,72 720,14 1080,56 C1280,80 1400,22 1440,44 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== TESTIMONIALS ========== -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">What Parents Are Saying</span>
          <h2>Families Who Trusted Kicking Kiddos</h2>
          <p class="section-subtitle">Hear directly from the parents whose children have learned to love the water with us.</p>
        </div>

        <div class="testimonials-grid">
          <!-- NOTE: Replace these placeholder quotes with exact quotes from Vagaro reviews -->
          <div class="testimonial-card fade-up">
            <div class="testimonial-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
            <p class="testimonial-quote">My daughter was terrified of the water before we started. After just a few lessons she was jumping in and asking to go back. The one-on-one attention made all the difference.</p>
            <div class="testimonial-author">
              <strong>Sarah M.</strong>
              <span>Topeka, KS</span>
            </div>
          </div>
          <div class="testimonial-card fade-up">
            <div class="testimonial-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
            <p class="testimonial-quote">We tried group lessons first and our son was completely overwhelmed. Private lessons with Kicking Kiddos were exactly what he needed. Patient, caring, and incredibly effective.</p>
            <div class="testimonial-author">
              <strong>Jason R.</strong>
              <span>Topeka, KS</span>
            </div>
          </div>
          <div class="testimonial-card fade-up">
            <div class="testimonial-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
            <p class="testimonial-quote">At $25 per lesson with this level of individual attention, it is honestly the best investment we have made for our kids. Communication is always clear and prompt.</p>
            <div class="testimonial-author">
              <strong>Amanda K.</strong>
              <span>Topeka, KS</span>
            </div>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--space-2xl);" class="fade-up">
          <div class="btn-wrap btn-wrap-center">
            <a href="#hero" class="btn btn-primary btn-lg">Book Your Spot</a>
            <span class="btn-subtext">Join the families who have already seen the difference.</span>
          </div>
        </div>
      </div>
    </section>

    <!-- ========== ABOUT ========== -->
    <section class="section" id="about">
      <div class="container">
        <div class="about-grid">
          <div class="fade-up">
            <!-- REPLACE with instructor photo URL -->
            <img
              class="about-photo"
              src="https://assets.cdn.filesafe.space/[KK_BUCKET_ID]/media/INSTRUCTOR_PHOTO_ID"
              alt="Kicking Kiddos instructor poolside"
            />
          </div>
          <div class="about-text fade-up">
            <span class="eyebrow">Meet Your Instructor</span>
            <h2>Teaching Children to Thrive in the Water</h2>
            <p>At Kicking Kiddos, we believe that swimming is one of the most important life skills a child can gain, and that the experience of learning it should feel safe, encouraging, and even joyful. That belief shapes everything we do, from how we design each lesson plan to how we welcome each child on their first day.</p>
            <p>Our approach is built on patience, genuine care, and a deep understanding of how children learn. We take the time to know each child before we teach them, because a child who feels understood is a child who is ready to grow.</p>
            <!-- NOTE: Personalize with founder name, background story, and certifications from Vagaro account -->
            <div class="cred-badges">
              <span class="cred-badge">Private 1-on-1 Instruction</span>
              <span class="cred-badge">Ages 16 Months and Up</span>
              <span class="cred-badge">Customized Lesson Plans</span>
              <span class="cred-badge">Topeka, KS and Surrounding Areas</span>
              <span class="cred-badge">Band Forum Parent Communication</span>
              <span class="cred-badge">Water Safety Focused</span>
            </div>
            <div class="btn-wrap" style="margin-top: var(--space-md);">
              <a href="#hero" class="btn btn-primary btn-lg">Get in Touch</a>
              <span class="btn-subtext">We would love to meet your family.</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: White -> Alt -->
    <div class="wave-divider wave-bg-white wave-fill-alt" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,18 C280,55 640,8 960,50 C1160,76 1340,18 1440,40 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,46 C320,10 640,64 960,26 C1200,0 1360,48 1440,20 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== FAQ ========== -->
    <section class="section-alt" id="faq">
      <div class="container">
        <div class="section-header fade-up">
          <span class="eyebrow">Common Questions</span>
          <h2>Everything You Want to Know Before Getting Started</h2>
          <p class="section-subtitle">We want you to feel fully informed and completely comfortable before your child's first lesson.</p>
        </div>

        <div class="faq-list fade-up">
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              What age does my child need to be to start lessons?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">We welcome children ages 16 months and older. If you are unsure whether your child is ready, just reach out and we will help you figure out the best time to start.</div>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              How much do lessons cost?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">Lessons are $25 per child, per lesson. There are no complicated packages or surprise fees. Just straightforward, affordable pricing.</div>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              How do I register and get started?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">You can register, choose your lesson dates, complete your forms, and pay your deposit all through our online booking system. The whole process typically takes under 30 minutes.</div>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              What is the deposit policy?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">A 50% deposit of your total lesson balance is required at registration to hold your spot. The remaining balance is due in full two weeks before your first lesson.</div>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              What happens if a lesson is cancelled?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">We handle all cancellation notices through our band forum so you are always informed. If a lesson needs to be rescheduled, we work with your family to find a time that works.</div>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              What should my child bring to their first lesson?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">We will walk you through everything after you register, including a short first-day instructional video that covers exactly what to bring and what to expect.</div>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
              Do you offer lessons for nervous or fearful children?
              <span class="faq-icon">+</span>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">Absolutely. Our one-on-one approach is ideal for children who need extra patience and encouragement. We move entirely at your child's pace, so there is no pressure and no rushing.</div>
            </div>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--space-2xl);" class="fade-up">
          <div class="btn-wrap btn-wrap-center">
            <a href="#hero" class="btn btn-primary btn-lg">Get in Touch</a>
            <span class="btn-subtext">Still have questions? We would love to help.</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Wave: Alt -> Primary -->
    <div class="wave-divider wave-bg-alt wave-fill-primary" aria-hidden="true">
      <svg viewBox="0 0 1440 72" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">
        <path class="wave-secondary" d="M0,50 C400,18 800,68 1200,24 C1360,4 1420,40 1440,28 L1440,72 L0,72 Z"/>
        <path class="wave-main" d="M0,30 C320,62 640,6 960,46 C1200,74 1380,16 1440,52 L1440,72 L0,72 Z"/>
      </svg>
    </div>

    <!-- ========== FINAL CTA ========== -->
    <section id="final-cta">
      <div class="container">
        <div class="text-narrow fade-up">
          <span class="eyebrow">Ready to Get Started?</span>
          <h2>Your Child's First Lesson Starts With One Conversation</h2>
          <p class="cta-body">Reach out today and we will walk you through everything. No commitment, no pressure. Just a quick conversation about your child and what they need.</p>
          <div class="btn-wrap btn-wrap-center" style="margin-bottom: var(--space-xl);">
            <a href="#hero" class="btn btn-white btn-lg">Get in Touch</a>
            <span class="btn-subtext" style="color: rgba(255,255,255,0.65);">Serving Topeka, KS and surrounding areas.</span>
          </div>

          <div class="trust-badges">
            <div class="trust-badge">
              <svg viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
              Water Safety Focused
            </div>
            <div class="trust-badge">
              <svg viewBox="0 0 24 24"><path d="M12 2l2.4 7.4H22l-6.2 4.5 2.4 7.4L12 17 5.8 21.3l2.4-7.4L2 9.4h7.6z" stroke="none" fill="rgba(255,255,255,0.7)"/></svg>
              1-on-1 Private Lessons
            </div>
            <div class="trust-badge">
              <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
              30-Min Registration
            </div>
            <div class="trust-badge">
              <svg viewBox="0 0 24 24"><path d="M21 10c0 7-9 13-9 13S3 17 3 10a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>
              Topeka, KS Area
            </div>
            <div class="trust-badge">
              <svg viewBox="0 0 24 24"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/></svg>
              Parent Band Forum
            </div>
          </div>

          <div class="cta-contact">
            <a href="tel:+1KICKKID">
              <svg viewBox="0 0 24 24"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07A19.5 19.5 0 0 1 4.69 12 19.79 19.79 0 0 1 1.61 3.37 2 2 0 0 1 3.58 1h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L7.91 8.96a16 16 0 0 0 6.13 6.13l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
              <!-- REPLACE with actual phone number -->
              (XXX) XXX-XXXX
            </a>
            <a href="mailto:info@kickingkiddos.com">
              <svg viewBox="0 0 24 24"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
              <!-- REPLACE with actual email -->
              info@kickingkiddos.com
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- ========== FOOTER ========== -->
    <footer id="footer">
      <div class="footer-grid">
        <div>
          <div class="footer-brand-name"><span>Kicking</span> Kiddos</div>
          <p class="footer-tagline">Private, one-on-one swim lessons for children 16 months and older in Topeka, KS. Building confident, safe swimmers one child at a time.</p>
          <div class="footer-social">
            <a href="#" aria-label="Instagram">
              <svg viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
            </a>
            <a href="#" aria-label="Facebook">
              <svg viewBox="0 0 24 24"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg>
            </a>
          </div>
        </div>
        <div class="footer-col">
          <h5>Quick Links</h5>
          <ul class="footer-links">
            <li><a href="#how-it-works">How It Works</a></li>
            <li><a href="#programs">Our Programs</a></li>
            <li><a href="#why-us">Why Kicking Kiddos</a></li>
            <li><a href="#about">Meet Your Instructor</a></li>
            <li><a href="#faq">FAQ</a></li>
            <li><a href="#hero">Get in Touch</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h5>Contact</h5>
          <div class="footer-contact-item">
            <svg viewBox="0 0 24 24"><path d="M21 10c0 7-9 13-9 13S3 17 3 10a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>
            Topeka, KS and Surrounding Areas
          </div>
          <div class="footer-contact-item">
            <svg viewBox="0 0 24 24"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07A19.5 19.5 0 0 1 4.69 12 19.79 19.79 0 0 1 1.61 3.37 2 2 0 0 1 3.58 1h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L7.91 8.96a16 16 0 0 0 6.13 6.13l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
            <!-- REPLACE -->
            (XXX) XXX-XXXX
          </div>
          <div class="footer-contact-item">
            <svg viewBox="0 0 24 24"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
            <!-- REPLACE -->
            info@kickingkiddos.com
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <p>&copy; 2025 Kicking Kiddos. All rights reserved.</p>
        <div style="display: flex; gap: 20px;">
          <a href="#">Privacy Policy</a>
          <a href="#">Terms of Service</a>
        </div>
      </div>
      <p class="footer-credit">Website and marketing systems developed by <a href="https://nilsdigital.com" target="_blank">Nilsdigital.com</a></p>
    </footer>

    <script>
      // ── CONFIG ─────────────────────────────────────────────
      const CONFIG = {
        phone:     "(XXX) XXX-XXXX",   // REPLACE
        email:     "info@kickingkiddos.com", // REPLACE
        instagram: "#",                  // REPLACE
        // GHL form webhook — REPLACE with actual webhook URL
        formWebhook: "https://services.leadconnectorhq.com/hooks/[LOCATION_ID]/webhook-trigger/[TRIGGER_ID]"
      };

      // ── NAV SCROLL ─────────────────────────────────────────
      const nav = document.getElementById("nav");
      window.addEventListener("scroll", () => {
        nav.classList.toggle("scrolled", window.scrollY > 20);
      }, { passive: true });

      // ── HAMBURGER ──────────────────────────────────────────
      const hamburger      = document.getElementById("hamburger");
      const mobileMenu     = document.getElementById("mobile-menu");
      const mobileBackdrop = document.getElementById("mobile-backdrop");

      function openMenu() {
        hamburger.classList.add("open");
        mobileMenu.classList.add("open");
        mobileBackdrop.classList.add("open");
        document.body.style.overflow = "hidden";
      }
      function closeMenu() {
        hamburger.classList.remove("open");
        mobileMenu.classList.remove("open");
        mobileBackdrop.classList.remove("open");
        document.body.style.overflow = "";
      }

      hamburger.addEventListener("click", () => {
        hamburger.classList.contains("open") ? closeMenu() : openMenu();
      });
      mobileBackdrop.addEventListener("click", closeMenu);
      document.querySelectorAll(".mobile-menu-links a, .mobile-menu-cta a").forEach(a => {
        a.addEventListener("click", closeMenu);
      });

      // ── SCROLL ANIMATIONS ──────────────────────────────────
      const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add("visible");
            // Run counter if applicable
            const numEl = entry.target.querySelector("[data-target]") || (entry.target.dataset.target ? entry.target : null);
            if (numEl && !numEl.dataset.animated) {
              animateCounter(numEl);
            }
          }
        });
      }, { threshold: 0.12 });

      document.querySelectorAll(".fade-up").forEach(el => observer.observe(el));

      // Also observe proof bar stat numbers
      document.querySelectorAll("[data-target]").forEach(el => observer.observe(el));

      // ── COUNTER ANIMATION ──────────────────────────────────
      function animateCounter(el) {
        if (el.dataset.animated) return;
        el.dataset.animated = "true";
        const target   = parseFloat(el.dataset.target);
        const suffix   = el.dataset.suffix || "";
        const duration = 1800;
        const start    = performance.now();
        function tick(now) {
          const elapsed = now - start;
          const progress = Math.min(elapsed / duration, 1);
          const eased = 1 - Math.pow(1 - progress, 3);
          const current = Math.round(eased * target);
          el.textContent = current + suffix;
          if (progress < 1) requestAnimationFrame(tick);
        }
        requestAnimationFrame(tick);
      }

      // ── FORM HIGHLIGHT ON CTA CLICK ────────────────────────
      document.querySelectorAll('a[href="#hero"]').forEach(link => {
        link.addEventListener("click", () => {
          setTimeout(() => {
            const form = document.querySelector(".hero-form-card");
            if (form) {
              form.classList.add("form-highlight");
              setTimeout(() => form.classList.remove("form-highlight"), 2000);
            }
          }, 800);
        });
      });

      // ── FAQ ACCORDION ──────────────────────────────────────
      function toggleFaq(btn) {
        const item = btn.closest(".faq-item");
        const isOpen = item.classList.contains("open");
        document.querySelectorAll(".faq-item.open").forEach(i => i.classList.remove("open"));
        if (!isOpen) item.classList.add("open");
      }

      // ── FORM SUBMISSION ────────────────────────────────────
      document.getElementById("hero-form").addEventListener("submit", async function(e) {
        e.preventDefault();
        const btn = this.querySelector(".form-submit");
        btn.textContent = "Sending...";
        btn.disabled = true;

        const payload = {
          name:    document.getElementById("f-name").value.trim(),
          phone:   document.getElementById("f-phone").value.trim(),
          email:   document.getElementById("f-email").value.trim(),
          message: document.getElementById("f-note").value.trim(),
        };

        try {
          await fetch(CONFIG.formWebhook, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(payload),
          });
        } catch(_) {}

        btn.textContent = "We'll be in touch soon!";
        this.reset();
      });
    </script>

  </body>
</html>
