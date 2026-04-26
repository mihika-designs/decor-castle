<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>The Decor Castle — Jury Presentation 2026</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,600&family=Montserrat:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
<style>
:root {
  --c1:#241304; --c2:#fffbf9; --c3:#ffe2cd;
  --c4:#bb99a5; --c5:#e2bbb7; --c6:#8d7c92;
  --c7:#5d6278; --c8:#2f4858; --c9:#8faba1; --c10:#a86d3a;
  --bg:var(--c2); --ink:var(--c1); --accent:var(--c10);
  --muted:#8c7b6a; --rule:rgba(168,109,58,0.15);
  --serif:'Cormorant Garamond',Georgia,serif;
  --sans:'Montserrat',sans-serif;
}
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0;}
html{scroll-behavior:smooth;}
body{font-family:var(--sans);background:var(--bg);color:var(--ink);overflow-x:hidden;}
#progress{position:fixed;top:0;left:0;height:2px;background:var(--accent);z-index:200;transition:width .15s;}

/* NAV */
nav{position:fixed;top:0;left:0;right:0;z-index:100;display:flex;align-items:center;justify-content:space-between;padding:1rem 3rem;transition:background .4s,box-shadow .4s;}
nav.scrolled{background:rgba(255,251,249,.96);backdrop-filter:blur(12px);box-shadow:0 1px 0 var(--rule);}
.nb{display:flex;flex-direction:column;}
.nb-m{font-family:var(--serif);font-size:1.05rem;font-weight:400;color:var(--ink);letter-spacing:.06em;}
.nb-s{font-size:.52rem;font-weight:500;letter-spacing:.25em;text-transform:uppercase;color:var(--accent);}
.nl{display:flex;gap:2rem;list-style:none;}
.nl a{font-size:.58rem;font-weight:500;letter-spacing:.18em;text-transform:uppercase;color:var(--muted);text-decoration:none;transition:color .2s;}
.nl a:hover{color:var(--accent);}
.nc{font-size:.58rem;font-weight:600;letter-spacing:.18em;text-transform:uppercase;color:var(--bg);background:var(--ink);padding:.5rem 1.2rem;text-decoration:none;transition:background .2s;}
.nc:hover{background:var(--accent);}

/* HERO */
#hero{min-height:100vh;background:var(--c3);display:grid;grid-template-columns:1fr 1fr;position:relative;overflow:hidden;}
.hl{display:flex;flex-direction:column;justify-content:flex-end;padding:0 4rem 5rem 3.5rem;z-index:2;}
.hr{background:var(--c5);display:flex;align-items:center;justify-content:center;position:relative;overflow:hidden;}
.hr-pat{position:absolute;inset:0;background:repeating-linear-gradient(0deg,transparent,transparent 55px,rgba(93,98,120,.05) 55px,rgba(93,98,120,.05) 56px),repeating-linear-gradient(90deg,transparent,transparent 55px,rgba(93,98,120,.05) 55px,rgba(93,98,120,.05) 56px);}
.hr-inner{position:relative;z-index:1;display:flex;flex-direction:column;align-items:center;gap:2rem;padding:2rem;}
.he{font-size:.58rem;font-weight:500;letter-spacing:.3em;text-transform:uppercase;color:var(--accent);margin-bottom:1.5rem;}
.ht{font-family:var(--serif);font-size:clamp(3.5rem,6vw,7rem);font-weight:300;line-height:.95;color:var(--ink);margin-bottom:1.2rem;}
.ht em{font-style:italic;color:var(--accent);}
.hd{font-size:.8rem;font-weight:300;line-height:1.85;color:#5a4535;max-width:36ch;margin-bottom:2.2rem;}
.hs{display:grid;grid-template-columns:repeat(4,1fr);border-top:1px solid var(--rule);padding-top:1.6rem;gap:1rem;}
.hs-n{font-family:var(--serif);font-size:2rem;font-weight:300;color:var(--accent);line-height:1;}
.hs-l{font-size:.52rem;font-weight:500;letter-spacing:.15em;text-transform:uppercase;color:var(--muted);margin-top:.3rem;}
.hsc{position:absolute;bottom:1.8rem;right:3.5rem;display:flex;align-items:center;gap:.6rem;font-size:.52rem;letter-spacing:.2em;text-transform:uppercase;color:var(--muted);}
.sl{width:28px;height:1px;background:var(--accent);animation:sa 2s ease-in-out infinite;}
@keyframes sa{0%,100%{width:28px;opacity:.3;}50%{width:48px;opacity:1;}}

/* MARQUEE */
.mq{background:var(--c1);padding:.8rem 0;overflow:hidden;}
.mq-t{display:flex;gap:2rem;animation:mqa 28s linear infinite;width:max-content;}
.mq-i{font-family:var(--serif);font-size:.8rem;font-weight:300;letter-spacing:.22em;text-transform:uppercase;color:rgba(255,226,205,.55);white-space:nowrap;display:flex;align-items:center;gap:2rem;}
.mq-i::after{content:'·';color:var(--accent);font-size:.45rem;}
@keyframes mqa{from{transform:translateX(0);}to{transform:translateX(-50%);}}

/* SECTIONS */
.sec{padding:5.5rem 3.5rem;}
.sec-alt{background:#fdf5ee;}
.sec-blush{background:var(--c3);}
.sec-rose{background:var(--c5);}
.sec-mauve{background:var(--c4);}
.sec-navy{background:var(--c8);}
.sec-slate{background:var(--c7);}
.sec-purple{background:var(--c6);}
.sec-sage{background:var(--c9);}
.sec-dark{background:var(--c1);}

/* on coloured sections — text overrides */
.on-d .st,.on-d .hq{color:#fffbf9;}
.on-d .sd,.on-d .hs2{color:rgba(255,251,249,.55);}
.on-d .se{color:rgba(255,226,205,.7);}
.on-d .se::before{background:rgba(255,226,205,.3);}
.on-d .rl{background:rgba(255,226,205,.3);}
.on-m .st{color:#fffbf9;} .on-m .sd{color:rgba(255,251,249,.6);}
.on-m .se{color:rgba(255,226,205,.75);} .on-m .se::before{background:rgba(255,226,205,.3);}
.on-m .rl{background:rgba(255,226,205,.3);}

.se{font-size:.58rem;font-weight:500;letter-spacing:.3em;text-transform:uppercase;color:var(--accent);margin-bottom:.7rem;display:flex;align-items:center;gap:.8rem;}
.se::before{content:'';width:1.4rem;height:1px;background:var(--accent);}
.st{font-family:var(--serif);font-size:clamp(2.2rem,4.5vw,3.8rem);font-weight:300;color:var(--ink);line-height:1.05;}
.st em{font-style:italic;color:var(--accent);}
.sd{font-size:.8rem;font-weight:300;line-height:1.85;color:#5a4535;max-width:56ch;margin-top:.4rem;margin-bottom:2.8rem;}
.rl{width:2.5rem;height:1px;background:var(--accent);margin:1.2rem 0 2.5rem;}

/* HOOK */
#hook{background:var(--c8);padding:5rem 3.5rem;text-align:center;}
.hq{font-family:var(--serif);font-size:clamp(1.8rem,4vw,3.2rem);font-weight:300;line-height:1.2;color:#fffbf9;max-width:800px;margin:0 auto 1.5rem;}
.hq em{font-style:italic;color:var(--c5);}
.hs2{font-size:.8rem;font-weight:300;color:rgba(255,251,249,.5);max-width:58ch;margin:0 auto;}

/* GRIDS */
.g4{display:grid;grid-template-columns:repeat(4,1fr);gap:1px;background:var(--rule);margin-bottom:3rem;}
.g3{display:grid;grid-template-columns:repeat(3,1fr);gap:1px;background:var(--rule);}
.g2{display:grid;grid-template-columns:1fr 1fr;gap:1px;background:var(--rule);}
.g2g{display:grid;grid-template-columns:1fr 1fr;gap:3rem;align-items:start;}
.g6j{display:grid;grid-template-columns:repeat(6,1fr);gap:1px;background:var(--rule);}

/* STAT CARDS */
.sc{background:var(--bg);padding:2rem 1.5rem;}
.sn{font-family:var(--serif);font-size:2.6rem;font-weight:300;color:var(--accent);line-height:1;}
.sl2{font-size:.56rem;font-weight:600;letter-spacing:.18em;text-transform:uppercase;color:var(--muted);margin-top:.4rem;}
.sd2{font-size:.7rem;font-weight:300;color:var(--muted);margin-top:.25rem;line-height:1.5;}

/* PRODUCT CARDS */
.pg{display:grid;grid-template-columns:repeat(3,1fr);gap:1px;background:var(--rule);margin-bottom:2.5rem;}
.pc{background:var(--bg);padding:1.8rem 1.4rem;position:relative;overflow:hidden;transition:background .25s;}
.pc:hover{background:var(--c3);}
.pd{width:8px;height:8px;border-radius:50%;margin-bottom:.9rem;}
.pn{font-family:var(--serif);font-size:1.8rem;font-weight:300;color:rgba(168,109,58,.12);line-height:1;margin-bottom:.5rem;}
.pname{font-family:var(--serif);font-size:1.15rem;font-weight:400;color:var(--ink);margin-bottom:.4rem;}
.pdesc{font-size:.68rem;font-weight:300;line-height:1.7;color:var(--muted);}
.ptag{display:inline-block;margin-top:.7rem;font-size:.5rem;font-weight:600;letter-spacing:.16em;text-transform:uppercase;color:var(--accent);border:1px solid var(--rule);padding:.18rem .5rem;}

/* BRANDS */
.bc{background:var(--bg);padding:1.8rem;transition:background .2s;}
.bc:hover{background:var(--c3);}
.bci{font-size:.53rem;font-weight:600;letter-spacing:.24em;text-transform:uppercase;color:var(--accent);margin-bottom:.35rem;}
.bcn{font-family:var(--serif);font-size:1.3rem;font-weight:400;color:var(--ink);}
.bcc{font-size:.6rem;font-weight:300;color:var(--muted);margin-top:.25rem;}

/* PROBLEM */
.pl{display:flex;flex-direction:column;gap:1px;background:var(--rule);}
.pcard{background:var(--bg);padding:1.5rem 2rem;display:grid;grid-template-columns:3rem 1fr;gap:1.4rem;transition:background .2s;}
.pcard:hover{background:var(--c3);}
.pnum{font-family:var(--serif);font-size:2rem;font-weight:300;color:var(--c5);line-height:1;}
.ptitle{font-family:var(--serif);font-size:1.05rem;font-weight:500;color:var(--ink);margin-bottom:.3rem;}
.ptext{font-size:.72rem;font-weight:300;line-height:1.75;color:var(--muted);}

/* RESEARCH */
.vc{background:var(--bg);padding:1.8rem 1.5rem;}
.vci{font-size:.53rem;font-weight:600;letter-spacing:.24em;text-transform:uppercase;color:var(--accent);margin-bottom:.35rem;}
.vcn{font-family:var(--serif);font-size:1.1rem;font-weight:500;color:var(--ink);margin-bottom:.35rem;}
.vcr{font-size:.58rem;color:var(--c10);margin-bottom:.6rem;}
.vct{font-size:.7rem;font-weight:300;line-height:1.7;color:var(--muted);}
.ic{background:var(--c3);padding:1.8rem 1.5rem;}
.inum{font-family:var(--serif);font-size:2.8rem;font-weight:300;color:rgba(168,109,58,.12);line-height:1;margin-bottom:.4rem;}
.ihead{font-family:var(--serif);font-size:.98rem;font-weight:500;color:var(--ink);line-height:1.3;margin-bottom:.4rem;}
.isub{font-size:.7rem;font-weight:300;line-height:1.7;color:#5a4535;}

/* AUDIENCE */
.ac1{background:var(--c7);padding:3rem 2.5rem;}
.ac2{background:var(--c8);padding:3rem 2.5rem;}
.at{font-size:.53rem;font-weight:600;letter-spacing:.24em;text-transform:uppercase;color:var(--c5);margin-bottom:.5rem;}
.atit{font-family:var(--serif);font-size:1.5rem;font-weight:400;color:#fffbf9;margin-bottom:.9rem;}
.adesc{font-size:.75rem;font-weight:300;line-height:1.8;color:rgba(255,251,249,.62);}
.ttags{margin-top:1.4rem;display:flex;flex-wrap:wrap;gap:.4rem;}
.tt{font-size:.5rem;font-weight:500;letter-spacing:.12em;text-transform:uppercase;color:var(--c5);border:1px solid rgba(226,187,183,.28);padding:.18rem .5rem;}

/* IDENTITY */
.idc{background:var(--bg);padding:2.2rem;}
.idl{font-size:.53rem;font-weight:600;letter-spacing:.24em;text-transform:uppercase;color:var(--accent);margin-bottom:1.1rem;}
.cr{display:flex;gap:.55rem;flex-wrap:wrap;margin-bottom:.7rem;}
.cd{display:flex;flex-direction:column;align-items:center;gap:.25rem;}
.cdd{width:36px;height:36px;border-radius:50%;border:1px solid var(--rule);}
.cdh{font-size:.46rem;font-family:'Courier New',monospace;color:var(--muted);}
.ts1{font-family:var(--serif);font-size:2rem;font-weight:300;color:var(--ink);line-height:1;}
.ts1 em{font-style:italic;color:var(--accent);}
.ts2{font-family:var(--sans);font-size:.65rem;font-weight:300;letter-spacing:.22em;text-transform:uppercase;color:var(--muted);margin-top:.7rem;}

/* EXPERIENCE */
.fr{display:flex;flex-direction:column;gap:1px;background:var(--rule);}
.frow{background:var(--bg);padding:1rem 1.7rem;display:grid;grid-template-columns:3rem 1fr auto;gap:1.2rem;align-items:center;transition:background .2s;}
.frow:hover,.fhl{background:var(--c3);}
.fl{font-family:var(--serif);font-size:.95rem;font-weight:300;color:var(--accent);}
.fn{font-family:var(--serif);font-size:.9rem;font-weight:400;color:var(--ink);}
.fd{font-size:.62rem;font-weight:300;color:var(--muted);text-align:right;}
.js{display:grid;grid-template-columns:repeat(6,1fr);gap:1px;background:var(--rule);}
.jstep{background:var(--bg);padding:1.7rem 1rem;text-align:center;}
.jstep:nth-child(even){background:var(--c3);}
.jsn{font-family:var(--serif);font-size:2.2rem;font-weight:300;color:var(--c5);line-height:1;margin-bottom:.5rem;}
.jst{font-family:var(--serif);font-size:.88rem;font-weight:500;color:var(--ink);margin-bottom:.35rem;}
.jsd{font-size:.62rem;font-weight:300;line-height:1.6;color:var(--muted);}

/* WMS */
.rd{background:var(--c3);padding:2.2rem;display:flex;flex-direction:column;gap:.7rem;}
.rr{display:flex;gap:.45rem;}
.rslot{width:50px;height:34px;display:flex;align-items:center;justify-content:center;font-size:.46rem;font-weight:600;letter-spacing:.04em;border-radius:2px;cursor:default;transition:transform .2s;}
.rslot:hover{transform:scale(1.08);}
.sfull{background:var(--c10);color:#fffbf9;}
.spartial{background:rgba(168,109,58,.25);color:var(--accent);}
.sempty{background:rgba(168,109,58,.05);color:rgba(168,109,58,.3);border:1px dashed rgba(168,109,58,.18);}
.rl2{display:flex;gap:1.2rem;margin-top:.4rem;}
.rli{display:flex;align-items:center;gap:.35rem;font-size:.52rem;color:var(--muted);}
.rld{width:10px;height:10px;border-radius:2px;}
.wc{background:var(--bg);padding:1.8rem;}
.wi{font-size:1.3rem;margin-bottom:.7rem;opacity:.65;}
.wt{font-family:var(--serif);font-size:1rem;font-weight:500;color:var(--ink);margin-bottom:.35rem;}
.wd{font-size:.7rem;font-weight:300;line-height:1.75;color:var(--muted);}
.wcode{display:inline-block;font-family:'Courier New',monospace;font-size:.78rem;background:var(--c3);color:var(--accent);padding:.18rem .45rem;margin:.18rem;}

/* SOCIAL */
.igp{aspect-ratio:1;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:1.1rem;border:1px solid var(--rule);transition:border-color .2s,transform .2s;cursor:default;}
.igp:hover{border-color:var(--accent);transform:scale(1.02);}
.igic{font-size:.52rem;letter-spacing:.2em;text-transform:uppercase;color:var(--accent);margin-bottom:.55rem;}
.igt{font-family:var(--serif);font-size:.82rem;font-weight:400;color:var(--ink);line-height:1.4;}
.igs{font-size:.52rem;font-weight:300;color:var(--muted);margin-top:.35rem;}

/* COLLATERAL */
.cc{background:var(--bg);overflow:hidden;}
.cc img{width:100%;display:block;object-fit:cover;max-height:240px;}
.cl{padding:.85rem 1.1rem;display:flex;justify-content:space-between;align-items:center;border-top:1px solid var(--rule);}
.cn{font-family:var(--serif);font-size:.88rem;font-weight:500;color:var(--ink);}
.ctag{font-size:.48rem;font-weight:600;letter-spacing:.15em;text-transform:uppercase;color:var(--accent);background:var(--c3);padding:.18rem .45rem;}

/* OPPORTUNITY BAND */
.ob{background:var(--c6);padding:5rem 3.5rem;text-align:center;}
.ob h2{font-family:var(--serif);font-size:clamp(2rem,5vw,3.8rem);font-weight:300;color:#fffbf9;margin-bottom:1.4rem;line-height:1.1;}
.ob h2 em{font-style:italic;color:var(--c5);}
.ob p{font-size:.8rem;font-weight:300;line-height:1.85;color:rgba(255,251,249,.6);max-width:62ch;margin:0 auto 1rem;}
.ob .oq{font-family:var(--serif);font-size:1.05rem;font-style:italic;font-weight:300;color:var(--c5);margin-top:.8rem;}

/* INFO BLOCKS */
.ib{background:var(--c3);padding:2.2rem;}
.ib2{background:var(--c5);padding:2.2rem;}
.ibl{font-size:.53rem;font-weight:600;letter-spacing:.24em;text-transform:uppercase;color:var(--accent);margin-bottom:.9rem;}
.ibt{font-size:.76rem;font-weight:300;line-height:1.8;color:#5a4535;}
.dl{display:flex;flex-direction:column;gap:.55rem;margin-top:.7rem;}
.di{font-size:.7rem;font-weight:300;color:#5a4535;display:flex;gap:.55rem;}
.di::before{content:'◆';font-size:.28rem;color:var(--accent);margin-top:.28rem;flex-shrink:0;}

/* CONCLUSION */
#conclusion{background:var(--c8);min-height:80vh;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:6rem 3.5rem;position:relative;overflow:hidden;}
#conclusion::before{content:'';position:absolute;inset:0;background:radial-gradient(ellipse 60% 50% at 50% 100%,rgba(143,171,161,.12) 0%,transparent 70%);}
.cdels{display:flex;gap:1.6rem;flex-wrap:wrap;justify-content:center;margin-bottom:3.5rem;position:relative;z-index:1;}
.cdel{font-size:.58rem;font-weight:500;letter-spacing:.15em;text-transform:uppercase;color:var(--c9);display:flex;align-items:center;gap:.35rem;}
.cdel::before{content:'◆';font-size:.28rem;}
.ctit{font-family:var(--serif);font-size:clamp(2.5rem,7vw,6rem);font-weight:300;color:#fffbf9;line-height:1.05;margin-bottom:1.8rem;position:relative;z-index:1;}
.ctit em{font-style:italic;color:var(--c9);}
.crule{width:3rem;height:1px;background:var(--c9);margin:0 auto 1.8rem;position:relative;z-index:1;}
.ctag2{font-family:var(--serif);font-size:1.05rem;font-weight:300;font-style:italic;color:rgba(255,251,249,.32);margin-bottom:2.5rem;position:relative;z-index:1;}
.cmeta{font-size:.56rem;font-weight:300;letter-spacing:.16em;color:rgba(255,251,249,.18);text-transform:uppercase;line-height:2;position:relative;z-index:1;}

/* FADE */
.fade{opacity:0;transform:translateY(18px);transition:opacity .65s ease,transform .65s ease;}
.fade.in{opacity:1;transform:translateY(0);}
.fd1{transition-delay:.08s;} .fd2{transition-delay:.16s;} .fd3{transition-delay:.24s;}

@media(max-width:900px){
  nav .nl{display:none;}
  #hero{grid-template-columns:1fr;}
  .hr{display:none;}
  .hl{padding:6rem 1.5rem 4rem;}
  .sec{padding:4rem 1.5rem;}
  .g4,.g3,.pg,.g3,.g6j,.js{grid-template-columns:1fr 1fr;}
  .g2,.g2g,.ac1~.ac2,.idc+.idc{grid-template-columns:1fr;}
  .js{grid-template-columns:repeat(3,1fr);}
}
</style>
</head>
<body>

<div id="progress"></div>

<nav id="main-nav">
  <div class="nb">
    <span class="nb-m">The Decor Castle</span>
    <span class="nb-s">By Padmawati Enterprises · Jury 2026</span>
  </div>
  <ul class="nl">
    <li><a href="#brief">Brief</a></li>
    <li><a href="#research">Research</a></li>
    <li><a href="#identity">Identity</a></li>
    <li><a href="#experience">Experience</a></li>
    <li><a href="#wms">WMS</a></li>
    <li><a href="#collateral">Collateral</a></li>
    <li><a href="#conclusion">Conclusion</a></li>
  </ul>
  <a href="#conclusion" class="nc">April 2026</a>
</nav>

<!-- HERO -->
<section id="hero">
  <div class="hl">
    <div>
      <p class="he fade">Final Graduation Project · B.Des Interaction Design · DTU · 2026</p>
      <h1 class="ht fade">The<br><em>Decor</em><br>Castle.</h1>
      <p class="hd fade">Brand Identity · Experience Design · Warehouse Management System — a complete revamp of a real family business with a real 7-floor building under construction.</p>
      <div class="hs fade">
        <div><div class="hs-n">20+</div><div class="hs-l">Years</div></div>
        <div><div class="hs-n">9</div><div class="hs-l">Categories</div></div>
        <div><div class="hs-n">7</div><div class="hs-l">Floors</div></div>
        <div><div class="hs-n">MP</div><div class="hs-l">State-Wide</div></div>
      </div>
    </div>
  </div>
  <div class="hr">
    <div class="hr-pat"></div>
    <div class="hr-inner">
      <img src="padmawati_logo_square.png" alt="Padmawati Enterprises" style="max-width:200px;max-height:160px;object-fit:contain;" onerror="this.style.display='none'">
      <div style="width:1px;height:30px;background:rgba(168,109,58,.3);"></div>
      <img src="tdc_logo_square.png" alt="The Decor Castle" style="max-width:200px;max-height:160px;object-fit:contain;" onerror="this.style.display='none'">
      <p style="font-family:var(--serif);font-size:.8rem;font-style:italic;color:var(--accent);text-align:center;margin-top:1rem;">"Where Every Surface Tells a Story"</p>
    </div>
  </div>
  <div class="hsc">
    <div class="sl"></div>
    <span>Scroll to explore</span>
  </div>
</section>

<!-- MARQUEE -->
<div class="mq">
  <div class="mq-t">
    <span class="mq-i">Charcoal Louvres</span><span class="mq-i">Mica</span><span class="mq-i">Liner</span><span class="mq-i">Veneer</span><span class="mq-i">Plywood</span><span class="mq-i">Acrylic</span><span class="mq-i">PVC</span><span class="mq-i">Hardware</span><span class="mq-i">Adhesive</span><span class="mq-i">Edgeband</span><span class="mq-i">Decorative Panels</span>
    <span class="mq-i">Charcoal Louvres</span><span class="mq-i">Mica</span><span class="mq-i">Liner</span><span class="mq-i">Veneer</span><span class="mq-i">Plywood</span><span class="mq-i">Acrylic</span><span class="mq-i">PVC</span><span class="mq-i">Hardware</span><span class="mq-i">Adhesive</span><span class="mq-i">Edgeband</span><span class="mq-i">Decorative Panels</span>
  </div>
</div>

<!-- HOOK -->
<div id="hook">
  <p class="hq fade">"This is not a college project. This is a real business, a real building under construction, and a <em>real brand launching this year.</em>"</p>
  <p class="hs2 fade">Padmawati Enterprises has been building Indore's most trusted interior surfaces network for over two decades. This project gives that legacy the identity, experience, and systems it deserves.</p>
</div>

<!-- BRIEF -->
<section class="sec" id="brief">
  <div class="se fade">01 — The Brief</div>
  <h2 class="st fade">Padmawati <em>Enterprises</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">One of Madhya Pradesh's foremost distributors of decorative interior surface materials. Operating since 2002 — supplying dealers, contractors, carpenters, architects and interior designers across the entire state from a central warehouse in Indore.</p>

  <div class="g4 fade">
    <div class="sc"><div class="sn">2002</div><div class="sl2">Founded</div><div class="sd2">Started with adhesive distribution, pivoted to interior sheets in 2016</div></div>
    <div class="sc"><div class="sn">9</div><div class="sl2">Product Categories</div><div class="sd2">Louvres · Mica · Liner · Veneer · Plywood · Acrylic · PVC · Hardware · Adhesive</div></div>
    <div class="sc"><div class="sn">7+</div><div class="sl2">Brand Partners</div><div class="sd2">Trend · Glorio · Zurich · Euro Shiv Shakti · Seven Star · D'Edge+ · Operando</div></div>
    <div class="sc"><div class="sn">MP</div><div class="sl2">State-Wide Reach</div><div class="sd2">Indore · Bhopal · Jabalpur · Gwalior and dealers across Madhya Pradesh</div></div>
  </div>

  <div class="se fade" style="margin-top:1rem;">Product Range</div>
  <h3 class="st fade" style="font-size:1.9rem;">Widest range in <em>Madhya Pradesh.</em></h3>
  <div class="rl fade"></div>

  <div class="pg fade">
    <div class="pc"><div class="pd" style="background:#241304;"></div><div class="pn">01</div><div class="pname">Charcoal Louvres</div><div class="pdesc">Dramatic, textured paneling that transforms walls into architectural statements.</div><span class="ptag">Architectural</span></div>
    <div class="pc"><div class="pd" style="background:#bb99a5;"></div><div class="pn">02</div><div class="pname">Mica</div><div class="pdesc">High-performance decorative sheets in a spectrum of finishes for every surface.</div><span class="ptag">Decorative</span></div>
    <div class="pc"><div class="pd" style="background:#e2bbb7;"></div><div class="pn">03</div><div class="pname">Liner</div><div class="pdesc">Precision surface materials for seamless applications and clean finishes.</div><span class="ptag">Surface</span></div>
    <div class="pc"><div class="pd" style="background:#8d7c92;"></div><div class="pn">04</div><div class="pname">Veneer</div><div class="pdesc">The warmth and character of real wood — engineered for consistency.</div><span class="ptag">Natural Wood</span></div>
    <div class="pc"><div class="pd" style="background:#5d6278;"></div><div class="pn">05</div><div class="pname">Plywood</div><div class="pdesc">The structural backbone of fine interiors. Strength and stability in every sheet.</div><span class="ptag">Structural</span></div>
    <div class="pc"><div class="pd" style="background:#2f4858;"></div><div class="pn">06</div><div class="pname">Acrylic</div><div class="pdesc">High-gloss, vibrant, versatile. The sheet that transformed MP interiors post-2018.</div><span class="ptag">High Gloss</span></div>
    <div class="pc"><div class="pd" style="background:#8faba1;"></div><div class="pn">07</div><div class="pname">PVC</div><div class="pdesc">Moisture-resistant panels for wet areas, ceilings, and high-traffic surfaces.</div><span class="ptag">Functional</span></div>
    <div class="pc"><div class="pd" style="background:#a86d3a;"></div><div class="pn">08</div><div class="pname">Hardware</div><div class="pdesc">Premium furniture hardware — hinges, channels, handles. Exclusively Trend.</div><span class="ptag">Trend Exclusive</span></div>
    <div class="pc"><div class="pd" style="background:#9c8b78;"></div><div class="pn">09</div><div class="pname">Adhesive</div><div class="pdesc">Industrial-grade bonding trusted by carpenters across MP. Exclusively Seven Star.</div><span class="ptag">7 Star Exclusive</span></div>
  </div>

  <div class="se fade">Brand Partners</div>
  <h3 class="st fade" style="font-size:1.9rem;">Representing <em>India's finest.</em></h3>
  <div class="rl fade"></div>
  <div class="g3 fade">
    <div class="bc"><div class="bci">Delhi</div><div class="bcn">Trend</div><div class="bcc">Laminates · Plywood · PVC · Hardware</div></div>
    <div class="bc"><div class="bci">Mumbai</div><div class="bcn">Glorio</div><div class="bcc">Style Your Interior</div></div>
    <div class="bc"><div class="bci">Mumbai</div><div class="bcn">Zurich</div><div class="bcc">Reinventing Interiors</div></div>
    <div class="bc"><div class="bci">Surat / Vapi</div><div class="bcn">Euro Shiv Shakti</div><div class="bcc">Laminates</div></div>
    <div class="bc"><div class="bci">Ahmedabad</div><div class="bcn">Seven Star</div><div class="bcc">Hindbond Adhesive</div></div>
    <div class="bc"><div class="bci">Pan India</div><div class="bcn">D'Edge+ · Operando</div><div class="bcc">Decorative Laminates</div></div>
  </div>
</section>

<!-- PROBLEM -->
<section class="sec sec-alt" id="problem">
  <div class="se fade">02 — The Problem</div>
  <h2 class="st fade">The Gap Between<br><em>Legacy and Presence.</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">A business with 20+ years of trade relationships, state-wide reach, and a 7-floor building under construction — operating without a brand identity that reflects any of it.</p>
  <div class="pl fade">
    <div class="pcard"><div class="pnum">01</div><div><div class="ptitle">No Brand Identity</div><div class="ptext">No documented colour palette, typography system, or logo usage guidelines. Both brands existed without a unified visual language across any touchpoint.</div></div></div>
    <div class="pcard"><div class="pnum">02</div><div><div class="ptitle">Weak Digital Presence</div><div class="ptext">The website was a digital visiting card. No product catalogue, no brand story, no design intent. Social media existed without a coherent visual system or strategy.</div></div></div>
    <div class="pcard"><div class="pnum">03</div><div><div class="ptitle">No Customer Experience</div><div class="ptext">Walk-in visitors disrupting the dispatch floor was a daily operational problem. Customers browsing sheets had no designed space — they were in a working warehouse.</div></div></div>
    <div class="pcard"><div class="pnum">04</div><div><div class="ptitle">Undesigned Collateral</div><div class="ptext">Invoices, challans, business cards and packaging were functional but communicated nothing about the brand's premium positioning or scale.</div></div></div>
    <div class="pcard"><div class="pnum">05</div><div><div class="ptitle">Paper-Based Warehouse System</div><div class="ptext">Hundreds of 8×4 ft sheets stored in iron racks, tracked entirely on paper. Not synced with billing software and reliant on staff memory to locate stock.</div></div></div>
  </div>
</section>

<!-- OPPORTUNITY -->
<div class="ob" id="opportunity">
  <h2 class="fade">First of its kind<br>in <em>Madhya Pradesh.</em></h2>
  <p class="fade">The experience center concept exists in metros — Mumbai, Hyderabad, Bangalore. In MP — Indore, Bhopal, Jabalpur, Gwalior — nothing comparable exists. Every architect, designer, contractor and homeowner currently makes decisions from small sample folders or travels to a metro to see materials properly.</p>
  <p class="fade">We don't direct-sell. We distribute. An experience center doesn't disrupt dealer relationships — it strengthens them. Dealers bring their clients. Architects bring their projects. Everyone leaves having made better, more confident decisions.</p>
  <p class="oq fade">"The Decor Castle becomes the mandatory stop for anyone planning an interior in central India."</p>
</div>

<!-- RESEARCH -->
<section class="sec" id="research">
  <div class="se fade">03 — Research</div>
  <h2 class="st fade">What We Saw.<br><em>What We Learned.</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">Primary field research — Hyderabad's Banjara Hills & Madhapur corridor: India's most evolved interior materials showroom ecosystem. 8+ showrooms visited, also Bangalore, Mumbai, Surat, Delhi.</p>

  <div class="g3 fade" style="margin-bottom:1px;">
    <div class="vc"><div class="vci">Hyderabad · Banjara Hills</div><div class="vcn">The Charcoal Project</div><div class="vcr">★ 4.8 · 70 reviews</div><div class="vct">Total brand commitment to a single material. Every surface demonstrates what charcoal can achieve. Identity is indistinguishable from the product.</div></div>
    <div class="vc"><div class="vci">Hyderabad · Madhapur</div><div class="vcn">Elevate X</div><div class="vcr">★ 4.6 · 288 reviews</div><div class="vct">Luxury through curation and restraint. Double-height volumes, curated lighting — fewer products, better presented. Space communicates aspiration.</div></div>
    <div class="vc"><div class="vci">Hyderabad</div><div class="vcn">Wudsense</div><div class="vcr">★ 5.0 · 200 reviews</div><div class="vct">Category authority as brand positioning. Built an entire identity around veneer alone. Visitors leave feeling they've met the world's foremost veneer experts.</div></div>
    <div class="vc"><div class="vci">Hyderabad</div><div class="vcn">RK's Sketch Wood</div><div class="vcr">★ 4.7 · 529 reviews</div><div class="vct">Scale itself as a brand statement. A massive review count signals sustained loyalty — not one-time transactions. Breadth of range communicates authority.</div></div>
    <div class="vc"><div class="vci">Hyderabad · Banjara Hills</div><div class="vcn">CASA Decor + Kulture</div><div class="vcr">★ 4.2 / 4.0</div><div class="vct">Good spatial design — weaker product coherence. Demonstrated that visual identity without product depth creates a hollow brand experience.</div></div>
    <div class="vc"><div class="vci">Bangalore</div><div class="vcn">Multiple Showrooms</div><div class="vcr">Disappointing — limited experience design</div><div class="vct">Confirmed that even funded spaces without a brand philosophy fail to create impact. The opportunity in Indore is real and open.</div></div>
  </div>

  <div class="g3 fade" style="margin-top:1px;">
    <div class="ic"><div class="inum">01</div><div class="ihead">The strongest brands commit to one identity — not just a product range.</div><div class="isub">A singular, unwavering visual and spatial language creates recall that breadth alone cannot match.</div></div>
    <div class="ic"><div class="inum">02</div><div class="ihead">Tactility is the product. The experience IS the showroom.</div><div class="isub">Visitors don't buy laminates. They buy the feeling of seeing their future space come alive.</div></div>
    <div class="ic"><div class="inum">03</div><div class="ihead">Beige and brown is the default. Distinctiveness is wide open.</div><div class="isub">Every competitor defaults to warm neutrals. A bold, unexpected palette is itself a competitive advantage.</div></div>
  </div>
</section>

<!-- AUDIENCE -->
<section class="sec sec-alt" id="audience">
  <div class="se fade">04 — Audience</div>
  <h2 class="st fade">Who We're<br><em>Designing For.</em></h2>
  <div class="rl fade"></div>
  <div class="g2 fade">
    <div class="ac1">
      <div class="at">Primary · B2B Trade</div>
      <div class="atit">The Dealer Network</div>
      <div class="adesc">Dealers, contractors, carpenters, architects across MP. Male, 30–55 years, mobile-first. They've trusted Padmawati Enterprises for years. WhatsApp and phone are their primary channels. They value reliability, range, and pricing transparency — and the business runs on their loyalty.</div>
      <div class="ttags"><span class="tt">WhatsApp Status</span><span class="tt">Invoice & Challan</span><span class="tt">Vehicle Livery</span><span class="tt">Broadcast Messages</span></div>
    </div>
    <div class="ac2">
      <div class="at">Emerging · B2C Consumer</div>
      <div class="atit">The Design Seeker</div>
      <div class="adesc">Homeowners, young architects, interior design enthusiasts. Design-literate, Instagram-active. They want to be inspired. They want to touch materials before they commit. They are the reason the experience center exists — and the future audience of the brand.</div>
      <div class="ttags"><span class="tt">Instagram</span><span class="tt">Website</span><span class="tt">Experience Center</span><span class="tt">Appointment Flow</span></div>
    </div>
  </div>
</section>

<!-- BRAND IDENTITY -->
<section class="sec" id="identity">
  <div class="se fade">05 — Brand Identity</div>
  <h2 class="st fade">The Visual<br><em>System.</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">Bold, contemporary, and distinctly non-beige. A complete visual language built from the existing brand's DNA — systematised and made ready for a 7-floor experience center.</p>

  <div class="g2 fade">
    <div class="idc">
      <div class="idl">Logo System</div>
      <div style="display:flex;flex-direction:column;gap:1.6rem;">
        <div><img src="padmawati_logo_square.png" alt="Padmawati Enterprises" style="max-width:190px;max-height:85px;object-fit:contain;display:block;margin-bottom:.4rem;" onerror="this.style.display='none'"><div style="font-size:.6rem;color:var(--muted);">Padmawati Enterprises — Heritage Parent Brand</div></div>
        <div><img src="tdc_logo_square.png" alt="The Decor Castle" style="max-width:190px;max-height:85px;object-fit:contain;display:block;margin-bottom:.4rem;" onerror="this.style.display='none'"><div style="font-size:.6rem;color:var(--muted);">The Decor Castle — Consumer Experience Brand</div></div>
      </div>
    </div>
    <div class="idc" style="background:var(--c3);">
      <div class="idl">Colour Palette</div>
      <div style="font-size:.48rem;font-weight:600;letter-spacing:.2em;text-transform:uppercase;color:var(--muted);margin-bottom:.4rem;">Primary</div>
      <div class="cr" style="margin-bottom:1rem;">
        <div class="cd"><div class="cdd" style="background:#241304;"></div><div class="cdh">#241304</div></div>
        <div class="cd"><div class="cdd" style="background:#fffbf9;border:1px solid var(--rule);"></div><div class="cdh">#FFFBF9</div></div>
        <div class="cd"><div class="cdd" style="background:#ffe2cd;"></div><div class="cdh">#FFE2CD</div></div>
        <div class="cd"><div class="cdd" style="background:#a86d3a;"></div><div class="cdh">#A86D3A</div></div>
      </div>
      <div style="font-size:.48rem;font-weight:600;letter-spacing:.2em;text-transform:uppercase;color:var(--muted);margin-bottom:.4rem;">Secondary</div>
      <div class="cr">
        <div class="cd"><div class="cdd" style="background:#bb99a5;"></div><div class="cdh">#BB99A5</div></div>
        <div class="cd"><div class="cdd" style="background:#e2bbb7;"></div><div class="cdh">#E2BBB7</div></div>
        <div class="cd"><div class="cdd" style="background:#8d7c92;"></div><div class="cdh">#8D7C92</div></div>
        <div class="cd"><div class="cdd" style="background:#5d6278;"></div><div class="cdh">#5D6278</div></div>
        <div class="cd"><div class="cdd" style="background:#2f4858;"></div><div class="cdh">#2F4858</div></div>
        <div class="cd"><div class="cdd" style="background:#8faba1;"></div><div class="cdh">#8FABA1</div></div>
      </div>
    </div>
    <div class="idc" style="background:var(--c5);">
      <div class="idl">Typography</div>
      <div style="margin-bottom:1.3rem;"><div style="font-size:.46rem;font-weight:600;letter-spacing:.2em;text-transform:uppercase;color:var(--muted);margin-bottom:.4rem;">Cormorant Garamond — Headings</div><div class="ts1">Surface<br><em>meets story.</em></div></div>
      <div><div style="font-size:.46rem;font-weight:600;letter-spacing:.2em;text-transform:uppercase;color:var(--muted);margin-bottom:.4rem;">Montserrat — Body & Labels</div><div class="ts2">Association with Exclusiveness · The Decor Castle</div></div>
    </div>
    <div class="idc">
      <div class="idl">Brand Voice</div>
      <p style="font-family:var(--serif);font-size:.95rem;font-weight:300;font-style:italic;line-height:1.75;color:var(--ink);margin-bottom:1rem;">"Confident, warm, and knowledgeable — like a trusted expert who genuinely wants to help you create a beautiful space."</p>
      <div style="display:flex;flex-wrap:wrap;gap:.4rem;"><span class="ptag">Confident</span><span class="ptag">Warm</span><span class="ptag">Inspiring</span><span class="ptag">Precise</span></div>
    </div>
  </div>
</section>

<!-- EXPERIENCE CENTER -->
<section class="sec sec-alt" id="experience">
  <div class="se fade">06 — Experience Center</div>
  <h2 class="st fade">Seven Floors.<br><em>One Vision.</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">A purpose-built 7-floor building in Indore. Warehouse and logistics on the lower floors. Floors 3–4 as the curated experience. Top floor: a consultation and relaxation lounge. Appointment-only.</p>

  <div class="g2g fade" style="margin-bottom:2.5rem;">
    <div>
      <div class="fr">
        <div class="frow" style="background:var(--c4);"><div class="fl" style="color:#fffbf9;">↑</div><div class="fn" style="color:#fffbf9;">Top Floor — Consultation Lounge</div><div class="fd" style="color:rgba(255,251,249,.6);">Sit · Discuss · Decide</div></div>
        <div class="frow fhl"><div class="fl">4</div><div class="fn">Experience Center — Part 2</div><div class="fd">Veneer · Plywood · Acrylic · PVC · Hardware</div></div>
        <div class="frow fhl"><div class="fl">3</div><div class="fn">Experience Center — Part 1</div><div class="fd">Louvres · Mica · Liner · Brand Story</div></div>
        <div class="frow"><div class="fl">1–2</div><div class="fn">Operations</div><div class="fd">Storage & Dispatch Staging</div></div>
        <div class="frow"><div class="fl">G</div><div class="fn">Ground — Primary Warehouse</div><div class="fd">Receiving · Stock · Dispatch</div></div>
        <div class="frow"><div class="fl">B</div><div class="fn">Basement — Deep Storage</div><div class="fd">Warehouse Lift Access</div></div>
      </div>
    </div>
    <div style="display:flex;flex-direction:column;gap:1px;background:var(--rule);">
      <div class="ib"><div class="ibl">Why Appointment-Only?</div><div class="ibt">Walk-in visitors disrupting the warehouse floor is the problem that exists today. Appointment-only solves it by design — every visitor gets undivided attention. It also signals exclusivity: a premium brand communicates value through restraint, not open access.</div></div>
      <div class="ib2"><div class="ibl">Spatial Design Principles</div><div class="dl"><div class="di">Large-format material display at wall scale</div><div class="di">Tactile accessibility — every material at hand height</div><div class="di">Category colour zones for wayfinding</div><div class="di">Lighting designed per material type</div><div class="di">Self-navigable without assistance</div></div></div>
    </div>
  </div>

  <div class="se fade" style="margin-top:1rem;">Visitor Journey</div>
  <h3 class="st fade" style="font-size:1.9rem;">From discovery to <em>decision.</em></h3>
  <div class="rl fade"></div>
  <div class="js fade">
    <div class="jstep"><div class="jsn">01</div><div class="jst">Discovery</div><div class="jsd">Google Maps · Instagram · Dealer referral · Website</div></div>
    <div class="jstep"><div class="jsn">02</div><div class="jst">Booking</div><div class="jsd">Appointment via website or WhatsApp. Confirmed with pre-visit info.</div></div>
    <div class="jstep"><div class="jsn">03</div><div class="jst">Arrival</div><div class="jsd">Branded exterior. Reception on ground floor. Welcomed, not just greeted.</div></div>
    <div class="jstep"><div class="jsn">04</div><div class="jst">Experience</div><div class="jsd">Floors 3–4. Guided or self-navigated. Materials at scale.</div></div>
    <div class="jstep"><div class="jsn">05</div><div class="jst">Consultation</div><div class="jsd">Top floor lounge. Sit, discuss, decide. Samples to take.</div></div>
    <div class="jstep"><div class="jsn">06</div><div class="jst">Follow-up</div><div class="jsd">Digital catalogue, quote, documentation — on-brand.</div></div>
  </div>
</section>

<!-- WMS -->
<section class="sec" id="wms">
  <div class="se fade">07 — Warehouse Management System</div>
  <h2 class="st fade">The System<br><em>Behind the Experience.</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">Hundreds of 8×4 ft decorative sheets in iron racks. Every rack coded. Every slot tracked. Every dispatch synced with billing. An interface simple enough for warehouse staff on day one.</p>

  <div class="g2g fade" style="margin-bottom:2rem;">
    <div style="display:flex;flex-direction:column;gap:1px;background:var(--rule);">
      <div class="ib"><div class="ibl">The Problem</div><div class="ibt">8×4 ft sheets stored in large iron racks — called <em>barrack</em> in the trade. Tracked entirely on paper. Not synced with billing. Staff locate sheets by memory. Stock counts are always slightly off at month-end.</div></div>
      <div class="ib2"><div class="ibl" style="color:var(--c5);">The Solution — Rack Coding</div><div class="ibt" style="color:rgba(255,251,249,.6);margin-bottom:.8rem;">Every rack gets a unique code. Every slot within the rack gets a position identifier. Every sheet is tagged at the point of receipt.</div><div style="font-size:.7rem;color:rgba(255,251,249,.75);margin-bottom:.3rem;">Format: <span class="wcode" style="background:rgba(255,255,255,.08);color:var(--c5);">RACK — ROW — SLOT</span></div><div style="font-size:.68rem;color:rgba(255,251,249,.5);">Example: <span class="wcode" style="background:rgba(255,255,255,.08);color:var(--c5);">A-02-04</span> = Rack A, Row 2, Slot 4</div></div>
    </div>
    <div class="rd">
      <div style="font-size:.55rem;font-weight:600;letter-spacing:.2em;text-transform:uppercase;color:var(--muted);margin-bottom:.2rem;">RACK A — Trend Laminates</div>
      <div class="rr"><div class="rslot sfull">A-01-01</div><div class="rslot sfull">A-01-02</div><div class="rslot sfull">A-01-03</div><div class="rslot spartial">A-01-04</div><div class="rslot sempty">A-01-05</div><div class="rslot sempty">A-01-06</div></div>
      <div class="rr"><div class="rslot sfull">A-02-01</div><div class="rslot sfull">A-02-02</div><div class="rslot spartial">A-02-03</div><div class="rslot spartial">A-02-04</div><div class="rslot sfull">A-02-05</div><div class="rslot sempty">A-02-06</div></div>
      <div class="rr"><div class="rslot sempty">A-03-01</div><div class="rslot sfull">A-03-02</div><div class="rslot sfull">A-03-03</div><div class="rslot sfull">A-03-04</div><div class="rslot spartial">A-03-05</div><div class="rslot sempty">A-03-06</div></div>
      <div class="rl2">
        <div class="rli"><div class="rld" style="background:var(--c10);"></div>Full</div>
        <div class="rli"><div class="rld" style="background:rgba(168,109,58,.25);"></div>Partial</div>
        <div class="rli"><div class="rld" style="background:rgba(168,109,58,.05);border:1px dashed rgba(168,109,58,.18);"></div>Empty</div>
      </div>
    </div>
  </div>

  <div class="g3 fade">
    <div class="wc"><div class="wi">📥</div><div class="wt">Stock In</div><div class="wd">Every incoming delivery logged: brand, finish, quantity, dimensions, rack slot assigned. The system maps exactly where every sheet goes.</div></div>
    <div class="wc" style="background:var(--c3);"><div class="wi">📤</div><div class="wt">Stock Out</div><div class="wd">When a dealer order is dispatched, those specific sheets are marked out and the rack slot flagged empty — automatically, in real time.</div></div>
    <div class="wc"><div class="wi">🗺</div><div class="wt">Rack Map</div><div class="wd">A visual grid showing every rack — full, partial, empty — at a glance. Any staff member can locate any sheet without asking anyone.</div></div>
    <div class="wc" style="background:var(--c3);"><div class="wi">🔄</div><div class="wt">Billing Sync</div><div class="wd">Every dispatch auto-updates stock count. The billing software pulls live inventory. No manual reconciliation. No count mismatch.</div></div>
    <div class="wc"><div class="wi">🔔</div><div class="wt">Low Stock Alerts</div><div class="wd">When any SKU drops below threshold, the system flags it for reorder — before it becomes a problem for a dealer order.</div></div>
    <div class="wc" style="background:var(--c3);"><div class="wi">👆</div><div class="wt">Staff Interface</div><div class="wd">Designed for warehouse staff. Large touch targets, Hindi/English labels, icon-first navigation. Works on a tablet at the warehouse entrance.</div></div>
  </div>
</section>

<!-- SOCIAL -->
<section class="sec sec-alt" id="social">
  <div class="se fade">08 — Social Media</div>
  <h2 class="st fade">The Digital<br><em>Presence.</em></h2>
  <div class="rl fade"></div>
  <div class="g2g fade">
    <div>
      <div style="font-size:.56rem;font-weight:600;letter-spacing:.22em;text-transform:uppercase;color:var(--accent);margin-bottom:1rem;">Instagram @tdcbypadmawati</div>
      <div style="display:grid;grid-template-columns:repeat(3,1fr);gap:.7rem;">
        <div class="igp" style="background:var(--c3);"><div class="igic">Material</div><div class="igt">What charcoal louvres can do to a plain wall.</div><div class="igs">#thedecorcastle</div></div>
        <div class="igp" style="background:var(--c5);"><div class="igic">Inspiration</div><div class="igt">Acrylic high-gloss in a Bhopal residence.</div><div class="igs">#acrylic</div></div>
        <div class="igp" style="background:var(--c3);"><div class="igic">Brand Story</div><div class="igt">20 years. One family. One mission.</div><div class="igs">#padmawati</div></div>
        <div class="igp"><div class="igic">Process</div><div class="igt">Veneer installation — watch before you decide.</div><div class="igs">#shorts</div></div>
        <div class="igp" style="background:var(--c3);"><div class="igic">Category</div><div class="igt">Everything Trend has to offer this season.</div><div class="igs">#trend</div></div>
        <div class="igp" style="background:var(--c5);"><div class="igic">Dealer</div><div class="igt">Our Gwalior dealer family. 12 years together.</div><div class="igs">#mp</div></div>
      </div>
    </div>
    <div style="display:flex;flex-direction:column;gap:1px;background:var(--rule);">
      <div class="ib"><div class="ibl">WhatsApp Dealer Strategy</div><div class="ibt" style="margin-bottom:.8rem;">The dealer demographic — male, 30–55, semi-urban MP — watches WhatsApp Status more than any other platform. It is the highest-reach channel for the trade audience.</div><div class="dl"><div class="di">Product launch status cards — 1080×1920px</div><div class="di">Both logos in every broadcast</div><div class="di">Hindi-English mix — natural and encouraged</div><div class="di">Price lists formatted with the brand system</div></div></div>
      <div class="ib2"><div class="ibl">5 Content Pillars</div><div class="dl"><div class="di" style="color:#5a4535;">Material Close-ups — texture photography</div><div class="di" style="color:#5a4535;">Room Inspiration — materials in real spaces</div><div class="di" style="color:#5a4535;">Process Videos — installation Shorts</div><div class="di" style="color:#5a4535;">Brand Story — the building journey</div><div class="di" style="color:#5a4535;">Dealer Spotlights — the MP network</div></div></div>
    </div>
  </div>
</section>

<!-- COLLATERAL -->
<section class="sec" id="collateral">
  <div class="se fade">09 — Brand Collateral</div>
  <h2 class="st fade">Every Touchpoint,<br><em>Considered.</em></h2>
  <div class="rl fade"></div>
  <p class="sd fade">From a business card to a delivery vehicle — every physical and digital brand interaction is a brand moment.</p>

  <div class="g2 fade">
    <div class="cc"><img src="visiting_front_card.jpeg" alt="Business Card Front" onerror="this.style.display='none'"><div class="cl"><span class="cn">Business Card — Front</span><span class="ctag">Print Ready</span></div></div>
    <div class="cc"><img src="visiting_card_back.jpeg" alt="Business Card Back" onerror="this.style.display='none'"><div class="cl"><span class="cn">Business Card — Back</span><span class="ctag">Print Ready</span></div></div>
    <div class="cc"><img src="letterhead.png" alt="Letterhead" style="max-height:200px;object-fit:cover;object-position:top;" onerror="this.style.display='none'"><div class="cl"><span class="cn">Official Letterhead</span><span class="ctag">A4 Template</span></div></div>
    <div class="cc"><img src="invoice.png" alt="Invoice" style="max-height:200px;object-fit:cover;object-position:top;" onerror="this.style.display='none'"><div class="cl"><span class="cn">Invoice Template</span><span class="ctag">Canva · Word</span></div></div>
  </div>

  <div style="background:var(--c3);padding:2rem;text-align:center;margin-top:1px;" class="fade">
    <img src="envelope.png" alt="Envelope" style="max-height:160px;display:inline-block;object-fit:contain;" onerror="this.style.display='none'">
    <div style="display:flex;justify-content:center;align-items:center;gap:1rem;margin-top:.8rem;"><span style="font-family:var(--serif);font-size:.9rem;font-weight:500;color:var(--ink);">Envelope</span><span class="ctag">DL / A4</span></div>
  </div>

  <div style="margin-top:2rem;" class="fade">
    <div style="font-size:.56rem;font-weight:600;letter-spacing:.22em;text-transform:uppercase;color:var(--accent);margin-bottom:.9rem;">Upcoming — In Progress</div>
    <div style="display:grid;grid-template-columns:repeat(4,1fr);gap:1px;background:var(--rule);">
      ${['Packaging Tape','Vehicle Livery','Notebooks','Mugs','Pens','Keychains','Card Holders','Mouse Pads'].map(i=>`<div style="background:var(--bg-alt,#fdf5ee);padding:1.2rem;text-align:center;"><div style="font-size:.6rem;font-weight:400;letter-spacing:.12em;text-transform:uppercase;color:var(--muted);">${i}</div></div>`).join('')}
    </div>
  </div>
</section>

<!-- POSTER -->
<section class="sec" style="background:var(--c5);text-align:center;">
  <div class="se fade" style="justify-content:center;">Brand in Action</div>
  <h2 class="st fade" style="margin-bottom:2rem;">"Where Every Surface<br><em>Tells a Story."</em></h2>
  <div style="max-width:420px;margin:0 auto;" class="fade">
    <img src="poster.png" alt="The Decor Castle Poster" style="width:100%;display:block;border:1px solid var(--rule);" onerror="this.parentElement.style.display='none'">
  </div>
</section>

<!-- CONCLUSION -->
<section id="conclusion">
  <div class="cdels fade">
    <span class="cdel">Brand Identity</span><span class="cdel">Experience Center</span><span class="cdel">Warehouse System</span><span class="cdel">Website</span><span class="cdel">Social Media</span><span class="cdel">Collateral</span><span class="cdel">Brand Guidelines</span>
  </div>
  <h2 class="ctit fade">A legacy<br><em>finding</em><br>its form.</h2>
  <div class="crule fade"></div>
  <p class="ctag2 fade">"The Decor Castle is not just a brand. It is a legacy finding its form."</p>
  <p class="cmeta fade">Mihika Maheshwari · 2K22/BD/66 · B.Des Interaction Design<br>Delhi Technological University · Supervisor: Assoc. Prof. Neeraj Rathee<br>April 2026 · Padmawati Enterprises · Indore, M.P.</p>
</section>

<script>
window.addEventListener('scroll',()=>{
  const d=document.documentElement;
  document.getElementById('progress').style.width=(d.scrollTop/(d.scrollHeight-d.clientHeight)*100)+'%';
  document.getElementById('main-nav').classList.toggle('scrolled',d.scrollTop>60);
});
const obs=new IntersectionObserver(e=>{e.forEach(x=>{if(x.isIntersecting)x.target.classList.add('in');});},{threshold:.08});
document.querySelectorAll('.fade').forEach(el=>obs.observe(el));
</script>
</body>
</html>
