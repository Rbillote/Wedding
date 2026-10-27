<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <meta name="theme-color" content="#1a2418" />
    <meta name="description" content="RC &amp; Nicole — June 30, 2027. A Filipiniana Garden Reverie." />
    <title>RC &amp; Nicole — A Filipiniana Garden Reverie</title>

    <script>document.documentElement.classList.add('js');</script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,600;1,400&family=Great+Vibes&family=Jost:wght@300;400;500&display=swap" rel="stylesheet" />

    <style>
        /* ============================================================
           FILIPINIANA GARDEN REVERIE — DESIGN TOKENS
        ============================================================ */
        :root{
            --ink:#2a241e;
            --ink-soft:#4a3f36;
            --muted:#7a6a5a;
            --ivory:#faf5ec;
            --ivory-2:#f1e9db;
            --cream:#f7f3e8;
            --dark:#1a2418;
            --dark-2:#0e150c;
            --gold:#c9a961;
            --gold-soft:#dcc088;
            --sage:#8b9d77;
            --sage-deep:#5a6b4a;
            --terracotta:#b8704f;
            --mahogany:#5a3a2e;
            --blush:#e8cfc1;
            --sampaguita:#f7f3e8;
            --line:rgba(42,36,30,.14);
            --serif:'Cormorant Garamond', Georgia, 'Times New Roman', serif;
            --script:'Great Vibes', 'Segoe Script', cursive;
            --sans:'Jost', system-ui, -apple-system, 'Segoe UI', sans-serif;
            --ease:cubic-bezier(.22,.61,.36,1);
            --ease-out:cubic-bezier(.16,1,.3,1);

            /* piña crosshatch texture */
            --pina:
                repeating-linear-gradient(45deg, rgba(201,169,97,.035) 0px, rgba(201,169,97,.035) 1px, transparent 1px, transparent 14px),
                repeating-linear-gradient(-45deg, rgba(201,169,97,.035) 0px, rgba(201,169,97,.035) 1px, transparent 1px, transparent 14px);
        }

        /* ============================================================
           BASE
        ============================================================ */
        *,*::before,*::after{ box-sizing:border-box; }
        html{ -webkit-text-size-adjust:100%; scroll-behavior:smooth; overflow-x:hidden; }
        body{
            margin:0;
            font-family:var(--sans);
            font-weight:300;
            font-size:16px;
            line-height:1.65;
            color:var(--ink);
            background:var(--ivory);
            background-image:var(--pina);
            overflow-x:clip;
            -webkit-font-smoothing:antialiased;
            -moz-osx-font-smoothing:grayscale;
        }
        body.locked{ overflow:hidden; position:fixed; inset:0; width:100%; }
        body.modal-open{ overflow:hidden; }

        h1,h2,h3,h4{
            font-family:var(--serif);
            font-weight:400;
            line-height:1.15;
            margin:0;
            letter-spacing:.01em;
        }
        p{ margin:0 0 1rem; }
        img{ max-width:100%; display:block; }
        a{ color:var(--gold); }
        button{ font-family:inherit; }
        ::selection{ background:var(--gold-soft); color:var(--dark); }

        @media (min-width:900px){
            ::-webkit-scrollbar{ width:10px; }
            ::-webkit-scrollbar-track{ background:var(--ivory-2); }
            ::-webkit-scrollbar-thumb{
                background:linear-gradient(180deg,var(--gold),var(--sage-deep));
                border-radius:10px;
                border:3px solid var(--ivory-2);
            }
        }

        /* ============================================================
           SHARED
        ============================================================ */
        .eyebrow{
            font-family:var(--sans);
            font-size:.7rem;
            font-weight:500;
            letter-spacing:.34em;
            text-transform:uppercase;
            color:var(--gold);
            margin:0 0 .9rem;
        }
        .eyebrow.light{ color:var(--gold-soft); }

        .script{
            font-family:var(--script);
            font-weight:400;
            font-size:clamp(1.7rem,3.4vw,2.6rem);
            line-height:1.2;
            color:var(--gold);
            margin:0 0 .4rem;
        }

        .section-head{
            text-align:center;
            max-width:760px;
            margin:0 auto clamp(2.6rem,7vh,4.5rem);
        }
        .section-head h2{ font-size:clamp(1.55rem,4vw,2.7rem); }

        .btn{
            display:inline-block;
            margin-top:1.6rem;
            padding:.95rem 2.2rem;
            border:1px solid var(--gold);
            border-radius:999px;
            background:transparent;
            color:var(--gold);
            font-family:var(--sans);
            font-size:.7rem;
            font-weight:500;
            letter-spacing:.26em;
            text-transform:uppercase;
            text-decoration:none;
            cursor:pointer;
            transition:background .4s var(--ease), color .4s var(--ease), transform .4s var(--ease);
        }
        .btn:hover{ background:var(--gold); color:var(--dark); transform:translateY(-2px); }
        .btn-solid{ background:var(--gold); color:var(--dark); }
        .btn-solid:hover{ background:#a98a56; }
        .btn-solid:disabled{ opacity:.6; cursor:default; transform:none; }

        /* Decorative leaf ornament between sections */
        .ornament-divider{
            display:flex;
            justify-content:center;
            align-items:center;
            padding:2.4rem 1.5rem;
            background:transparent;
        }
        .ornament-divider span{
            display:block;
            width:130px;
            height:22px;
            background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 130 22'%3E%3Cpath d='M12 11 Q32 3 55 11 Q78 19 98 11 Q112 6 118 11' stroke='%23c9a961' fill='none' stroke-width='0.8' opacity='0.65'/%3E%3Ccircle cx='65' cy='11' r='2.2' fill='%23c9a961' opacity='0.7'/%3E%3Cpath d='M65 5 L67 11 L65 17 L63 11 Z' fill='%238b9d77' opacity='0.55'/%3E%3C/svg%3E");
            background-repeat:no-repeat;
            background-position:center;
            background-size:contain;
        }

        /* ============================================================
           REVEAL
        ============================================================ */
        .js .reveal{
            opacity:0;
            transform:translateY(28px);
            transition:opacity .95s var(--ease), transform .95s var(--ease);
            transition-delay:var(--d,0s);
        }
        .js .reveal.in{ opacity:1; transform:none; }

        /* ============================================================
           SCROLL PROGRESS
        ============================================================ */
        .progress{
            position:fixed;
            top:0; left:0;
            height:2px;
            width:0;
            z-index:950;
            background:linear-gradient(90deg, var(--gold), var(--sage));
            box-shadow:0 0 12px rgba(201,169,97,.6);
            transition:width .12s linear;
            pointer-events:none;
        }

        /* ============================================================
           PAGE 1 — INTRO
        ============================================================ */
        .intro{
            position:fixed;
            inset:0;
            z-index:1000;
            display:grid;
            place-items:center;
            padding:2rem;
            background:
                radial-gradient(ellipse at 20% 30%, rgba(90,107,74,.28) 0%, transparent 50%),
                radial-gradient(ellipse at 80% 70%, rgba(184,112,79,.18) 0%, transparent 55%),
                radial-gradient(circle at 50% 42%, #2a3820 0%, #1a2418 48%, #0e150c 100%);
            color:#f5efe6;
            overflow:hidden;
            transition:opacity 1s var(--ease), visibility 1s var(--ease);
        }
        .intro.hide{ opacity:0; visibility:hidden; pointer-events:none; }

        .intro-glow{
            position:absolute;
            width:70vmax; height:70vmax;
            left:50%; top:45%;
            transform:translate(-50%,-50%);
            background:radial-gradient(circle, rgba(220,192,136,.20) 0%, transparent 62%);
            pointer-events:none;
            animation:glowPulse 7s ease-in-out infinite;
        }
        @keyframes glowPulse{
            0%,100%{ opacity:.6; transform:translate(-50%,-50%) scale(.95); }
            50%    { opacity:1;  transform:translate(-50%,-50%) scale(1.08); }
        }

        /* Capiz-style lantern glows */
        .intro-lanterns{
            position:absolute;
            inset:0;
            pointer-events:none;
            background-image:
                radial-gradient(circle at 15% 25%, rgba(220,192,136,.55) 0%, rgba(220,192,136,.15) 1.2%, transparent 2.5%),
                radial-gradient(circle at 82% 18%, rgba(220,192,136,.45) 0%, rgba(220,192,136,.12) 1.2%, transparent 2.5%),
                radial-gradient(circle at 10% 72%, rgba(220,192,136,.50) 0%, rgba(220,192,136,.13) 1.2%, transparent 2.5%),
                radial-gradient(circle at 88% 78%, rgba(220,192,136,.40) 0%, rgba(220,192,136,.11) 1.2%, transparent 2.5%),
                radial-gradient(circle at 50% 12%, rgba(220,192,136,.45) 0%, rgba(220,192,136,.12) 1.2%, transparent 2.5%),
                radial-gradient(circle at 45% 90%, rgba(220,192,136,.38) 0%, rgba(220,192,136,.10) 1.2%, transparent 2.5%);
            animation:lanternShimmer 8s ease-in-out infinite;
        }
        @keyframes lanternShimmer{
            0%,100%{ opacity:.65; }
            50%    { opacity:1; }
        }

        .intro-inner{ position:relative; text-align:center; }

        .intro-names{
            font-size:.66rem;
            letter-spacing:.55em;
            text-transform:uppercase;
            color:rgba(245,239,230,.55);
            margin:0 0 1.6rem;
            padding-left:.55em;
        }

        .tw-wrap{
            display:inline-flex;
            align-items:baseline;
            justify-content:center;
            min-height:1.45em;
            font-family:var(--serif);
            font-size:clamp(1.75rem,5.6vw,3.6rem);
            font-weight:300;
            letter-spacing:.03em;
            color:#f7f2ea;
        }
        .tw{ white-space:pre-wrap; }
        .caret{
            display:inline-block;
            width:2px;
            height:1em;
            margin-left:.09em;
            background:var(--gold);
            transform:translateY(.13em);
            animation:blink 1s steps(1) infinite;
        }
        @keyframes blink{ 0%,49%{opacity:1;} 50%,100%{opacity:0;} }

        .enter-btn{
            display:inline-block;
            margin-top:2.6rem;
            padding:.95rem 2.4rem;
            border:1px solid rgba(220,192,136,.55);
            border-radius:999px;
            background:transparent;
            color:var(--gold-soft);
            font-size:.68rem;
            font-weight:500;
            letter-spacing:.3em;
            text-transform:uppercase;
            cursor:pointer;
            opacity:0;
            transform:translateY(12px);
            pointer-events:none;
            transition:opacity .9s var(--ease), transform .9s var(--ease),
                       background .4s, color .4s, border-color .4s;
        }
        .enter-btn.show{ opacity:1; transform:none; pointer-events:auto; }
        .enter-btn:hover{
            background:var(--gold);
            border-color:var(--gold);
            color:var(--dark);
            letter-spacing:.34em;
        }

        /* ============================================================
           PAGE 2 — HERO
        ============================================================ */
        .hero{
            position:relative;
            height:100vh;
            height:100svh;
            min-height:560px;
            display:grid;
            place-items:center;
            overflow:hidden;
            isolation:isolate;
            background:var(--dark);
        }

        .hero-bg{
            position:absolute;
            inset:-10%;
            background-image:var(--hero);
            background-size:cover;
            background-position:center;
            filter:saturate(1.02) contrast(1.02) brightness(.98);
            will-change:transform;
            transform:scale(1.04);
        }

        .hero-veil{
            position:absolute;
            inset:0;
            background:
                linear-gradient(180deg,
                    rgba(26,36,24,.70) 0%,
                    rgba(26,36,24,.22) 38%,
                    rgba(26,36,24,.48) 68%,
                    rgba(14,21,12,.88) 100%),
                radial-gradient(ellipse at 50% 30%, transparent 30%, rgba(14,21,12,.35) 100%);
        }

        .hero-content{
            position:relative;
            z-index:3;
            text-align:center;
            color:#fff;
            padding:2rem 1.5rem;
            will-change:transform,opacity;
        }

        .hero-kicker{
            font-size:.7rem;
            letter-spacing:.42em;
            text-transform:uppercase;
            color:rgba(245,239,230,.82);
            margin:0 0 1.4rem;
            padding-left:.42em;
        }

        .hero-title{
            display:flex;
            align-items:center;
            justify-content:center;
            flex-wrap:wrap;
            gap:.05em .22em;
            font-size:clamp(2.9rem,12vw,8.5rem);
            letter-spacing:.04em;
            color:#fff;
            text-shadow:0 4px 44px rgba(0,0,0,.5);
        }
        .hero-title .amp{
            font-family:var(--script);
            font-size:.56em;
            color:var(--gold-soft);
            transform:translateY(-.06em);
        }

        .hero-date{
            margin:1.6rem 0 0;
            font-size:.74rem;
            letter-spacing:.44em;
            text-transform:uppercase;
            color:rgba(245,239,230,.88);
            padding-left:.44em;
        }

        .scroll-cue{
            position:absolute;
            left:50%;
            bottom:2rem;
            transform:translateX(-50%);
            z-index:4;
            display:flex;
            flex-direction:column;
            align-items:center;
            gap:.85rem;
            color:rgba(245,239,230,.78);
            font-size:.62rem;
            letter-spacing:.32em;
            text-transform:uppercase;
            padding-left:.32em;
            pointer-events:none;
        }
        .scroll-cue i{
            display:block;
            width:1px;
            height:54px;
            background:linear-gradient(180deg, rgba(220,192,136,.9), rgba(220,192,136,0));
            animation:cue 2.2s ease-in-out infinite;
        }
        @keyframes cue{
            0%,100%{ transform:scaleY(.35); transform-origin:top; opacity:.35; }
            50%    { transform:scaleY(1);   transform-origin:top; opacity:1; }
        }

        /* ============================================================
           PAGE 3 — SHRINKING GALLERY
        ============================================================ */
        .stage{
            position:relative;
            height:320vh;
            background:linear-gradient(180deg, #14210f 0%, #1e2d18 45%, #14210f 100%);
        }

        .stage-sticky{
            position:sticky;
            top:0;
            height:100vh;
            height:100svh;
            overflow:hidden;
            display:grid;
            place-items:center;
        }

        .stage-hero{
            position:absolute;
            inset:0;
            overflow:hidden;
            z-index:1;
            will-change:transform;
            backface-visibility:hidden;
            transform-origin:center center;
            box-shadow:0 40px 90px rgba(0,0,0,.3);
        }
        .stage-hero img{
            display:block;
            width:100%;
            height:100%;
            object-fit:cover;
            filter:saturate(1.02) brightness(.98);
        }

        .js .fly{ opacity:0; }
        .fly{
            position:absolute;
            left:50%;
            top:50%;
            margin:0;
            width:150px;
            border-radius:6px;
            overflow:hidden;
            background:#1e2d18;
            box-shadow:
                0 24px 48px rgba(0,0,0,.65),
                0 0 0 1px rgba(201,169,97,.14);
            will-change:transform,opacity;
            z-index:2;
            transform:translate(-50%,-50%);
            backface-visibility:hidden;
        }
        .fly img{
            display:block;
            width:100%;
            height:100%;
            object-fit:cover;
            filter:saturate(1.02) brightness(.98);
        }

        /* ============================================================
           PAGE 4 — QUOTE
        ============================================================ */
        .quote-sec{
            padding:clamp(5rem,14vh,10rem) 1.5rem;
            background:var(--ivory);
            background-image:var(--pina);
            text-align:center;
        }
        .quote-inner{ max-width:820px; margin:0 auto; }

        .quote{
            font-family:var(--serif);
            font-size:clamp(1.3rem,2.9vw,2.05rem);
            line-height:1.55;
            color:var(--ink-soft);
            margin:1.2rem auto 0;
            max-width:34ch;
        }
        .quote em{ font-style:italic; color:var(--gold); }

        .rule{
            width:1px;
            height:70px;
            margin:2.6rem auto 0;
            background:linear-gradient(180deg, var(--gold), rgba(201,169,97,0));
        }

        /* ============================================================
           PAGE 5 — OUR STORY
        ============================================================ */
        .story{
            padding:clamp(3.5rem,9vh,7rem) 0 clamp(2rem,6vh,4rem);
            background:linear-gradient(180deg, var(--ivory-2) 0%, #ebe0cd 100%);
            background-image:var(--pina);
        }

        .story > .section-head{ padding:0 1.5rem; }

        .chapter-scroll{
            position:relative;
            height:260vh;
        }

        .chapter-sticky{
            position:sticky;
            top:0;
            height:100vh;
            height:100svh;
            display:flex;
            align-items:center;
            justify-content:center;
            padding:clamp(1rem,3vh,2rem) 1.5rem;
            overflow:hidden;
        }

        .chapter-layout{
            width:100%;
            max-width:1140px;
            display:grid;
            grid-template-columns:1fr 1fr;
            align-items:center;
            gap:clamp(2rem,5vw,4rem);
        }

        .chapter-head h3{
            font-size:clamp(1.5rem,3.4vw,2.4rem);
            margin:.55rem 0 1rem;
        }
        .chapter-head p{
            color:#5a4a3d;
            font-size:.98rem;
            line-height:1.85;
            margin:0;
            max-width:46ch;
        }
        .chapter-no{
            display:inline-block;
            font-size:.66rem;
            font-weight:500;
            letter-spacing:.36em;
            text-transform:uppercase;
            color:var(--gold);
        }

        /* ---------- POLAROID ---------- */
        .polaroid{
            display:block;
            margin:0 auto;
            padding:0;
            border:0;
            background:none;
            font:inherit;
            color:inherit;
            text-align:inherit;
            cursor:pointer;
            -webkit-tap-highlight-color:transparent;
            width:min(380px, 78vw);
            transform:rotate(-2deg);
            transition:transform .6s var(--ease), filter .6s var(--ease);
            will-change:transform;
            outline:none;
        }
        .polaroid:hover,
        .polaroid:focus-visible{ transform:rotate(0deg) scale(1.015); }
        .polaroid:focus-visible .polaroid-frame{
            box-shadow:
                0 0 0 3px var(--gold),
                0 1px 2px rgba(0,0,0,.08),
                0 30px 60px -28px rgba(42,36,30,.6);
        }

        .polaroid-frame{
            background:#fdfaf3;
            padding:14px 14px 0;
            border-radius:3px;
            box-shadow:
                0 1px 2px rgba(0,0,0,.08),
                0 30px 60px -28px rgba(42,36,30,.55);
            transition:box-shadow .5s var(--ease);
        }

        .polaroid-photos{
            position:relative;
            aspect-ratio:4 / 5;
            overflow:hidden;
            background:#e3d9c6;
        }
        .polaroid-photos::after{
            content:'';
            position:absolute;
            inset:0;
            box-shadow:inset 0 0 24px rgba(90,58,46,.18);
            pointer-events:none;
            z-index:5;
        }

        .polaroid-photo{
            position:absolute;
            inset:0;
            width:100%;
            height:100%;
            object-fit:cover;
            opacity:0;
            will-change:opacity, transform;
            backface-visibility:hidden;
            transform:scale(1);
            filter:sepia(0.06) saturate(1.05) brightness(1.02);
        }
        .polaroid-photo:first-child{ opacity:1; }

        .polaroid-meta{
            display:flex;
            align-items:baseline;
            justify-content:space-between;
            gap:.75rem;
            padding:16px 6px 22px;
            min-height:58px;
        }

        .polaroid-label{
            font-family:var(--script);
            font-size:clamp(1.05rem,2.4vw,1.35rem);
            line-height:1.2;
            color:var(--mahogany);
            white-space:nowrap;
            overflow:hidden;
            text-overflow:ellipsis;
            transition:opacity .18s ease;
            flex:1 1 auto;
            min-width:0;
        }
        .polaroid-label.swapping{ opacity:0; }

        .polaroid-count{
            flex:0 0 auto;
            font-size:.64rem;
            font-weight:500;
            letter-spacing:.2em;
            color:#9a8672;
            font-variant-numeric:tabular-nums;
        }

        @media (max-width:960px){
            .chapter-scroll{ height:240vh; }
            .chapter-layout{
                grid-template-columns:1fr;
                gap:clamp(1rem,3vh,1.6rem);
                text-align:center;
            }
            .chapter-head p{ margin:0 auto; max-width:52ch; }
            .chapter-head h3{ font-size:clamp(1.4rem,4vw,2rem); }
            .chapter-head p{ font-size:.92rem; line-height:1.75; }
            .polaroid{ width:min(340px, 62vw); }
            .polaroid-photos{ aspect-ratio:1 / 1; }
        }
        @media (max-width:640px){
            .chapter-scroll{ height:220vh; }
            .chapter-sticky{ padding:1rem .9rem; }
            .chapter-layout{ gap:.85rem; }
            .chapter-head h3{ font-size:1.3rem; margin:.4rem 0 .6rem; }
            .chapter-head p{
                font-size:.85rem; line-height:1.65;
                display:-webkit-box;
                -webkit-line-clamp:4;
                -webkit-box-orient:vertical;
                overflow:hidden;
            }
            .polaroid{ width:min(300px, 74vw); }
            .polaroid-frame{ padding:10px 10px 0; }
            .polaroid-meta{ padding:12px 4px 16px; min-height:48px; }
            .polaroid-label{ font-size:1rem; }
        }
        @media (max-width:400px){
            .chapter-head p{ -webkit-line-clamp:3; }
            .polaroid{ width:min(270px, 78vw); }
        }

        /* ============================================================
           PAGE 6 — COUNTDOWN
        ============================================================ */
        .count-sec{
            position:relative;
            padding:clamp(5rem,12vh,9rem) 1.5rem;
            background:
                radial-gradient(ellipse at 50% 20%, rgba(90,107,74,.35) 0%, transparent 55%),
                radial-gradient(circle at 50% 35%, #2c3a24 0%, #1a2418 62%, #0e150c 100%);
            color:#f5efe6;
            text-align:center;
            overflow:hidden;
        }
        .count-glow{
            position:absolute;
            width:80vmax; height:80vmax;
            left:50%; top:20%;
            transform:translate(-50%,-50%);
            background:radial-gradient(circle, rgba(220,192,136,.16) 0%, transparent 60%);
            pointer-events:none;
        }

        .count-inner{ position:relative; z-index:2; }

        .count-date{
            font-family:var(--serif);
            font-size:clamp(1.9rem,6vw,4rem);
            color:#fff;
            margin:.3rem 0 2.8rem;
            letter-spacing:.02em;
        }

        .count-grid{
            display:flex;
            justify-content:center;
            flex-wrap:wrap;
            gap:clamp(.6rem,2.4vw,1.8rem);
        }

        .count-box{
            min-width:clamp(74px,17vw,124px);
            padding:1.25rem .9rem 1.1rem;
            border:1px solid rgba(201,169,97,.32);
            border-radius:12px;
            background:rgba(220,192,136,.045);
            -webkit-backdrop-filter:blur(6px);
            backdrop-filter:blur(6px);
            transition:border-color .4s, transform .4s;
        }
        .count-box:hover{ border-color:rgba(220,192,136,.7); transform:translateY(-3px); }

        .count-num{
            display:block;
            font-family:var(--serif);
            font-size:clamp(1.6rem,5.2vw,2.9rem);
            line-height:1;
            color:var(--gold-soft);
            font-variant-numeric:tabular-nums;
            letter-spacing:.02em;
        }
        .count-lbl{
            display:block;
            margin-top:.65rem;
            font-size:.58rem;
            letter-spacing:.3em;
            text-transform:uppercase;
            color:rgba(245,239,230,.58);
            padding-left:.3em;
        }

        /* ============================================================
           PAGES 7 & 8 — VENUES
        ============================================================ */
        .venue{
            padding:clamp(4rem,10vh,8rem) 1.5rem;
            background:var(--ivory);
            background-image:var(--pina);
        }
        .venue.alt{
            background:var(--ivory-2);
            background-image:var(--pina);
        }

        .venue-inner{
            max-width:1140px;
            margin:0 auto;
            display:grid;
            grid-template-columns:1.05fr .95fr;
            gap:clamp(2rem,5vw,4rem);
            align-items:center;
        }
        .venue.rev .venue-inner{ grid-template-columns:.95fr 1.05fr; }
        .venue.rev .venue-media{ order:2; }

        .venue-media{
            position:relative;
            border-radius:12px;
            padding:10px;
            background:#fdfaf3;
            box-shadow:
                0 1px 2px rgba(0,0,0,.06),
                0 28px 60px -32px rgba(42,36,30,.5);
        }
        .venue-media iframe{
            display:block;
            width:100%;
            aspect-ratio:4/3;
            border:0;
            border-radius:6px;
            filter:saturate(.92) contrast(1.02);
        }

        .venue-copy h2{
            font-size:clamp(1.6rem,3.6vw,2.4rem);
            margin-bottom:1.1rem;
        }
        .venue-addr{
            color:#5a4a3d;
            font-size:1rem;
            margin-bottom:.4rem;
        }
        .venue-when{
            color:var(--gold);
            font-size:.78rem;
            font-weight:500;
            letter-spacing:.18em;
            text-transform:uppercase;
            margin-bottom:1rem;
        }
        .venue-note{
            color:#7a6a5a;
            font-size:.92rem;
            line-height:1.8;
        }

        /* Put both venue buttons on one row, wrap gracefully on mobile */
        .venue-actions {
            display: flex;
            flex-wrap: wrap;
            gap: .75rem;
            margin-top: .5rem;
        }

        /* Ghost button — outlined, no fill */
        .btn-ghost {
            background: transparent;
            color: var(--ink-soft);
            border-color: var(--ink-soft);
            margin-top: 1.6rem; /* matches .btn spacing */
        }

            .btn-ghost:hover {
                background: var(--ink-soft);
                color: var(--ivory);
                transform: translateY(-2px);
            }

        /* On small screens, stack the buttons full-width */
        @media (max-width:520px) {
            .venue-actions {
                flex-direction: column;
                align-items: stretch;
            }

                .venue-actions .btn {
                    width: 100%;
                    text-align: center;
                }
        }

        /* ============================================================
           PAGE 9 — DETAILS
        ============================================================ */
        .details{
            padding:clamp(4rem,10vh,8rem) 1.5rem;
            background:var(--ivory);
            background-image:var(--pina);
        }

        .detail-grid{
            display:grid;
            grid-template-columns:repeat(3,1fr);
            gap:clamp(.9rem,2vw,1.5rem);
            max-width:1060px;
            margin:0 auto;
        }

        .detail-card{
            position:relative;
            padding:2.2rem 1.4rem;
            background:#fdfaf3;
            border:1px solid var(--line);
            border-radius:10px;
            font:inherit;
            color:inherit;
            text-align:center;
            cursor:pointer;
            overflow:hidden;
            transition:transform .5s var(--ease), box-shadow .5s var(--ease), border-color .4s;
            -webkit-tap-highlight-color:transparent;
        }
        .detail-card::after{
            content:"";
            position:absolute;
            inset:0;
            background:linear-gradient(180deg, transparent 45%, rgba(139,157,119,.14));
            opacity:0;
            transition:opacity .5s var(--ease);
            pointer-events:none;
        }
        .detail-card:hover,
        .detail-card:focus-visible{
            transform:translateY(-6px);
            box-shadow:0 28px 52px -28px rgba(42,36,30,.5);
            border-color:rgba(201,169,97,.55);
            outline:none;
        }
        .detail-card:hover::after{ opacity:1; }

        .detail-card .ico{
            display:block;
            font-size:1.75rem;
            line-height:1;
            margin-bottom:.95rem;
        }
        .detail-card h3{
            font-size:1.28rem;
            margin-bottom:.4rem;
        }
        .detail-card p{
            margin:0;
            font-size:.78rem;
            letter-spacing:.06em;
            color:var(--muted);
        }

        /* ============================================================
           PAGE 10 — FAQ
        ============================================================ */
        .faq{
            padding:clamp(4rem,10vh,8rem) 1.5rem clamp(3rem,8vh,6rem);
            background:var(--ivory-2);
            background-image:var(--pina);
        }

        .faq-list{
            max-width:840px;
            margin:0 auto;
            border-top:1px solid var(--line);
        }

        .faq-item{ border-bottom:1px solid var(--line); }

        .faq-q{
            display:flex;
            align-items:center;
            justify-content:space-between;
            gap:1.2rem;
            width:100%;
            padding:1.35rem 0;
            border:0;
            background:none;
            font-family:var(--serif);
            font-size:clamp(1.05rem,2.2vw,1.35rem);
            color:var(--ink);
            text-align:left;
            cursor:pointer;
            transition:color .3s;
            -webkit-tap-highlight-color:transparent;
        }
        .faq-q:hover{ color:var(--gold); }

        .plus{
            position:relative;
            flex:0 0 auto;
            width:16px;
            height:16px;
        }
        .plus::before,
        .plus::after{
            content:"";
            position:absolute;
            background:var(--gold);
            transition:transform .45s var(--ease), opacity .3s var(--ease);
        }
        .plus::before{ left:0; top:7px; width:16px; height:2px; }
        .plus::after { left:7px; top:0; width:2px; height:16px; }
        .faq-item.open .plus::after{ transform:rotate(90deg); opacity:0; }

        .faq-a{
            max-height:0;
            overflow:hidden;
            transition:max-height .6s var(--ease);
        }
        .faq-a p{
            margin:0 0 1.4rem;
            padding-right:2rem;
            color:#5a4a3d;
            font-size:.94rem;
            line-height:1.85;
            max-width:72ch;
        }
        .faq-a strong{ color:var(--ink); font-weight:500; }

        /* ============================================================
           FOOTER
        ============================================================ */
        .footer{
            padding:clamp(3.5rem,9vh,6rem) 1.5rem;
            background:
                radial-gradient(ellipse at 50% 0%, rgba(90,107,74,.35) 0%, transparent 60%),
                var(--dark);
            color:rgba(245,239,230,.75);
            text-align:center;
            position:relative;
        }
        .footer::before{
            content:'';
            position:absolute;
            top:0; left:0; right:0;
            height:1px;
            background:linear-gradient(90deg, transparent, rgba(201,169,97,.55), transparent);
        }
        .footer .script{
            font-size:clamp(2rem,5vw,3rem);
            color:var(--gold-soft);
            margin:0 0 .35rem;
        }
        .footer-date{
            margin:0 0 1.6rem;
            font-size:.68rem;
            letter-spacing:.36em;
            text-transform:uppercase;
            color:rgba(245,239,230,.52);
            padding-left:.36em;
        }
        .footer small{
            font-size:.74rem;
            letter-spacing:.12em;
            opacity:.55;
        }

        /* ============================================================
           MODALS
        ============================================================ */
        .modal{
            position:fixed;
            inset:0;
            z-index:800;
            display:grid;
            place-items:center;
            padding:1.2rem;
            opacity:0;
            visibility:hidden;
            transition:opacity .45s var(--ease), visibility .45s var(--ease);
        }
        .modal.open{ opacity:1; visibility:visible; }

        .modal-veil{
            position:absolute;
            inset:0;
            background:rgba(14,21,12,.78);
            -webkit-backdrop-filter:blur(8px);
            backdrop-filter:blur(8px);
        }

        .modal-box{
            position:relative;
            width:min(880px,100%);
            max-height:88vh;
            overflow-y:auto;
            padding:clamp(1.7rem,4vw,3.2rem);
            background:var(--ivory);
            background-image:var(--pina);
            border-radius:14px;
            box-shadow:0 40px 100px rgba(0,0,0,.55);
            transform:translateY(26px) scale(.98);
            transition:transform .55s var(--ease);
            overscroll-behavior:contain;
        }
        .modal.open .modal-box{ transform:none; }

        .modal-close{
            position:absolute;
            top:1rem;
            right:1rem;
            width:40px;
            height:40px;
            display:grid;
            place-items:center;
            border:1px solid var(--line);
            border-radius:50%;
            background:#fdfaf3;
            color:var(--ink);
            font-size:.95rem;
            cursor:pointer;
            transition:background .3s, color .3s, border-color .3s, transform .3s;
        }
        .modal-close:hover{
            background:var(--dark);
            border-color:var(--dark);
            color:var(--gold-soft);
            transform:rotate(90deg);
        }

        .modal-title{
            font-size:clamp(1.5rem,3.6vw,2.2rem);
            margin-bottom:.6rem;
        }
        .modal-lead{
            color:var(--muted);
            font-size:.94rem;
            line-height:1.8;
            margin:0 0 1.6rem;
            max-width:62ch;
        }

        /* — Family — */
        .people-grid{
            display:grid;
            grid-template-columns:repeat(3,1fr);
            gap:1.4rem;
            margin-top:1.4rem;
        }
        .person{ margin:0; text-align:center; }
        .person img{
            width:100%;
            aspect-ratio:1/1;
            object-fit:cover;
            border-radius:50%;
            box-shadow:
                0 18px 34px -20px rgba(42,36,30,.55),
                0 0 0 4px #fdfaf3,
                0 0 0 5px rgba(201,169,97,.4);
            filter:saturate(.98);
        }
        .person figcaption{ margin-top:.8rem; }
        .person strong{
            display:block;
            font-family:var(--serif);
            font-size:1rem;
            font-weight:400;
            line-height:1.3;
        }
        .person span{
            display:block;
            margin-top:.3rem;
            font-size:.62rem;
            letter-spacing:.18em;
            text-transform:uppercase;
            color:#8a7a6a;
        }

        /* — Dress — */
        .dress-grid{
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:1.4rem;
            margin:1.4rem 0 2rem;
        }
        .dress-fig{ margin:0; }
        .dress-fig img{
            width:100%;
            aspect-ratio:4/5;
            object-fit:cover;
            border-radius:8px;
            box-shadow:0 20px 40px -24px rgba(42,36,30,.55);
            filter:saturate(1.02);
        }
        .dress-fig figcaption{ margin-top:.85rem; }
        .dress-fig strong{
            display:block;
            font-family:var(--serif);
            font-size:1.05rem;
            font-weight:400;
            margin-bottom:.3rem;
        }
        .dress-fig span{
            font-size:.85rem;
            line-height:1.75;
            color:#7a6a5a;
        }

        .palette-label{
            font-size:.66rem;
            letter-spacing:.28em;
            text-transform:uppercase;
            color:var(--gold);
            margin:0 0 .7rem;
        }
        .palette{
            display:flex;
            flex-wrap:wrap;
            gap:.7rem;
        }
        .swatch{
            width:44px;
            height:44px;
            border-radius:50%;
            background:var(--c);
            box-shadow:
                inset 0 0 0 1px rgba(0,0,0,.06),
                0 0 0 3px #fdfaf3,
                0 0 0 4px rgba(201,169,97,.35),
                0 8px 16px -10px rgba(0,0,0,.55);
            transition:transform .35s var(--ease);
        }
        .swatch:hover{ transform:translateY(-4px) scale(1.06); }

        /* — Timeline — */
        .timeline{ list-style:none; margin:0; padding:0; }
        .timeline li{
            display:grid;
            grid-template-columns:100px 1fr;
            gap:1.1rem;
            align-items:baseline;
            padding:.85rem 0;
            border-bottom:1px dashed rgba(42,36,30,.12);
        }
        .timeline li:last-child{ border-bottom:0; }
        .t-time{
            font-size:.66rem;
            font-weight:500;
            letter-spacing:.16em;
            text-transform:uppercase;
            color:var(--gold);
        }
        .t-text{ font-size:.95rem; color:#5a4a3d; }

        /* — Registry — */
        .field{
            display:flex;
            flex-direction:column;
            gap:.45rem;
            margin-bottom:1.15rem;
        }
        .field label{
            font-size:.64rem;
            font-weight:500;
            letter-spacing:.22em;
            text-transform:uppercase;
            color:#8a7a6a;
        }
        .field input,
        .field select,
        .field textarea{
            width:100%;
            padding:.85rem 1rem;
            border:1px solid var(--line);
            border-radius:8px;
            background:#fdfaf3;
            font-family:var(--sans);
            font-size:.95rem;
            font-weight:300;
            color:var(--ink);
            transition:border-color .3s, box-shadow .3s;
        }
        .field textarea{ resize:vertical; min-height:96px; }
        .field input:focus,
        .field select:focus,
        .field textarea:focus{
            outline:none;
            border-color:var(--gold);
            box-shadow:0 0 0 3px rgba(201,169,97,.2);
        }
        .reg-note{
            margin-top:1rem;
            min-height:1.4em;
            font-size:.9rem;
        }
        .reg-note.ok{ color:#4f7d4a; }
        .reg-note.err{ color:#a8453a; }

        /* — Menu — */
        .menu-group{ margin-bottom:1.8rem; }
        .menu-group:last-child{ margin-bottom:0; }
        .menu-group h4{
            font-family:var(--sans);
            font-size:.64rem;
            font-weight:500;
            letter-spacing:.3em;
            text-transform:uppercase;
            color:var(--gold);
            margin-bottom:.7rem;
        }
        .menu-group ul{ list-style:none; margin:0; padding:0; }
        .menu-group li{
            position:relative;
            padding:.32rem 0 .32rem 1.1rem;
            font-size:.95rem;
            color:#5a4a3d;
        }
        .menu-group li::before{
            content:"";
            position:absolute;
            left:0;
            top:.92em;
            width:5px;
            height:5px;
            border-radius:50%;
            background:var(--sage);
        }
        .menu-group em{ color:#8a7a6a; font-style:italic; font-size:.88em; }

        /* — Playlist — */
        .playlist{ list-style:none; margin:0; padding:0; }
        .playlist li{
            display:grid;
            grid-template-columns:158px 1fr;
            gap:1rem;
            align-items:baseline;
            padding:.8rem 0;
            border-bottom:1px dashed rgba(42,36,30,.12);
        }
        .playlist li:last-child{ border-bottom:0; }
        .pl-moment{
            font-size:.62rem;
            font-weight:500;
            letter-spacing:.2em;
            text-transform:uppercase;
            color:var(--gold);
        }
        .pl-song{
            font-family:var(--serif);
            font-size:1.05rem;
            color:#4a3f36;
        }

        /* ============================================================
           LIGHTBOX
        ============================================================ */
        .lightbox{
            position:fixed;
            inset:0;
            z-index:850;
            display:grid;
            place-items:center;
            padding:clamp(1rem,4vw,3rem);
            background:rgba(10,15,8,.96);
            opacity:0;
            visibility:hidden;
            transition:opacity .4s var(--ease), visibility .4s var(--ease);
        }
        .lightbox.open{ opacity:1; visibility:visible; }

        .lb-figure{
            margin:0;
            max-width:min(920px,100%);
            max-height:90vh;
            display:flex;
            flex-direction:column;
            align-items:center;
            transform:scale(.955);
            transition:transform .5s var(--ease);
        }
        .lightbox.open .lb-figure{ transform:none; }

        .lb-figure img{
            display:block;
            max-width:100%;
            max-height:70vh;
            object-fit:contain;
            border-radius:6px;
            box-shadow:0 32px 80px rgba(0,0,0,.7);
            transition:opacity .3s var(--ease);
            filter:saturate(1.02);
        }
        .lb-figure img.swapping{ opacity:0; }

        .lb-cap{
            margin:1.1rem 0 .35rem;
            font-family:var(--serif);
            font-size:1.32rem;
            color:#fff;
            text-align:center;
        }
        .lb-desc{
            margin:0;
            max-width:54ch;
            font-size:.85rem;
            line-height:1.7;
            color:rgba(245,239,230,.65);
            text-align:center;
        }

        .lb-close{
            position:absolute;
            top:1.2rem;
            right:1.2rem;
            z-index:3;
            width:46px;
            height:46px;
            display:grid;
            place-items:center;
            border:1px solid rgba(220,192,136,.3);
            border-radius:50%;
            background:rgba(220,192,136,.06);
            color:var(--gold-soft);
            font-size:1rem;
            cursor:pointer;
            transition:background .3s, transform .3s;
        }
        .lb-close:hover{ background:rgba(220,192,136,.2); transform:rotate(90deg); }

        .lb-nav{
            position:absolute;
            top:50%;
            transform:translateY(-50%);
            z-index:3;
            width:52px;
            height:52px;
            display:grid;
            place-items:center;
            border:1px solid rgba(220,192,136,.28);
            border-radius:50%;
            background:rgba(220,192,136,.05);
            color:var(--gold-soft);
            font-size:1.7rem;
            line-height:1;
            cursor:pointer;
            transition:background .3s, transform .3s;
        }
        .lb-nav:hover{ background:rgba(220,192,136,.18); }
        .lb-prev{ left:1.2rem; }
        .lb-next{ right:1.2rem; }

        /* ============================================================
           RESPONSIVE
        ============================================================ */
        @media (max-width:960px){
            .venue-inner,
            .venue.rev .venue-inner{ grid-template-columns:1fr; }
            .venue.rev .venue-media{ order:0; }
            .detail-grid{ grid-template-columns:repeat(2,1fr); }
            .people-grid{ grid-template-columns:repeat(2,1fr); }
        }
        @media (max-width:720px){
            .dress-grid{ grid-template-columns:1fr; }
        }
        @media (max-width:640px){
            .lb-nav{ width:42px; height:42px; font-size:1.3rem; }
            .lb-prev{ left:.4rem; }
            .lb-next{ right:.4rem; }
            .lb-close{ top:.7rem; right:.7rem; width:40px; height:40px; }
            .timeline li{ grid-template-columns:82px 1fr; gap:.8rem; }
            .playlist li{ grid-template-columns:1fr; gap:.2rem; }
            .modal-box{ max-height:92vh; }
            .hero-title{ gap:.02em .16em; }
        }
        @media (max-width:480px){
            .detail-grid{ grid-template-columns:1fr; }
            .people-grid{ grid-template-columns:1fr 1fr; gap:1rem; }
            .palette .swatch{ width:38px; height:38px; }
        }
        @media (prefers-reduced-motion:reduce){
            html{ scroll-behavior:auto; }
            *,
            *::before,
            *::after{
                animation-duration:.001ms !important;
                animation-iteration-count:1 !important;
                transition-duration:.001ms !important;
            }
        }
    </style>
</head>

<body class="locked">

    <div class="progress" id="progress" aria-hidden="true"></div>

    <!-- =========================================================
         PAGE 1 — INTRO
    ========================================================== -->
    <div class="intro" id="intro">
        <div class="intro-lanterns" aria-hidden="true"></div>
        <div class="intro-glow" aria-hidden="true"></div>
        <div class="intro-inner">
            <p class="intro-names">R C&nbsp;&nbsp;&amp;&nbsp;&nbsp;N I C O L E</p>
            <h1 class="tw-wrap">
                <span class="tw" id="tw"></span><span class="caret" aria-hidden="true"></span>
            </h1>
            <button type="button" class="enter-btn" id="enterBtn">Click to enter</button>
        </div>
    </div>

    <!-- =========================================================
         PAGE 2 — HERO (Tropical Garden)
    ========================================================== -->
    <header class="hero" id="hero"
            style="--hero:url('https://images.unsplash.com/photo-1518495973542-4542c06a5843?auto=format&fit=crop&w=1920&q=80')">
        <div class="hero-bg" aria-hidden="true"></div>
        <div class="hero-veil" aria-hidden="true"></div>

        <div class="hero-content" id="heroContent">
            <p class="hero-kicker reveal">A Filipiniana Garden Reverie</p>
            <h1 class="hero-title">
                <span class="reveal" style="--d:.10s">RC</span>
                <span class="amp reveal" style="--d:.22s">&amp;</span>
                <span class="reveal" style="--d:.34s">Nicole</span>
            </h1>
            <p class="hero-date reveal" style="--d:.50s">June 30, 2027</p>
        </div>

        <div class="scroll-cue" aria-hidden="true">
            <span>Scroll to explore</span>
            <i></i>
        </div>
    </header>

    <!-- =========================================================
         PAGE 3 — SHRINKING GALLERY
    ========================================================== -->
    <section class="stage" id="stage" aria-label="Our moments">
        <div class="stage-sticky">

            <div class="stage-hero" id="stageHero">
                <img src="https://images.unsplash.com/photo-1518495973542-4542c06a5843?auto=format&fit=crop&w=1920&q=80" alt="A tropical garden of light and green" />
            </div>

            <figure class="fly"><img src="https://images.unsplash.com/photo-1545241047-6083a3684587?auto=format&fit=crop&w=600&q=80" alt="" /></figure>
            <figure class="fly"><img src="https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?auto=format&fit=crop&w=600&q=80" alt="" /></figure>
            <figure class="fly"><img src="https://images.unsplash.com/photo-1509316975850-ff9c5deb0cd9?auto=format&fit=crop&w=600&q=80" alt="" /></figure>
            <figure class="fly"><img src="https://images.unsplash.com/photo-1441974231531-c6227db76b6e?auto=format&fit=crop&w=600&q=80" alt="" /></figure>
            <figure class="fly"><img src="https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?auto=format&fit=crop&w=600&q=80" alt="" /></figure>
            <figure class="fly"><img src="https://images.unsplash.com/photo-1518495973542-4542c06a5843?auto=format&fit=crop&w=600&q=80" alt="" /></figure>

        </div>
    </section>

    <!-- =========================================================
         PAGE 4 — INVITATION QUOTE
    ========================================================== -->
    <section class="quote-sec">
        <div class="quote-inner reveal">
            <p class="script">Together with our families</p>
            <p class="quote">
                You're invited to celebrate the story of <em>RC &amp; Nicole</em> —
                two hearts, one adventure, and a lifetime of love,
                set in a garden of sampaguita and sunlight.
            </p>
            <div class="rule" aria-hidden="true"></div>
        </div>
    </section>

    <div class="ornament-divider" aria-hidden="true"><span></span></div>

    <!-- =========================================================
         PAGE 5 — OUR STORY
    ========================================================== -->
    <section class="story" id="story">

        <div class="section-head reveal">
            <p class="eyebrow">Our Story</p>
            <h2>Every love story is beautiful,<br />but ours is our favourite</h2>
        </div>

        <!-- ============ CHAPTER ONE ============ -->
        <article class="chapter-scroll" data-chapter="1">
            <div class="chapter-sticky">
                <div class="chapter-layout">
                    <div class="chapter-head reveal">
                        <span class="chapter-no">Chapter One</span>
                        <h3>How We Met</h3>
                        <p>
                            September 2019. A crowded coffee shop, one spare table, and two people
                            who both refused to leave. RC offered to share the table; Nicole offered
                            to share her book. Three hours later the barista had to ask us to go home.
                        </p>
                    </div>

                    <button type="button" class="polaroid" aria-label="Open chapter photos">
                        <div class="polaroid-frame">
                            <div class="polaroid-photos">
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1447933601403-0c6688de566e?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1447933601403-0c6688de566e?auto=format&fit=crop&w=1400&q=85"
                                     data-title="The Coffee Shop"
                                     data-desc="Where it all began — a table for two, September 2019."
                                     alt="The coffee shop where we met" />
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1521017432531-fbd92d768814?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1521017432531-fbd92d768814?auto=format&fit=crop&w=1400&q=85"
                                     data-title="Our First Photo"
                                     data-desc="One week later, and neither of us could stop smiling."
                                     alt="Our first photo together" />
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1502680390469-be75c86b636f?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1502680390469-be75c86b636f?auto=format&fit=crop&w=1400&q=85"
                                     data-title="That First Autumn"
                                     data-desc="Long walks, cheap wine and conversations that never ended."
                                     alt="Our first autumn together" />
                            </div>
                            <div class="polaroid-meta">
                                <span class="polaroid-label">The Coffee Shop</span>
                                <span class="polaroid-count">01 / 03</span>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
        </article>

        <!-- ============ CHAPTER TWO ============ -->
        <article class="chapter-scroll" data-chapter="2">
            <div class="chapter-sticky">
                <div class="chapter-layout">
                    <div class="chapter-head reveal">
                        <span class="chapter-no">Chapter Two</span>
                        <h3>Falling In Love</h3>
                        <p>
                            Then came the in-between: burnt pancakes on Sunday mornings, road trips
                            with the wrong playlists, and the quiet realisation that home was never
                            a place — it was a person.
                        </p>
                    </div>

                    <button type="button" class="polaroid" aria-label="Open chapter photos">
                        <div class="polaroid-frame">
                            <div class="polaroid-photos">
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1516589178581-6cd7833ae3b2?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1516589178581-6cd7833ae3b2?auto=format&fit=crop&w=1400&q=85"
                                     data-title="Sunday Mornings"
                                     data-desc="Pancakes, coffee, and absolutely no reason to rush."
                                     alt="Sunday mornings together" />
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1583939003579-730e3918a45a?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1583939003579-730e3918a45a?auto=format&fit=crop&w=1400&q=85"
                                     data-title="Our First Trip"
                                     data-desc="Lost in a garden whose name we still can't pronounce."
                                     alt="Our first trip together" />
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1519741497674-611481863552?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1519741497674-611481863552?auto=format&fit=crop&w=1400&q=85"
                                     data-title="The Little Things"
                                     data-desc="Rainy afternoons and dancing in the kitchen."
                                     alt="Dancing in the kitchen" />
                            </div>
                            <div class="polaroid-meta">
                                <span class="polaroid-label">Sunday Mornings</span>
                                <span class="polaroid-count">01 / 03</span>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
        </article>

        <!-- ============ CHAPTER THREE ============ -->
        <article class="chapter-scroll" data-chapter="3">
            <div class="chapter-sticky">
                <div class="chapter-layout">
                    <div class="chapter-head reveal">
                        <span class="chapter-no">Chapter Three</span>
                        <h3>The Next Step</h3>
                        <p>
                            On a quiet beach at sunset, RC got down on one knee. There were tears,
                            there was laughter, and there was a "yes" before the question was even
                            finished. Now we're writing the next chapter — and we want you in it.
                        </p>
                    </div>

                    <button type="button" class="polaroid" aria-label="Open chapter photos">
                        <div class="polaroid-frame">
                            <div class="polaroid-photos">
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1515934751635-c81c6bc9a2d8?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1515934751635-c81c6bc9a2d8?auto=format&fit=crop&w=1400&q=85"
                                     data-title="The Proposal"
                                     data-desc="Sunset, the sea, and one very important question."
                                     alt="The proposal" />
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1605100804763-247f67b3557e?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1605100804763-247f67b3557e?auto=format&fit=crop&w=1400&q=85"
                                     data-title="She Said Yes"
                                     data-desc="The moment the ring went on."
                                     alt="She said yes" />
                                <img class="polaroid-photo"
                                     src="https://images.unsplash.com/photo-1591604466107-ec97de577aff?auto=format&fit=crop&w=700&q=80"
                                     data-full="https://images.unsplash.com/photo-1591604466107-ec97de577aff?auto=format&fit=crop&w=1400&q=85"
                                     data-title="Our Forever Begins"
                                     data-desc="Counting down the days to June 30, 2027."
                                     alt="Our forever begins" />
                            </div>
                            <div class="polaroid-meta">
                                <span class="polaroid-label">The Proposal</span>
                                <span class="polaroid-count">01 / 03</span>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
        </article>

    </section>

    <!-- =========================================================
         PAGE 6 — COUNTDOWN
    ========================================================== -->
    <section class="count-sec" id="countdown">
        <div class="count-glow" aria-hidden="true"></div>
        <div class="count-inner reveal">
            <p class="eyebrow light">So please join us</p>
            <h2 class="count-date">June 30, 2027</h2>
            <div class="count-grid" id="countGrid" role="timer">
                <div class="count-box"><span class="count-num" id="cd-days">--</span><span class="count-lbl">Days</span></div>
                <div class="count-box"><span class="count-num" id="cd-hours">--</span><span class="count-lbl">Hours</span></div>
                <div class="count-box"><span class="count-num" id="cd-mins">--</span><span class="count-lbl">Minutes</span></div>
                <div class="count-box"><span class="count-num" id="cd-secs">--</span><span class="count-lbl">Seconds</span></div>
            </div>
        </div>
    </section>

   <!-- =========================================================
     PAGE 7 — CEREMONY (Immaculate Heart of Mary Parish)
========================================================== -->
<section class="venue" id="ceremony">
    <div class="venue-inner">
        <div class="venue-media reveal">
            <iframe
                title="Ceremony location map — Immaculate Heart of Mary Parish, Antipolo"
                src="https://www.google.com/maps?q=Immaculate%20Heart%20of%20Mary%20Parish%2C%20Antipolo%20City%2C%20Rizal%2C%20Philippines&output=embed&z=16&hl=en"
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"
                allowfullscreen></iframe>
        </div>

        <div class="venue-copy reveal" style="--d:.15s">
            <p class="eyebrow">The Ceremony</p>
            <h2>Immaculate Heart of Mary Parish</h2>
            <p class="venue-addr">Diocese of Antipolo · Antipolo City, Rizal</p>
            <p class="venue-when">Wednesday, June 30, 2027 · 3:00 PM</p>
            <p class="venue-note">
                Doors open at 2:30 PM — please arrive early so we can start on time.
                Sampaguita garlands for every guest at the door.
            </p>

            <div class="venue-actions">
                <a class="btn"
                   target="_blank"
                   rel="noopener"
                   href="https://www.google.com/maps/dir/?api=1&origin=Current+Location&destination=Immaculate+Heart+of+Mary+Parish%2C+Antipolo+City%2C+Rizal%2C+Philippines">
                    Get Directions
                </a>
                <a class="btn btn-ghost"
                   target="_blank"
                   rel="noopener"
                   href="https://www.google.com/maps/search/?api=1&query=Immaculate+Heart+of+Mary+Parish%2C+Antipolo+City%2C+Rizal%2C+Philippines">
                    View on Google Maps
                </a>
            </div>
        </div>
    </div>
</section>

<!-- =========================================================
     PAGE 8 — RECEPTION (Jardin de Miramar Events Venue)
========================================================== -->
<section class="venue alt rev" id="reception">
    <div class="venue-inner">
        <div class="venue-media reveal">
            <iframe
                title="Reception location map — Jardin de Miramar Events Venue, Antipolo"
                src="https://www.google.com/maps?q=Jardin%20de%20Miramar%20Events%20Venue%2C%20Antipolo%20City%2C%20Rizal%2C%20Philippines&output=embed&z=17&hl=en"
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"
                allowfullscreen></iframe>
        </div>

        <div class="venue-copy reveal" style="--d:.15s">
            <p class="eyebrow">The Reception</p>
            <h2>Jardin de Miramar Events Venue</h2>
            <p class="venue-addr">Antipolo City, Rizal, Philippines</p>
            <p class="venue-when">Wednesday, June 30, 2027 · 6:00 PM</p>
            <p class="venue-note">
                Cocktails on the garden lawn at 5:00 PM. Dinner and dancing under
                capiz lanterns and the wide Antipolo sky.
            </p>

            <div class="venue-actions">
                <a class="btn"
                   target="_blank"
                   rel="noopener"
                   href="https://www.google.com/maps/dir/?api=1&origin=Current+Location&destination=14.593664,121.1791979">
                    Get Directions
                </a>
                <a class="btn btn-ghost"
                   target="_blank"
                   rel="noopener"
                   href="https://www.google.com/maps/place/Jardin+de+Miramar+Events+Venue/@14.593664,121.176623,17z/data=!3m1!4b1!4m6!3m5!1s0x3397bf4e3742c851:0x3d82d7645c74b22!8m2!3d14.593664!4d121.1791979!16s%2Fg%2F1td5tpdy">
                    View on Google Maps
                </a>
            </div>
        </div>
    </div>
</section>

    <div class="ornament-divider" aria-hidden="true"><span></span></div>

    <!-- =========================================================
         PAGE 9 — ADDITIONAL DETAILS
    ========================================================== -->
    <section class="details" id="details">
        <div class="section-head reveal">
            <p class="eyebrow">Good To Know</p>
            <h2>The little details</h2>
        </div>

        <div class="detail-grid">
            <button type="button" class="detail-card reveal" style="--d:0s" data-modal="modal-family">
                <span class="ico" aria-hidden="true">💍</span>
                <h3>Family</h3>
                <p>The people who made us</p>
            </button>
            <button type="button" class="detail-card reveal" style="--d:.08s" data-modal="modal-dress">
                <span class="ico" aria-hidden="true">👗</span>
                <h3>Dress Code</h3>
                <p>Filipiniana attire</p>
            </button>
            <button type="button" class="detail-card reveal" style="--d:.16s" data-modal="modal-time">
                <span class="ico" aria-hidden="true">⏱️</span>
                <h3>Time Duration</h3>
                <p>How the day unfolds</p>
            </button>
            <button type="button" class="detail-card reveal" style="--d:.24s" data-modal="modal-registry">
                <span class="ico" aria-hidden="true">✍️</span>
                <h3>Registry</h3>
                <p>Register your attendance</p>
            </button>
            <button type="button" class="detail-card reveal" style="--d:.32s" data-modal="modal-menu">
                <span class="ico" aria-hidden="true">🍽️</span>
                <h3>Dinner Menu</h3>
                <p>A Filipino feast</p>
            </button>
            <button type="button" class="detail-card reveal" style="--d:.40s" data-modal="modal-music">
                <span class="ico" aria-hidden="true">🎵</span>
                <h3>Music</h3>
                <p>The soundtrack of the day</p>
            </button>
        </div>
    </section>

    <!-- =========================================================
         PAGE 10 — FAQ
    ========================================================== -->
    <section class="faq" id="faq">
        <div class="section-head reveal">
            <p class="eyebrow">Questions</p>
            <h2>Frequently asked</h2>
        </div>

        <div class="faq-list reveal">
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">Is there a dress code?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>Filipiniana garden formal, please. Think terno, baro't saya, or a modern Filipiniana gown for her; Barong Tagalog or a light suit in piña or jusi for him. Soft garden tones — sage, sampaguita cream, anahaw gold, terracotta and dusty rose — are lovely. Kindly avoid white and ivory (that's the bride's job).</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">Is the wedding outdoors?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>The ceremony is indoors at the chapel. The reception is outdoors on the garden lawn, under a covered marquee strung with capiz lanterns — so we're comfortable either way. In case of heavy rain, everything moves into the estate's ballroom.</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">What will the weather be like?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>Late June in Tagaytay is warm and breezy — usually 24–30°C by day and cooler in the evening. There's a chance of an afternoon shower, so a light wrap or shawl is a good idea (and beautiful in photos).</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">Can I bring a plus one or my kids?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>We've reserved seats for the guests named on your invitation. If your invite includes a plus one, it will say so. Little ones are warmly welcome at the reception — the ceremony will be adults-only to keep it quiet and intimate.</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">What time should I arrive at the ceremony?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>Please arrive by <strong>2:30 PM</strong>. The ceremony starts at 3:00 PM sharp and the doors close once the bridal march begins. If you're running late, an usher will seat you between readings.</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">I have a food allergy — can I make a special request?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>Absolutely. Note your allergies and dietary needs in the Registry form on this site, or message us directly, and our caterer will prepare a dedicated plate for you. Vegetarian and vegan options are available too — just say the word.</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">Is there parking at the venue?<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>Yes — free parking is available at the chapel, and the estate has a large car park with complimentary valet at the reception entrance. Shuttles will also run between the two venues after the ceremony.</p></div>
            </div>
            <div class="faq-item">
                <button type="button" class="faq-q" aria-expanded="false">Help! I have another question!<span class="plus" aria-hidden="true"></span></button>
                <div class="faq-a"><p>No problem at all — reach out to us at <a href="mailto:rsvp@rcandnicole.com">rsvp@rcandnicole.com</a> or message either of us on the phone. We'd rather answer a hundred questions than have you wondering.</p></div>
            </div>
        </div>
    </section>

    <!-- =========================================================
         FOOTER
    ========================================================== -->
    <footer class="footer">
        <p class="script">RC &amp; Nicole</p>
        <p class="footer-date">June 30, 2027</p>
        <small>Made with love · A Filipiniana Garden Reverie · We can't wait to celebrate with you</small>
    </footer>

    <!-- =========================================================
         MODAL — FAMILY
    ========================================================== -->
    <div class="modal" id="modal-family" aria-hidden="true">
        <div class="modal-veil" data-close></div>
        <div class="modal-box" role="dialog" aria-modal="true" aria-labelledby="family-title">
            <button type="button" class="modal-close" data-close aria-label="Close">✕</button>
            <p class="eyebrow">The People</p>
            <h2 class="modal-title" id="family-title">Our Families</h2>
            <p class="modal-lead">The two families who made this day possible — and who will probably cry the most.</p>

            <div class="people-grid">
                <figure class="person">
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=500&q=80" alt="RC" />
                    <figcaption><strong>Ricardo "RC" Dela Cruz</strong><span>The Groom</span></figcaption>
                </figure>
                <figure class="person">
                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=500&q=80" alt="Nicole" />
                    <figcaption><strong>Nicole Reyes</strong><span>The Bride</span></figcaption>
                </figure>
                <figure class="person">
                    <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?auto=format&fit=crop&w=500&q=80" alt="Father of the groom" />
                    <figcaption><strong>Eduardo &amp; Maria Dela Cruz</strong><span>Father &amp; Mother of the Groom</span></figcaption>
                </figure>
                <figure class="person">
                    <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?auto=format&fit=crop&w=500&q=80" alt="Mother of the bride" />
                    <figcaption><strong>Carmela Reyes</strong><span>Mother of the Bride</span></figcaption>
                </figure>
                <figure class="person">
                    <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=500&q=80" alt="Sister of the groom" />
                    <figcaption><strong>Sofia Dela Cruz</strong><span>Sister of the Groom · Maid of Honour</span></figcaption>
                </figure>
                <figure class="person">
                    <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=500&q=80" alt="Brother of the bride" />
                    <figcaption><strong>Marco Reyes</strong><span>Brother of the Bride · Best Man</span></figcaption>
                </figure>
            </div>
        </div>
    </div>

    <!-- =========================================================
         MODAL — DRESS CODE (Filipiniana)
    ========================================================== -->
    <div class="modal" id="modal-dress" aria-hidden="true">
        <div class="modal-veil" data-close></div>
        <div class="modal-box" role="dialog" aria-modal="true" aria-labelledby="dress-title">
            <button type="button" class="modal-close" data-close aria-label="Close">✕</button>
            <p class="eyebrow">Dress Code</p>
            <h2 class="modal-title" id="dress-title">Filipiniana Garden Formal</h2>
            <p class="modal-lead">Elegant Filipino attire, in soft garden tones. Please avoid white, ivory and cream.</p>

            <div class="dress-grid">
                <figure class="dress-fig">
                    <img src="https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=700&q=80" alt="Filipiniana gown inspiration" />
                    <figcaption>
                        <strong>For Her</strong>
                        <span>Modern terno or baro't saya in soft garden tones — sage, anahaw gold, terracotta, dusty rose. Butterfly sleeves encouraged, flats or block heels for the lawn.</span>
                    </figcaption>
                </figure>
                <figure class="dress-fig">
                    <img src="https://images.unsplash.com/photo-1594938298603-c8148c4dae35?auto=format&fit=crop&w=700&q=80" alt="Barong Tagalog inspiration" />
                    <figcaption>
                        <strong>For Him</strong>
                        <span>Barong Tagalog in piña or jusi — cream, champagne, or a light sage. A light suit in warm earth tones is also welcome. No tie needed; the embroidery speaks for itself.</span>
                    </figcaption>
                </figure>
            </div>

            <p class="palette-label">Suggested palette</p>
            <div class="palette">
                <span class="swatch" style="--c:#f7f3e8" title="Sampaguita"></span>
                <span class="swatch" style="--c:#8b9d77" title="Sage Leaf"></span>
                <span class="swatch" style="--c:#c9a961" title="Anahaw Gold"></span>
                <span class="swatch" style="--c:#b8704f" title="Terracotta"></span>
                <span class="swatch" style="--c:#e8cfc1" title="Dusty Rose"></span>
                <span class="swatch" style="--c:#5a3a2e" title="Mahogany"></span>
            </div>
        </div>
    </div>

    <!-- =========================================================
         MODAL — TIME DURATION
    ========================================================== -->
    <div class="modal" id="modal-time" aria-hidden="true">
        <div class="modal-veil" data-close></div>
        <div class="modal-box" role="dialog" aria-modal="true" aria-labelledby="time-title">
            <button type="button" class="modal-close" data-close aria-label="Close">✕</button>
            <p class="eyebrow">Run of Show</p>
            <h2 class="modal-title" id="time-title">How the day unfolds</h2>

            <ul class="timeline">
                <li><span class="t-time">2:30 PM</span><span class="t-text">Guests arrive at the chapel · sampaguita garlands</span></li>
                <li><span class="t-time">3:00 PM</span><span class="t-text">The ceremony begins</span></li>
                <li><span class="t-time">4:00 PM</span><span class="t-text">Cocktail hour &amp; family photos under the trees</span></li>
                <li><span class="t-time">5:00 PM</span><span class="t-text">Shuttle to the reception</span></li>
                <li><span class="t-time">6:00 PM</span><span class="t-text">Dinner is served — a Filipino feast</span></li>
                <li><span class="t-time">7:00 PM</span><span class="t-text">Speeches &amp; toasts</span></li>
                <li><span class="t-time">7:45 PM</span><span class="t-text">Cake cutting &amp; first dance</span></li>
                <li><span class="t-time">8:30 PM</span><span class="t-text">Dancing under the capiz lanterns</span></li>
                <li><span class="t-time">10:30 PM</span><span class="t-text">Sparkler send-off</span></li>
            </ul>
        </div>
    </div>

    <!-- =========================================================
         MODAL — REGISTRY
    ========================================================== -->
    <div class="modal" id="modal-registry" aria-hidden="true">
        <div class="modal-veil" data-close></div>
        <div class="modal-box" role="dialog" aria-modal="true" aria-labelledby="registry-title">
            <button type="button" class="modal-close" data-close aria-label="Close">✕</button>
            <p class="eyebrow">RSVP</p>
            <h2 class="modal-title" id="registry-title">Register Your Attendance</h2>
            <p class="modal-lead">Kindly respond by May 15, 2027 so we can save your seat at the long table.</p>

            <div class="registry-form" id="registryForm">
                <div class="field">
                    <label for="reg-name">Full name</label>
                    <input id="reg-name" name="name" type="text" placeholder="Your name" autocomplete="name" />
                </div>
                <div class="field">
                    <label for="reg-email">Email address</label>
                    <input id="reg-email" name="email" type="email" placeholder="you@example.com" autocomplete="email" />
                </div>
                <div class="field">
                    <label for="reg-guests">Number of guests (including you)</label>
                    <select id="reg-guests" name="guests">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
                <div class="field">
                    <label for="reg-message">Allergies, dietary needs, or a note for the couple</label>
                    <textarea id="reg-message" name="message" rows="3" placeholder="Optional — but we'd love to hear from you"></textarea>
                </div>
                <button type="button" class="btn btn-solid" id="regSubmit">Send RSVP</button>
                <p class="reg-note" id="regNote" role="status"></p>
            </div>
        </div>
    </div>

    <!-- =========================================================
         MODAL — DINNER MENU (Filipino feast)
    ========================================================== -->
    <div class="modal" id="modal-menu" aria-hidden="true">
        <div class="modal-veil" data-close></div>
        <div class="modal-box" role="dialog" aria-modal="true" aria-labelledby="menu-title">
            <button type="button" class="modal-close" data-close aria-label="Close">✕</button>
            <p class="eyebrow">Dinner</p>
            <h2 class="modal-title" id="menu-title">A Filipino Feast</h2>

            <div class="menu-group">
                <h4>To Begin</h4>
                <ul>
                    <li>Kinilaw na Tanigue — fresh ceviche with coconut cream &amp; calamansi</li>
                    <li>Lumpiang Shanghai with sweet chili &amp; native vinegar</li>
                    <li>Ensaladang Pako — fern salad, salted egg, heirloom tomato</li>
                </ul>
            </div>
            <div class="menu-group">
                <h4>Main Course</h4>
                <ul>
                    <li>Lechon Belly with liver sarsa &amp; atchara</li>
                    <li>Chicken Inasal with annatto rice &amp; toyomansi</li>
                    <li>Kare-Kare with housemade bagoong</li>
                    <li>Pancit Canton with garden vegetables <em>(vegetarian)</em></li>
                </ul>
            </div>
            <div class="menu-group">
                <h4>Sides</h4>
                <ul>
                    <li>Garlic fried rice · Atchara · Fresh lumpia · Sinangag</li>
                </ul>
            </div>
            <div class="menu-group">
                <h4>Dessert</h4>
                <ul>
                    <li>Leche Flan with caramel &amp; dayap</li>
                    <li>Halo-Halo station — shaved ice, ube, leche flan, langka</li>
                    <li>Wedding cake — vanilla bean, calamansi curd &amp; sampaguita cream</li>
                </ul>
            </div>
            <div class="menu-group">
                <h4>Drinks</h4>
                <ul>
                    <li>Sago't Gulaman · Fresh buko · San Miguel · Lambanog cocktails</li>
                    <li>Signature cocktail "The Nicole" — gin, calamansi, lemongrass, soda</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- =========================================================
         MODAL — MUSIC
    ========================================================== -->
    <div class="modal" id="modal-music" aria-hidden="true">
        <div class="modal-veil" data-close></div>
        <div class="modal-box" role="dialog" aria-modal="true" aria-labelledby="music-title">
            <button type="button" class="modal-close" data-close aria-label="Close">✕</button>
            <p class="eyebrow">Playlist</p>
            <h2 class="modal-title" id="music-title">The Soundtrack</h2>

            <ul class="playlist">
                <li><span class="pl-moment">Processional</span><span class="pl-song">Ikaw — Yeng Constantino</span></li>
                <li><span class="pl-moment">Bridal Entrance</span><span class="pl-song">A Thousand Years — Christina Perri</span></li>
                <li><span class="pl-moment">Recessional</span><span class="pl-song">Signed, Sealed, Delivered — Stevie Wonder</span></li>
                <li><span class="pl-moment">First Dance</span><span class="pl-song">Perfect — Ed Sheeran</span></li>
                <li><span class="pl-moment">Father &amp; Daughter</span><span class="pl-song">Ikaw Lamang — Gary Valenciano</span></li>
                <li><span class="pl-moment">Dance Floor</span><span class="pl-song">ABBA · Earth, Wind &amp; Fire · Regine Velasquez · Bruno Mars</span></li>
                <li><span class="pl-moment">Last Song</span><span class="pl-song">September — Earth, Wind &amp; Fire</span></li>
            </ul>
        </div>
    </div>

    <!-- =========================================================
         LIGHTBOX
    ========================================================== -->
    <div class="lightbox" id="lightbox" aria-hidden="true">
        <button type="button" class="lb-close" data-lb-close aria-label="Close">✕</button>
        <button type="button" class="lb-nav lb-prev" data-lb-prev aria-label="Previous">‹</button>
        <button type="button" class="lb-nav lb-next" data-lb-next aria-label="Next">›</button>

        <figure class="lb-figure">
            <img id="lbImg" src="" alt="" />
            <figcaption>
                <p class="lb-cap" id="lbCap"></p>
                <p class="lb-desc" id="lbDesc"></p>
            </figcaption>
        </figure>
    </div>

    <script>
        (function () {
            'use strict';

            var $ = function (sel, ctx) { return (ctx || document).querySelector(sel); };
            var $$ = function (sel, ctx) {
                return Array.prototype.slice.call((ctx || document).querySelectorAll(sel));
            };
            var clamp = function (v, a, b) { return Math.min(b, Math.max(a, v)); };
            var lerp = function (a, b, t) { return a + (b - a) * t; };
            var easeOut = function (t) { return 1 - Math.pow(1 - t, 3); };
            var pad = function (n) { return n < 10 ? '0' + n : String(n); };

            var reduceMotion = window.matchMedia &&
                window.matchMedia('(prefers-reduced-motion: reduce)').matches;

            /* ============ INTRO ============ */
            var intro = $('#intro');
            var twEl = $('#tw');
            var enterBtn = $('#enterBtn');
            var PHRASE = 'Welcome to our story';
            var typed = 0;
            var typingDone = false;
            var hasEntered = false;
            var typeTimer = null;

            function typeStep() {
                typed += 1;
                twEl.textContent = PHRASE.slice(0, typed);
                if (typed >= PHRASE.length) {
                    typingDone = true;
                    enterBtn.classList.add('show');
                    return;
                }
                typeTimer = setTimeout(typeStep, 58 + Math.random() * 62);
            }
            function finishTyping() {
                if (typingDone) return;
                clearTimeout(typeTimer);
                typed = PHRASE.length;
                twEl.textContent = PHRASE;
                typingDone = true;
                enterBtn.classList.add('show');
            }
            function enterSite() {
                if (hasEntered) return;
                hasEntered = true;
                finishTyping();
                intro.classList.add('hide');
                document.body.classList.remove('locked');
                setTimeout(function () { intro.style.display = 'none'; }, 1050);
                setTimeout(initReveal, 180);
                window.scrollTo(0, 0);
                requestAnimationFrame(updateAll);
            }
            enterBtn.addEventListener('click', enterSite);
            intro.addEventListener('click', function (e) {
                if (e.target === intro || e.target === $('.intro-inner', intro)) {
                    finishTyping();
                }
            });
            setTimeout(typeStep, 650);

            /* ============ REVEAL ============ */
            var revealObserver = null;
            function initReveal() {
                var items = $$('.reveal');
                if (!('IntersectionObserver' in window)) {
                    items.forEach(function (el) { el.classList.add('in'); });
                    return;
                }
                revealObserver = new IntersectionObserver(function (entries) {
                    entries.forEach(function (entry) {
                        if (entry.isIntersecting) {
                            entry.target.classList.add('in');
                            revealObserver.unobserve(entry.target);
                        }
                    });
                }, { threshold: 0.12, rootMargin: '0px 0px -6% 0px' });
                items.forEach(function (el) { revealObserver.observe(el); });
            }

            /* ============ PROGRESS + HERO ============ */
            var progressBar = $('#progress');
            var heroSection = $('#hero');
            var heroBg = $('.hero-bg');
            var heroContent = $('#heroContent');

            function updateProgress() {
                var doc = document.documentElement;
                var max = doc.scrollHeight - window.innerHeight;
                var pct = max > 0 ? (window.scrollY / max) * 100 : 0;
                progressBar.style.width = clamp(pct, 0, 100) + '%';
            }
            function updateHero() {
                if (!heroSection) return;
                var y = window.scrollY;
                var h = window.innerHeight;
                if (y > h * 1.35) return;
                if (heroBg) {
                    heroBg.style.transform =
                        'translate3d(0,' + (y * 0.30).toFixed(2) + 'px,0) scale(1.04)';
                }
                if (heroContent) {
                    var fade = clamp(1 - y / (h * 0.68), 0, 1);
                    heroContent.style.transform =
                        'translate3d(0,' + (y * 0.16).toFixed(2) + 'px,0)';
                    heroContent.style.opacity = fade.toFixed(3);
                }
            }

            /* ============ STAGE ============ */
            var stage = $('#stage');
            var stageHero = $('#stageHero');
            var flyEls = $$('.fly');
            var flySlots = [];
            var heroEndScale = 0.34;

            var FINAL_SLOTS = [
                { x: -0.94, y: -0.58, r: -7 },
                { x: -1.02, y: 0.58, r: 6 },
                { x: 0.94, y: -0.58, r: 7 },
                { x: 1.02, y: 0.58, r: -6 },
                { x: -0.05, y: -1.02, r: 4 },
                { x: 0.05, y: 1.02, r: -4 }
            ];

            function layoutStage() {
                if (!stage || !stageHero) return;
                var vw = window.innerWidth;
                var vh = window.innerHeight;
                var isMobile = vw < 760;
                var rx = Math.min(vw * 0.345, 400);
                var ry = Math.min(vh * 0.305, 295);
                var fw = isMobile ? Math.min(vw * 0.205, 100) : Math.min(vw * 0.132, 168);
                var fh = fw * 4 / 3;
                heroEndScale = isMobile ? 0.46 : 0.34;
                flySlots = flyEls.map(function (el, i) {
                    var f = FINAL_SLOTS[i % FINAL_SLOTS.length];
                    var fx = f.x * rx;
                    var fy = f.y * ry;
                    var sx, sy;
                    if (Math.abs(f.x) > 0.5) {
                        sx = f.x < 0 ? -vw * 0.92 : vw * 0.92;
                        sy = fy * 0.35;
                    } else {
                        sx = fx * 2.2;
                        sy = f.y < 0 ? -vh * 0.85 : vh * 0.85;
                    }
                    el.style.width = fw + 'px';
                    el.style.height = fh + 'px';
                    return { el: el, sx: sx, sy: sy, fx: fx, fy: fy, sr: f.r * 4, r: f.r };
                });
                updateStage();
            }
            function updateStage() {
                if (!stage || !stageHero) return;
                var rect = stage.getBoundingClientRect();
                var total = stage.offsetHeight - window.innerHeight;
                if (total <= 0) return;
                var p = clamp(-rect.top / total, 0, 1);
                var hp = easeOut(clamp((p - 0.02) / 0.62, 0, 1));
                var sc = lerp(1, heroEndScale, hp);
                var radius = lerp(0, 22, hp);
                stageHero.style.transform = 'scale(' + sc.toFixed(4) + ')';
                stageHero.style.borderRadius = radius.toFixed(1) + 'px';
                stageHero.style.boxShadow =
                    '0 40px 90px rgba(0,0,0,' + (0.18 + 0.42 * hp).toFixed(3) + ')';
                for (var i = 0; i < flySlots.length; i++) {
                    var s = flySlots[i];
                    var start = 0.10 + i * 0.045;
                    var t = clamp((p - start) / (0.78 - start), 0, 1);
                    var e = easeOut(t);
                    var x = lerp(s.sx, s.fx, e);
                    var y = lerp(s.sy, s.fy, e);
                    var r = lerp(s.sr, s.r, e);
                    var scl = lerp(0.78, 1, e);
                    s.el.style.transform =
                        'translate(-50%,-50%) translate(' + x.toFixed(2) + 'px,' + y.toFixed(2) + 'px) ' +
                        'rotate(' + r.toFixed(2) + 'deg) scale(' + scl.toFixed(3) + ')';
                    s.el.style.opacity = e.toFixed(3);
                }
            }

            /* ============ CHAPTER POLAROID CROSSFADE ============ */
            function computeOpacities(p, n) {
                var result = [];
                if (n === 1) return [1];
                var h = 1 / (2 * n - 1);
                var c = h;
                for (var i = 0; i < n; i++) {
                    var holdStart = i * (h + c);
                    var holdEnd = holdStart + h;
                    var fadeOutEnd = holdEnd + c;
                    var op = 0;
                    if (p >= holdStart && p <= holdEnd) {
                        op = 1;
                    } else if (p > holdEnd && p < fadeOutEnd) {
                        op = 1 - (p - holdEnd) / c;
                    } else if (p < holdStart && p >= holdStart - c) {
                        op = (p - (holdStart - c)) / c;
                    }
                    result.push(clamp(op, 0, 1));
                }
                return result;
            }

            var chapterData = [];
            $$('.chapter-scroll').forEach(function (section) {
                var photoImgs = $$('.polaroid-photo', section);
                var labelEl = $('.polaroid-label', section);
                var countEl = $('.polaroid-count', section);
                var polaroid = $('.polaroid', section);

                var data = {
                    section: section,
                    photoImgs: photoImgs,
                    labelEl: labelEl,
                    countEl: countEl,
                    polaroid: polaroid,
                    total: photoImgs.length,
                    currentIndex: 0,
                    labelTimer: null
                };
                chapterData.push(data);
                if (countEl) countEl.textContent = '01 / ' + pad(data.total);
                if (polaroid) {
                    polaroid.addEventListener('click', function () {
                        var photos = photoImgs.map(function (img) {
                            return {
                                img: img.getAttribute('data-full') || img.src,
                                title: img.getAttribute('data-title') || '',
                                desc: img.getAttribute('data-desc') || ''
                            };
                        });
                        openLightbox(photos, data.currentIndex);
                    });
                    polaroid.addEventListener('keydown', function (e) {
                        if (e.key === 'Enter' || e.key === ' ') {
                            e.preventDefault();
                            polaroid.click();
                        }
                    });
                }
            });

            function updateChapter(data) {
                var section = data.section;
                var rect = section.getBoundingClientRect();
                var vh = window.innerHeight;
                if (rect.bottom < -300 || rect.top > vh + 300) return;
                var total = section.offsetHeight - vh;
                if (total <= 0) return;
                var p = clamp(-rect.top / total, 0, 1);
                var opacities = computeOpacities(p, data.total);
                var maxOp = -1;
                var activeIndex = 0;
                for (var i = 0; i < data.total; i++) {
                    if (opacities[i] > maxOp) { maxOp = opacities[i]; activeIndex = i; }
                }
                for (var j = 0; j < data.total; j++) {
                    var op = opacities[j];
                    var scl = 1 + 0.015 * op;
                    data.photoImgs[j].style.opacity = op.toFixed(3);
                    data.photoImgs[j].style.transform = 'scale(' + scl.toFixed(4) + ')';
                }
                if (activeIndex !== data.currentIndex) {
                    data.currentIndex = activeIndex;
                    if (data.countEl) {
                        data.countEl.textContent = pad(activeIndex + 1) + ' / ' + pad(data.total);
                    }
                    if (data.labelEl) {
                        (function (d, idx) {
                            if (d.labelTimer) clearTimeout(d.labelTimer);
                            d.labelEl.classList.add('swapping');
                            var newLabel = d.photoImgs[idx].getAttribute('data-title') || '';
                            d.labelTimer = setTimeout(function () {
                                d.labelEl.textContent = newLabel;
                                d.labelEl.classList.remove('swapping');
                            }, 180);
                        })(data, activeIndex);
                    }
                }
            }
            function updateChapters() {
                for (var c = 0; c < chapterData.length; c++) updateChapter(chapterData[c]);
            }

            /* ============ SCROLL LOOP ============ */
            var ticking = false;
            function updateAll() {
                updateProgress();
                updateHero();
                updateStage();
                updateChapters();
            }
            function onScroll() {
                if (ticking) return;
                ticking = true;
                requestAnimationFrame(function () {
                    ticking = false;
                    updateAll();
                });
            }
            window.addEventListener('scroll', onScroll, { passive: true });

            var resizeTimer = null;
            window.addEventListener('resize', function () {
                clearTimeout(resizeTimer);
                resizeTimer = setTimeout(function () {
                    layoutStage();
                    updateAll();
                    $$('.faq-item.open .faq-a').forEach(function (a) {
                        a.style.maxHeight = a.scrollHeight + 'px';
                    });
                }, 120);
            });

            /* ============ COUNTDOWN ============ */
            var WEDDING = new Date(2027, 5, 30, 15, 0, 0).getTime();
            var cdDays = $('#cd-days');
            var cdHours = $('#cd-hours');
            var cdMins = $('#cd-mins');
            var cdSecs = $('#cd-secs');
            function tickCountdown() {
                var diff = WEDDING - Date.now();
                if (diff < 0) diff = 0;
                var days = Math.floor(diff / 86400000);
                var hours = Math.floor(diff / 3600000) % 24;
                var mins = Math.floor(diff / 60000) % 60;
                var secs = Math.floor(diff / 1000) % 60;
                if (cdDays) cdDays.textContent = String(days);
                if (cdHours) cdHours.textContent = pad(hours);
                if (cdMins) cdMins.textContent = pad(mins);
                if (cdSecs) cdSecs.textContent = pad(secs);
            }
            tickCountdown();
            setInterval(tickCountdown, 1000);

            /* ============ MODALS ============ */
            var lastFocused = null;
            function syncBodyLock() {
                var anyModal = document.querySelector('.modal.open');
                var lbOpen = document.querySelector('.lightbox.open');
                if (anyModal || lbOpen) {
                    document.body.classList.add('modal-open');
                } else {
                    document.body.classList.remove('modal-open');
                }
            }
            function openModal(id) {
                var modal = document.getElementById(id);
                if (!modal) return;
                lastFocused = document.activeElement;
                modal.classList.add('open');
                modal.setAttribute('aria-hidden', 'false');
                syncBodyLock();
                var box = modal.querySelector('.modal-box');
                if (box) box.scrollTop = 0;
                var closeBtn = modal.querySelector('.modal-close');
                if (closeBtn) {
                    setTimeout(function () {
                        try { closeBtn.focus({ preventScroll: true }); } catch (e) { closeBtn.focus(); }
                    }, 60);
                }
            }
            function closeModal(modal) {
                if (!modal) return;
                modal.classList.remove('open');
                modal.setAttribute('aria-hidden', 'true');
                syncBodyLock();
                if (lastFocused && typeof lastFocused.focus === 'function') {
                    try { lastFocused.focus({ preventScroll: true }); } catch (e) { }
                }
            }
            $$('[data-modal]').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    openModal(btn.getAttribute('data-modal'));
                });
            });
            $$('.modal').forEach(function (modal) {
                modal.addEventListener('click', function (e) {
                    if (e.target.hasAttribute('data-close')) closeModal(modal);
                });
            });

            /* ============ LIGHTBOX ============ */
            var lightbox = $('#lightbox');
            var lbImg = $('#lbImg');
            var lbCap = $('#lbCap');
            var lbDesc = $('#lbDesc');
            var lightboxData = [];
            var lightboxIndex = 0;
            var swapTimer = null;

            function showLightboxPhoto() {
                if (!lightboxData.length) return;
                var item = lightboxData[lightboxIndex];
                lbImg.classList.add('swapping');
                clearTimeout(swapTimer);
                swapTimer = setTimeout(function () {
                    lbImg.src = item.img || '';
                    lbImg.alt = item.title || '';
                    lbCap.textContent = item.title || '';
                    lbDesc.textContent = item.desc || '';
                    var unswap = function () {
                        lbImg.classList.remove('swapping');
                        lbImg.removeEventListener('load', unswap);
                    };
                    lbImg.addEventListener('load', unswap);
                    setTimeout(function () { lbImg.classList.remove('swapping'); }, 400);
                }, reduceMotion ? 0 : 130);
            }
            function openLightbox(photos, index) {
                if (!lightbox || !photos || !photos.length) return;
                lastFocused = document.activeElement;
                lightboxData = photos;
                lightboxIndex = clamp(index || 0, 0, photos.length - 1);
                showLightboxPhoto();
                lightbox.classList.add('open');
                lightbox.setAttribute('aria-hidden', 'false');
                syncBodyLock();
            }
            function closeLightbox() {
                if (!lightbox) return;
                lightbox.classList.remove('open');
                lightbox.setAttribute('aria-hidden', 'true');
                syncBodyLock();
                if (lastFocused && typeof lastFocused.focus === 'function') {
                    try { lastFocused.focus({ preventScroll: true }); } catch (e) { }
                }
            }
            function nextLightboxPhoto() {
                if (!lightboxData.length) return;
                lightboxIndex = (lightboxIndex + 1) % lightboxData.length;
                showLightboxPhoto();
            }
            function prevLightboxPhoto() {
                if (!lightboxData.length) return;
                lightboxIndex = (lightboxIndex - 1 + lightboxData.length) % lightboxData.length;
                showLightboxPhoto();
            }
            var lbClose = $('[data-lb-close]');
            var lbPrev = $('[data-lb-prev]');
            var lbNext = $('[data-lb-next]');
            if (lbClose) lbClose.addEventListener('click', closeLightbox);
            if (lbPrev) lbPrev.addEventListener('click', prevLightboxPhoto);
            if (lbNext) lbNext.addEventListener('click', nextLightboxPhoto);
            if (lightbox) {
                lightbox.addEventListener('click', function (e) {
                    if (e.target === lightbox) closeLightbox();
                });
            }

            /* ============ KEYBOARD ============ */
            document.addEventListener('keydown', function (e) {
                if (e.key === 'Escape' || e.key === 'Esc') {
                    if (lightbox && lightbox.classList.contains('open')) {
                        closeLightbox(); return;
                    }
                    var openM = document.querySelector('.modal.open');
                    if (openM) closeModal(openM);
                    return;
                }
                if (lightbox && lightbox.classList.contains('open')) {
                    if (e.key === 'ArrowLeft') { e.preventDefault(); prevLightboxPhoto(); }
                    if (e.key === 'ArrowRight') { e.preventDefault(); nextLightboxPhoto(); }
                }
            });

            /* ============ FAQ ============ */
            var faqItems = $$('.faq-item');
            faqItems.forEach(function (item) {
                var question = item.querySelector('.faq-q');
                var answer = item.querySelector('.faq-a');
                if (!question || !answer) return;
                question.addEventListener('click', function () {
                    var isOpen = item.classList.contains('open');
                    faqItems.forEach(function (other) {
                        if (other !== item && other.classList.contains('open')) {
                            other.classList.remove('open');
                            other.querySelector('.faq-a').style.maxHeight = '0px';
                            other.querySelector('.faq-q').setAttribute('aria-expanded', 'false');
                        }
                    });
                    if (isOpen) {
                        item.classList.remove('open');
                        answer.style.maxHeight = '0px';
                        question.setAttribute('aria-expanded', 'false');
                    } else {
                        item.classList.add('open');
                        answer.style.maxHeight = answer.scrollHeight + 'px';
                        question.setAttribute('aria-expanded', 'true');
                    }
                });
            });

            /* ============ REGISTRY ============ */
            var regSubmit = $('#regSubmit');
            var regNote = $('#regNote');
            if (regSubmit) {
                regSubmit.addEventListener('click', function () {
                    var nameEl = $('#reg-name');
                    var emailEl = $('#reg-email');
                    var guestEl = $('#reg-guests');
                    var msgEl = $('#reg-message');
                    var name = nameEl ? nameEl.value.trim() : '';
                    var email = emailEl ? emailEl.value.trim() : '';
                    var guests = guestEl ? guestEl.value : '1';
                    var note = msgEl ? msgEl.value.trim() : '';
                    var validEmail = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(email);
                    if (!name) {
                        regNote.textContent = 'Please tell us your name so we know who to expect.';
                        regNote.className = 'reg-note err';
                        if (nameEl) nameEl.focus();
                        return;
                    }
                    if (!validEmail) {
                        regNote.textContent = 'That email address doesn\'t look quite right — could you check it?';
                        regNote.className = 'reg-note err';
                        if (emailEl) emailEl.focus();
                        return;
                    }
                    regNote.textContent =
                        'Thank you, ' + name + '! Your RSVP for ' + guests +
                        ' guest' + (guests === '1' ? '' : 's') + ' has been recorded.' +
                        (note ? ' We\'ve noted your message too.' : '');
                    regNote.className = 'reg-note ok';
                    regSubmit.disabled = true;
                    regSubmit.textContent = 'RSVP Sent ✓';
                    // Hook this up to your server-side handler to persist the RSVP.
                });
            }

            /* ============ BOOT ============ */
            layoutStage();
            updateAll();
            if (document.fonts && document.fonts.ready) {
                document.fonts.ready.then(function () {
                    layoutStage();
                    updateAll();
                });
            }
            window.addEventListener('load', function () {
                if (!hasEntered) document.body.classList.add('locked');
                updateAll();
            });

        })();
    </script>
</body>
</html>