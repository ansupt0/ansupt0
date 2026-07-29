<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Syed An Nafiz Al Amin — Educator &amp; Writer</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,400;0,9..144,600;0,9..144,700;1,9..144,500&family=Space+Grotesk:wght@400;500;600;700&family=Caveat:wght@500;600;700&display=swap" rel="stylesheet">
<style>
  :root{
    --paper:#FBF7EE;
    --paper-alt:#F3EEE0;
    --ink:#201F3D;
    --ink-soft:#55536f;
    --yellow:#F5E663;
    --pink:#FF7AA8;
    --orange:#FFB454;
    --teal:#2FBFAE;
    --line: rgba(32,31,61,0.14);
    --radius: 3px;
  }
  *{box-sizing:border-box;}
  html{scroll-behavior:smooth;}
  body{
    margin:0;
    background:var(--paper);
    color:var(--ink);
    font-family:'Space Grotesk', sans-serif;
    -webkit-font-smoothing:antialiased;
    overflow-x:hidden;
  }
  ::selection{ background:var(--yellow); color:var(--ink); }

  h1,h2,h3{
    font-family:'Fraunces', serif;
    font-weight:600;
    margin:0;
    letter-spacing:-0.01em;
  }
  .hand{
    font-family:'Caveat', cursive;
    font-weight:600;
  }
  a{ color:inherit; }

  .wrap{
    max-width:1080px;
    margin:0 auto;
    padding:0 32px;
  }

  /* subtle paper texture */
  .texture{
    position:fixed; inset:0; pointer-events:none; z-index:0; opacity:0.5;
    background-image:
      radial-gradient(circle at 1px 1px, rgba(32,31,61,0.06) 1px, transparent 0);
    background-size: 22px 22px;
  }

  /* ---------- nav ---------- */
  header{
    position:sticky; top:0; z-index:50;
    background:rgba(251,247,238,0.85);
    backdrop-filter: blur(6px);
    border-bottom:1px solid var(--line);
  }
  nav{
    display:flex; align-items:center; justify-content:space-between;
    padding:18px 32px;
    max-width:1080px; margin:0 auto;
  }
  .logo{
    font-family:'Fraunces', serif;
    font-weight:700;
    font-size:1.3rem;
    position:relative;
    text-decoration:none;
  }
  .logo span{
    background: linear-gradient(120deg, var(--yellow) 0%, var(--yellow) 100%);
    background-repeat:no-repeat;
    background-size:100% 0.4em;
    background-position:0 88%;
    padding:0 2px;
  }
  .navlinks{
    display:flex; gap:6px;
    list-style:none; padding:0; margin:0;
  }
  .navlinks a{
    text-decoration:none;
    font-size:0.92rem;
    font-weight:500;
    padding:7px 14px;
    border-radius:20px;
    transition: background .2s ease, transform .2s ease;
  }
  .navlinks a:hover{
    background:var(--ink);
    color:var(--paper);
    transform:rotate(-2deg);
  }

  /* ---------- hero ---------- */
  .hero{
    position:relative;
    padding:110px 32px 90px;
    max-width:1080px;
    margin:0 auto;
  }
  .eyebrow{
    display:inline-flex; align-items:center; gap:8px;
    font-size:0.8rem; letter-spacing:0.12em; text-transform:uppercase;
    font-weight:600; color:var(--ink-soft);
    background:#fff;
    border:1px solid var(--line);
    padding:6px 14px 6px 10px;
    border-radius:20px;
    transform:rotate(-1.5deg);
    margin-bottom:28px;
  }
  .eyebrow .dot{
    width:8px;height:8px;border-radius:50%;
    background:var(--teal);
  }
  .hero h1{
    font-size:clamp(2.5rem, 5.5vw, 4.2rem);
    line-height:1.08;
    max-width:880px;
  }
  .hi-mark{
    background: linear-gradient(120deg, var(--yellow) 0%, var(--yellow) 100%);
    background-repeat:no-repeat;
    background-size:100% 0.42em;
    background-position:0 78%;
    padding:0 4px;
  }
  .hi-mark.pink{
    background-image: linear-gradient(120deg, var(--pink) 0%, var(--pink) 100%);
  }
  .hero p.sub{
    margin-top:26px;
    font-size:1.15rem;
    color:var(--ink-soft);
    max-width:620px;
    line-height:1.6;
  }
  .hero-actions{
    margin-top:38px;
    display:flex; align-items:center; gap:18px; flex-wrap:wrap;
  }
  .btn{
    display:inline-flex; align-items:center; gap:8px;
    background:var(--ink); color:var(--paper);
    text-decoration:none;
    padding:13px 24px;
    border-radius:6px;
    font-weight:600;
    font-size:0.95rem;
    box-shadow:4px 4px 0 var(--orange);
    transition: transform .15s ease, box-shadow .15s ease;
  }
  .btn:hover{ transform:translate(-2px,-2px); box-shadow:6px 6px 0 var(--orange); }
  .btn-ghost{
    text-decoration:none;
    font-weight:600;
    font-size:0.95rem;
    border-bottom:2px solid var(--ink);
    padding-bottom:2px;
  }

  .sticky-tags{
    position:absolute;
    right:20px; top:120px;
    display:flex; flex-direction:column; gap:14px;
  }
  @media (max-width: 860px){ .sticky-tags{ display:none; } }
  .sticky{
    font-family:'Caveat', cursive;
    font-size:1.15rem;
    font-weight:600;
    padding:10px 16px;
    border-radius:2px;
    box-shadow:2px 3px 6px rgba(32,31,61,0.15);
  }
  .sticky.s1{ background:var(--yellow); transform:rotate(4deg); }
  .sticky.s2{ background:var(--orange); transform:rotate(-5deg); margin-left:26px; }
  .sticky.s3{ background:#fff; border:1px dashed var(--ink); transform:rotate(3deg); }

  /* section label */
  .section-label{
    display:flex; align-items:baseline; gap:14px;
    margin-bottom:44px;
  }
  .section-label .num{
    font-family:'Caveat', cursive;
    font-size:1.4rem;
    color:var(--teal);
    font-weight:700;
  }
  .section-label h2{
    font-size:clamp(1.7rem, 3.5vw, 2.4rem);
  }
  section{
    padding:90px 0;
    position:relative;
    z-index:1;
  }
  .divider{
    max-width:1080px; margin:0 auto;
    border:none; border-top:1px dashed var(--line);
  }

  /* ---------- work grid ---------- */
  .work-grid{
    display:grid;
    grid-template-columns:repeat(2, 1fr);
    gap:28px;
  }
  @media (max-width:720px){ .work-grid{ grid-template-columns:1fr; } }
  .card{
    background:#fff;
    border:1px solid var(--line);
    border-radius:4px;
    padding:28px;
    position:relative;
    transition: transform .25s ease, box-shadow .25s ease;
    opacity:0; transform:translateY(18px);
  }
  .card.in{ opacity:1; transform:translateY(0); }
  .card:hover{
    transform:translateY(-6px) rotate(-0.6deg);
    box-shadow:8px 10px 0 var(--line);
  }
  .card .tag{
    display:inline-block;
    font-size:0.72rem;
    font-weight:700;
    letter-spacing:0.06em;
    text-transform:uppercase;
    padding:4px 10px;
    border-radius:20px;
    margin-bottom:16px;
  }
  .card:nth-child(1) .tag{ background:var(--yellow); }
  .card:nth-child(2) .tag{ background:var(--pink); color:#fff; }
  .card:nth-child(3) .tag{ background:var(--teal); color:#fff; }
  .card:nth-child(4) .tag{ background:var(--orange); }
  .card h3{
    font-size:1.35rem;
    margin-bottom:10px;
  }
  .card p{
    color:var(--ink-soft);
    font-size:0.96rem;
    line-height:1.6;
    margin:0 0 18px;
  }
  .card .meta{
    display:flex; justify-content:space-between; align-items:center;
    font-size:0.85rem; color:var(--ink-soft);
    border-top:1px dashed var(--line);
    padding-top:14px;
  }
  .card .meta a{ text-decoration:none; font-weight:600; color:var(--ink); }
  .card .meta a::after{ content:" →"; }

  /* ---------- about ---------- */
  .about-grid{
    display:grid;
    grid-template-columns: 220px 1fr;
    gap:56px;
    align-items:start;
  }
  @media (max-width:720px){ .about-grid{ grid-template-columns:1fr; } }
  .avatar-img{
    width:200px; height:200px;
    border-radius:50%;
    object-fit:cover;
    border:4px solid var(--paper-alt);
    box-shadow:6px 8px 0 var(--ink);
  }
  .about-text p{
    font-size:1.05rem;
    line-height:1.75;
    color:var(--ink-soft);
    margin:0 0 18px;
  }
  .about-text .pull{
    font-family:'Fraunces', serif;
    font-style:italic;
    font-size:1.25rem;
    color:var(--ink);
    margin:26px 0;
    padding-left:18px;
    border-left:3px solid var(--pink);
  }
  .skills{
    display:flex; flex-wrap:wrap; gap:10px;
    margin-top:24px;
  }
  .skills span{
    font-size:0.85rem; font-weight:600;
    padding:7px 14px;
    border:1px solid var(--ink);
    border-radius:20px;
    background:transparent;
  }

  /* ---------- achievements ---------- */
  .obsess-grid{
    display:grid;
    grid-template-columns:repeat(3, 1fr);
    gap:24px;
  }
  @media (max-width:720px){ .obsess-grid{ grid-template-columns:1fr; } }
  .obsess-item{
    background:var(--paper-alt);
    border-radius:4px;
    padding:24px;
    border:1px solid var(--line);
  }
  .obsess-item .hand{
    font-size:1.4rem;
    color:var(--teal);
    display:block;
    margin-bottom:6px;
  }
  .obsess-item p{ margin:0; color:var(--ink-soft); font-size:0.95rem; line-height:1.6; }

  /* ---------- contact ---------- */
  .contact{
    text-align:center;
    padding:100px 32px 120px;
  }
  .contact h2{
    font-size:clamp(2rem, 5vw, 3.2rem);
    max-width:750px;
    margin:0 auto 22px;
  }
  .contact p{
    color:var(--ink-soft);
    font-size:1.05rem;
    max-width:520px;
    margin:0 auto 34px;
  }
  .stamp-row{
    display:flex; gap:16px; justify-content:center; margin-top:44px; flex-wrap:wrap;
  }
  .stamp{
    text-decoration:none;
    font-size:0.85rem; font-weight:600;
    padding:10px 18px;
    border:2px dashed var(--ink);
    border-radius:4px;
    color:var(--ink);
    transition: transform .2s ease, background .2s ease;
  }
  .stamp:hover{ background:var(--ink); color:var(--paper); transform:rotate(-2deg); }

  footer{
    text-align:center;
    padding:30px;
    font-size:0.85rem;
    color:var(--ink-soft);
    border-top:1px solid var(--line);
  }

  /* reveal-on-scroll */
  .reveal{
    opacity:0; transform:translateY(16px);
    transition: opacity .6s ease, transform .6s ease;
  }
  .reveal.in{ opacity:1; transform:translateY(0); }

  @media (prefers-reduced-motion: reduce){
    *{ transition:none !important; scroll-behavior:auto !important; }
  }

  @media (max-width:720px){
    .navlinks{ display:none; }
    nav{ padding:16px 20px; }
    .hero{ padding:70px 20px 60px; }
  }
</style>
</head>
<body>

<div class="texture"></div>

<header>
  <nav>
    <a href="#top" class="logo">Syed An Nafiz<span> Al Amin</span></a>
    <ul class="navlinks">
      <li><a href="#work">Writings &amp; Research</a></li>
      <li><a href="#about">About</a></li>
      <li><a href="#achievements">Achievements</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </nav>
</header>

<div id="top"></div>

<section class="hero">
  <div class="eyebrow"><span class="dot"></span>English Literature Graduate &amp; Writer</div>
  <h1>Connecting <span class="hi-mark">classical literature</span>, modern storytelling, and <span class="hi-mark pink">interactive learning</span>.</h1>
  <p class="sub">BA (Hons.) in English from BUBT. Passionate about literary analysis, student-centered language instruction, and creative narrative writing.</p>
  <div class="hero-actions">
    <a href="#work" class="btn">Read my articles</a>
    <a href="#contact" class="btn-ghost">Get in touch →</a>
  </div>

  <div class="sticky-tags">
    <div class="sticky s1">literary criticism</div>
    <div class="sticky s2">creative prose</div>
    <div class="sticky s3">language education</div>
  </div>
</section>

<hr class="divider">

<section id="work">
  <div class="wrap">
    <div class="section-label reveal">
      <span class="num hand">chapter one</span>
      <h2>Published Essays &amp; Research</h2>
    </div>
    <div class="work-grid">
      <div class="card">
        <span class="tag">Academic Thesis</span>
        <h3>The Concepts of Shakespearean Tragedy in Macbeth &amp; Attack on Titan</h3>
        <p>Graduated with an <strong>A Grade</strong> for this comparative study examining fatal flaws, ambition, and existential tragedy across classical and modern media.</p>
        <div class="meta"><span>BUBT Thesis</span><a href="#contact">Inquire for Copy</a></div>
      </div>
      <div class="card">
        <span class="tag">Essay / Prose</span>
        <h3>To Live, To Breathe, To Die</h3>
        <p>A meditative essay exploring mortality, human emotion, and the subtle rhythms of existence written for Medium.</p>
        <div class="meta"><span>Medium Dispatch</span><a href="https://medium.com/@ansupt0/to-live-to-breathe-to-die-7c7fd6e4804f" target="_blank">Read Article</a></div>
      </div>
      <div class="card">
        <span class="tag">Narrative Essay</span>
        <h3>Until Death Did Us Apart</h3>
        <p>A reflective narrative piece exploring intimacy, loss, and memory through evocative storytelling.</p>
        <div class="meta"><span>Medium Dispatch</span><a href="https://medium.com/@ansupt0/until-death-did-us-apart-c9f0ce8e1d5e" target="_blank">Read Article</a></div>
      </div>
      <div class="card">
        <span class="tag">Leadership &amp; Pedagogy</span>
        <h3>Learner-Centered English Education</h3>
        <p>Interactive communicative frameworks and workshop concepts designed during leadership at the BUBT English Language Club.</p>
        <div class="meta"><span>Club Leadership</span><a href="#about">Learn More</a></div>
      </div>
    </div>
  </div>
</section>

<hr class="divider">

<section id="about">
  <div class="wrap">
    <div class="section-label reveal">
      <span class="num hand">chapter two</span>
      <h2>About Syed An Nafiz Al Amin</h2>
    </div>
    <div class="about-grid reveal">
      <!-- Profile Image styled from provided document -->
      <img src="profile.jpg" alt="Syed An Nafiz Al Amin" class="avatar-img">
      <div class="about-text">
        <p>Based in Mirpur, Dhaka, Bangladesh, I am an English graduate (CGPA 3.41) from Bangladesh University of Business and Technology (BUBT). I blend a deep fascination with literature and critical analysis with practical customer relationship and leadership experience.</p>
        <p class="pull">"Promoting language development through interactive, communicative, and confidence-building activities."</p>
        <p>Having served as the <strong>President of the BUBT English Language Club (2024–2025)</strong>, I have organized literary seminars, workshops, and competitions. My professional journey spans content creation at Rank Wizard LLC and customer relationship management at Synergy Solutions Ltd.</p>
        <div class="skills">
          <span>Academic Writing</span>
          <span>Content Writing</span>
          <span>Creative Writing</span>
          <span>Public Speaking</span>
          <span>Critical Thinking</span>
          <span>Leadership</span>
          <span>CRM Software</span>
        </div>
      </div>
    </div>
  </div>
</section>

<hr class="divider">

<section id="achievements">
  <div class="wrap">
    <div class="section-label reveal">
      <span class="num hand">chapter three</span>
      <h2>Achievements &amp; Leadership</h2>
    </div>
    <div class="obsess-grid reveal">
      <div class="obsess-item">
        <span class="hand">Thesis Excellence</span>
        <p>Earned an <strong>A Grade</strong> on comparative research evaluating tragedy in Shakespeare's <em>Macbeth</em> and Isayama's <em>Attack on Titan</em>.</p>
      </div>
      <div class="obsess-item">
        <span class="hand">Club President (2024–2025)</span>
        <p>Led executive teams at BUBT English Language Club to execute academic seminars, workshops, and literary competitions.</p>
      </div>
      <div class="obsess-item">
        <span class="hand">Professional Experience</span>
        <p>Ghostwriter for SEO content at Rank Wizard LLC &amp; Customer Relations Officer at Synergy Solutions Ltd.</p>
      </div>
    </div>
  </div>
</section>

<section id="contact" class="contact">
  <div class="wrap">
    <h2 class="reveal">Got a story, literary project, or educational collaboration? <span class="hi-mark">Let's talk.</span></h2>
    <p class="reveal">Located in Mirpur, Dhaka 1216, Bangladesh. Open for content writing, educational initiatives, and creative research.</p>
    <a href="mailto:ansupt0@gmail.com" class="btn reveal">Email ansupt0@gmail.com</a>
    <div class="stamp-row reveal">
      <a href="https://www.linkedin.com/in/syed-an-nafiz-al-amin-052a91202/" target="_blank" class="stamp">LinkedIn</a>
      <a href="https://www.instagram.com/supt0_0/" target="_blank" class="stamp">Instagram</a>
      <a href="https://medium.com/@ansupt0" target="_blank" class="stamp">Medium</a>
      <a href="tel:+8801794363147" class="stamp">+880 1794363147</a>
    </div>
  </div>
</section>

<footer>
  &copy; 2026 Syed An Nafiz Al Amin. All rights reserved.
</footer>

<script>
  // scroll reveal
  const revealEls = document.querySelectorAll('.reveal, .card');
  const io = new IntersectionObserver((entries)=>{
    entries.forEach(e=>{
      if(e.isIntersecting){
        e.target.classList.add('in');
        io.unobserve(e.target);
      }
    });
  }, { threshold: 0.15 });
  revealEls.forEach(el=> io.observe(el));
</script>

</body>
</html>
