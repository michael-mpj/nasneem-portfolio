
#!/bin/bash

set -e

# ==========================================
# Nasneem Khaleel Portfolio Setup
# Run from the existing project root
# ==========================================

PROJECT_DIR="$(pwd)"

echo ""
echo "=========================================="
echo " Nasneem Khaleel Portfolio Setup"
echo "=========================================="
echo "Project root: $PROJECT_DIR"
echo ""

# Create directories
mkdir -p \
  assets/images/profile \
  assets/images/projects \
  assets/images/social \
  assets/icons \
  assets/fonts/inter \
  assets/documents \
  css \
  js \
  sections \
  vendor/lucide

echo "✓ Directory structure created"

# ------------------------------------------
# index.html
# ------------------------------------------

cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Nasneem Khaleel | QA Engineer</title>

  <meta name="description"
    content="Nasneem Khaleel - QA Engineer specializing in email campaign testing, IVR automation, Selenium, and accessibility testing.">

  <meta name="author" content="Nasneem Khaleel">
  <meta name="theme-color" content="#101B2B">

  <meta property="og:title" content="Nasneem Khaleel | QA Engineer">
  <meta property="og:description"
    content="QA Engineer specializing in Email Campaigns, IVR Automation and Test Automation.">
  <meta property="og:type" content="website">

  <link rel="icon" href="assets/icons/favicon.svg" type="image/svg+xml">
  <link rel="manifest" href="manifest.webmanifest">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/print.css">

  <script src="https://unpkg.com/lucide@latest"></script>
</head>

<body>

<header class="site-header">
  <nav class="container navigation">

    <a class="brand" href="#home">
      <span class="brand-mark">NK</span>
      <span>Nasneem Khaleel</span>
    </a>

    <button class="menu-toggle" aria-label="Toggle navigation"
      aria-expanded="false">
      <i data-lucide="menu"></i>
    </button>

    <div class="nav-menu">
      <a href="#about">About</a>
      <a href="#expertise">Expertise</a>
      <a href="#experience">Experience</a>
      <a href="#education">Education</a>
      <a href="#contact">Contact</a>
      <button class="button button-small" id="downloadResume">
        Download Resume
      </button>
    </div>

  </nav>
</header>

<main>

<section class="hero section" id="home">
  <div class="container hero-grid">

    <div class="hero-content">
      <span class="eyebrow">QUALITY ASSURANCE PROFESSIONAL</span>

      <h1>Nasneem <span>Khaleel</span></h1>

      <h2>QA Engineer – Email Campaigns & IVR Tester</h2>

      <p>
        Quality Assurance professional with 9+ years of IT experience
        and 5+ years in software testing, specializing in IVR automation,
        email campaign validation, Selenium automation and accessibility.
      </p>

      <div class="hero-actions">
        <a href="#experience" class="button">Explore Experience</a>
        <a href="#contact" class="button button-outline">Contact Me</a>
      </div>

      <div class="hero-contact">
        <span><i data-lucide="map-pin"></i> Mississauga, Ontario, Canada</span>
        <a href="mailto:nasneem.k22@gmail.com">
          <i data-lucide="mail"></i> Email
        </a>
        <a href="https://www.linkedin.com/in/nasneem-khaleel-70397b158/"
           target="_blank" rel="noopener">
          <i data-lucide="linkedin"></i> LinkedIn
        </a>
      </div>
    </div>

    <div class="hero-card">
      <div class="profile-placeholder">NK</div>
      <h3>Quality Assurance</h3>
      <p>Manual Testing · Automation · IVR · Email QA</p>

      <div class="hero-stat-grid">
        <div><strong>9+</strong><span>Years IT</span></div>
        <div><strong>5+</strong><span>Years QA</span></div>
        <div><strong>50+</strong><span>Defects tracked*</span></div>
      </div>
      <small>*Reported experience at JMG Media Group.</small>
    </div>

  </div>
</section>

<section class="section" id="about">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">INTRODUCTION</span>
      <h2>About Me</h2>
    </div>

    <div class="about-content">
      <p>
        I am a Quality Assurance professional experienced in manual and
        automated testing across web, mobile, API and contact-centre
        applications. My work includes Cyara IVR testing, Selenium WebDriver
        automation using Java, email campaign validation and accessibility
        testing.
      </p>
      <p>
        I focus on reliable releases through structured test planning,
        reusable automation, detailed defect reporting and collaboration
        with development and business teams.
      </p>
    </div>
  </div>
</section>

<section class="section section-muted" id="highlights">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">CAREER VALUE</span>
      <h2>Professional Highlights</h2>
    </div>

    <div class="card-grid three-columns">
      <article class="info-card">
        <i data-lucide="phone-call"></i>
        <h3>IVR Automation</h3>
        <p>Cyara call flows, DTMF, speech recognition, routing and reusable scenarios.</p>
      </article>

      <article class="info-card">
        <i data-lucide="mail"></i>
        <h3>Email Campaign QA</h3>
        <p>Responsive rendering, dynamic content, dark mode and cross-client validation.</p>
      </article>

      <article class="info-card">
        <i data-lucide="code"></i>
        <h3>Test Automation</h3>
        <p>Selenium WebDriver with Java, TestNG, Maven and Page Object Model.</p>
      </article>
    </div>
  </div>
</section>

<section class="section" id="expertise">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">CAPABILITIES</span>
      <h2>Technical Expertise</h2>
    </div>

    <div class="card-grid three-columns">

      <article class="skill-card">
        <h3>IVR & Contact Centre</h3>
        <div class="tag-list">
          <span>Cyara</span><span>Call Flows</span><span>DTMF</span>
          <span>Speech Recognition</span><span>CTI</span>
          <span>Call Routing</span><span>Hybrid Models</span>
        </div>
      </article>

      <article class="skill-card">
        <h3>Email Campaign Testing</h3>
        <div class="tag-list">
          <span>HTML</span><span>CSS</span><span>Litmus</span>
          <span>Dark Mode</span><span>Responsive Email</span>
          <span>Outlook</span><span>Gmail</span>
        </div>
      </article>

      <article class="skill-card">
        <h3>Test Automation</h3>
        <div class="tag-list">
          <span>Selenium</span><span>Java</span><span>TestNG</span>
          <span>JUnit</span><span>Maven</span><span>POM</span>
        </div>
      </article>

      <article class="skill-card">
        <h3>Functional & API Testing</h3>
        <div class="tag-list">
          <span>Postman</span><span>REST API</span><span>JMeter</span>
          <span>Regression</span><span>Integration</span>
          <span>UAT</span>
        </div>
      </article>

      <article class="skill-card">
        <h3>Accessibility & Quality</h3>
        <div class="tag-list">
          <span>AODA</span><span>WCAG</span><span>Cross-browser</span>
          <span>Mobile Testing</span><span>Defect Management</span>
        </div>
      </article>

      <article class="skill-card">
        <h3>Tools & Collaboration</h3>
        <div class="tag-list">
          <span>Jira</span><span>Jenkins</span><span>GitHub</span>
          <span>Figma</span><span>Photoshop</span>
          <span>ChatGPT</span><span>GitHub Copilot</span>
        </div>
      </article>

    </div>
  </div>
</section>

<section class="section section-muted" id="experience">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">CAREER JOURNEY</span>
      <h2>Professional Experience</h2>
    </div>

    <div class="timeline">

      <article class="timeline-item">
        <span class="timeline-date">Dec 2024 – Present</span>
        <h3>Software Quality Analyst</h3>
        <h4>Track OMC · Toronto, Ontario</h4>
        <p>
          Email campaign testing using Litmus, including responsive layouts,
          dynamic and personalized content, links, images, accessibility
          and dark-mode validation.
        </p>
        <p>
          Testing IVR and conversational workflows, creating Cyara scenarios,
          supporting AODA/WCAG and CASL checks, and managing defects,
          retesting and regression.
        </p>
        <div class="tag-list"><span>Litmus</span><span>Cyara</span><span>Jira</span><span>Figma</span></div>
      </article>

      <article class="timeline-item">
        <span class="timeline-date">Dec 2020 – Oct 2024</span>
        <h3>QA Engineer / IVR & Automation Tester</h3>
        <h4>JMG Media Group · Mississauga, Ontario</h4>
        <p><strong>Client:</strong> ILACO Accounting and Financial Company</p>
        <p>
          Tested inbound and outbound IVR scenarios, speech and DTMF,
          prompts, menus, routing, authentication and fallback workflows.
          Developed reusable Cyara test cases.
        </p>
        <p>
          Built and tested HTML/CSS email templates, performed Selenium
          automation with Java, TestNG, Maven and POM, and managed
          50+ reported defects through Jira.
        </p>
        <div class="tag-list"><span>Cyara</span><span>Selenium</span><span>Java</span><span>TestNG</span><span>Maven</span></div>
      </article>

      <article class="timeline-item">
        <span class="timeline-date">Jun 2020 – Dec 2020</span>
        <h3>Quality Analyst</h3>
        <h4>50Hands Organization · Mississauga, Ontario</h4>
        <p>
          Performed Selenium Java/TestNG testing across web, mobile and
          chatbot applications, including functional and regression testing,
          test plans and defect evidence.
        </p>
        <div class="tag-list"><span>Selenium</span><span>Java</span><span>TestNG</span></div>
      </article>

      <article class="timeline-item">
        <span class="timeline-date">Jan 2016 – Oct 2019</span>
        <h3>Web Developer</h3>
        <h4>Portrave Solutions · Kochi, India</h4>
        <p>
          Developed responsive websites using HTML, CSS and JavaScript,
          translated client requirements into web interfaces and
          supported troubleshooting and version control.
        </p>
        <div class="tag-list"><span>HTML</span><span>CSS</span><span>JavaScript</span></div>
      </article>

    </div>
  </div>
</section>

<section class="section" id="training">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">PRACTICAL LEARNING</span>
      <h2>IVR Testing – Hands-on Training Project</h2>
    </div>

    <article class="training-card">
      <span class="status-label">Training Project · Not Paid Employment</span>
      <h3>Telecommunications & Customer Service IVR Scenarios</h3>
      <p>
        Practised customer-service and telecommunications IVR scenarios
        covering billing, account support and technical support workflows.
      </p>
      <ul>
        <li>Created call-flow, DTMF, authentication and routing scenarios.</li>
        <li>Practised API integration validation using Postman and REST APIs.</li>
        <li>Documented test cases, execution results and defects in Jira.</li>
        <li>Explored AI-assisted test design using ChatGPT and GitHub Copilot.</li>
      </ul>
      <div class="tag-list"><span>Cyara</span><span>Postman</span><span>REST API</span><span>Jira</span></div>
    </article>
  </div>
</section>

<section class="section section-muted" id="achievements">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">IMPACT</span>
      <h2>Achievements</h2>
    </div>

    <div class="card-grid three-columns">
      <article class="info-card">
        <i data-lucide="workflow"></i>
        <h3>Reusable Automation</h3>
        <p>Improved test reuse through Cyara components and data-driven execution.</p>
      </article>
      <article class="info-card">
        <i data-lucide="gauge"></i>
        <h3>Reduced Manual Effort</h3>
        <p>Expanded automation coverage to reduce repetitive manual testing.</p>
      </article>
      <article class="info-card">
        <i data-lucide="rocket"></i>
        <h3>Release Support</h3>
        <p>Supported faster release cycles through CI/CD testing workflows.</p>
      </article>
    </div>
  </div>
</section>

<section class="section" id="education">
  <div class="container">
    <div class="section-heading">
      <span class="eyebrow">ACADEMIC BACKGROUND</span>
      <h2>Education</h2>
    </div>

    <div class="education-grid">
      <article class="education-card">
        <span>July 2011 – December 2014</span>
        <h3>Master of Computer Applications (MCA)</h3>
        <p>IGNOU University · India</p>
      </article>

      <article class="education-card">
        <span>June 2007 – April 2011</span>
        <h3>Bachelor of Computer Applications (BCA)</h3>
        <p>ICFAI University · India</p>
      </article>
    </div>
    <p class="note">
      ELT Bridge-to-Work Program is not listed yet because its supplied
      end date needs confirmation.
    </p>
  </div>
</section>

<section class="section contact-section" id="contact">
  <div class="container contact-grid">
    <div>
      <span class="eyebrow">GET IN TOUCH</span>
      <h2>Let's Connect</h2>
      <p>
        Interested in discussing QA, IVR testing, email quality assurance
        or automation opportunities? Feel free to get in touch.
      </p>
    </div>

    <div class="contact-links">
      <a href="mailto:nasneem.k22@gmail.com">
        <i data-lucide="mail"></i> nasneem.k22@gmail.com
      </a>
      <a href="tel:+16479675369">
        <i data-lucide="phone"></i> +1 647 967 5369
      </a>
      <a href="https://www.linkedin.com/in/nasneem-khaleel-70397b158/"
         target="_blank" rel="noopener">
        <i data-lucide="linkedin"></i> LinkedIn Profile
      </a>
      <span><i data-lucide="map-pin"></i> Mississauga, ON, Canada</span>
    </div>
  </div>
</section>

</main>

<footer class="site-footer">
  <div class="container footer-content">
    <p>© <span id="currentYear"></span> Nasneem Khaleel. All rights reserved.</p>
    <a href="#home">Back to top ↑</a>
  </div>
</footer>

<script src="js/main.js"></script>
</body>
</html>
EOF

echo "✓ index.html created"

# ------------------------------------------
# CSS
# ------------------------------------------

cat > css/variables.css <<'EOF'
:root {
  --color-navy: #101B2B;
  --color-emerald: #16856B;
  --color-mint: #E7F4EF;
  --color-background: #F5F7F8;
  --color-gold: #E3AD58;
  --color-text: #253244;
  --color-muted: #687586;
  --color-white: #ffffff;
  --font-main: "Inter", sans-serif;
  --container-width: 1160px;
  --radius: 16px;
  --shadow: 0 12px 35px rgba(16, 27, 43, .07);
}
EOF

cat > css/reset.css <<'EOF'
* { box-sizing: border-box; margin: 0; padding: 0; }
html { scroll-behavior: smooth; scroll-padding-top: 90px; }
body { font-family: var(--font-main); color: var(--color-text); line-height: 1.7; background: #fff; }
a { color: inherit; text-decoration: none; }
button { font: inherit; cursor: pointer; }
img { max-width: 100%; display: block; }
ul { padding-left: 1.3rem; }
EOF

cat > css/typography.css <<'EOF'
h1, h2, h3, h4 { color: var(--color-navy); line-height: 1.2; font-weight: 700; }
h1 { font-size: clamp(2.8rem, 6vw, 4.8rem); letter-spacing: -.055em; }
h2 { font-size: clamp(2rem, 4vw, 2.8rem); letter-spacing: -.035em; }
h3 { font-size: 1.2rem; }
p { color: var(--color-muted); }
EOF

cat > css/layout.css <<'EOF'
.container { width: min(var(--container-width), calc(100% - 40px)); margin-inline: auto; }
.section { padding: 100px 0; }
.section-muted { background: var(--color-background); }
.section-heading { margin-bottom: 42px; }
.section-heading h2 { margin-top: 10px; }
.eyebrow { color: var(--color-emerald); font-size: .75rem; font-weight: 800; letter-spacing: .14em; }
.card-grid { display: grid; gap: 22px; }
.three-columns { grid-template-columns: repeat(3, 1fr); }
EOF

cat > css/components.css <<'EOF'
.site-header { position: sticky; top: 0; z-index: 100; background: rgba(255,255,255,.96); border-bottom: 1px solid #e9edf0; backdrop-filter: blur(12px); }
.navigation, .nav-menu, .brand, .hero-actions, .hero-contact, .footer-content { display: flex; align-items: center; }
.navigation { min-height: 78px; justify-content: space-between; gap: 25px; }
.brand { gap: 12px; font-weight: 800; color: var(--color-navy); }
.brand-mark { background: var(--color-navy); color: white; padding: 9px; border-radius: 10px; }
.nav-menu { gap: 24px; font-size: .88rem; font-weight: 600; }
.nav-menu a:hover { color: var(--color-emerald); }
.menu-toggle { display: none; border: 0; background: transparent; color: var(--color-navy); }
.button { display: inline-flex; justify-content: center; align-items: center; padding: 13px 21px; border-radius: 9px; background: var(--color-emerald); color: white; font-weight: 700; border: 1px solid var(--color-emerald); }
.button:hover { filter: brightness(.94); }
.button-outline { background: transparent; color: var(--color-navy); border-color: #ccd5dc; }
.button-small { padding: 9px 14px; font-size: .8rem; }
.hero { background: linear-gradient(135deg, #f5f8f8, #fff 65%); }
.hero-grid { display: grid; grid-template-columns: 1.4fr .8fr; gap: 65px; align-items: center; }
.hero-content h1 { margin: 16px 0; }
.hero-content h1 span { color: var(--color-emerald); }
.hero-content h2 { font-size: 1.25rem; margin-bottom: 18px; }
.hero-content > p { max-width: 680px; }
.hero-actions { gap: 12px; margin: 28px 0; flex-wrap: wrap; }
.hero-contact { flex-wrap: wrap; gap: 18px; font-size: .82rem; }
.hero-contact span, .hero-contact a, .contact-links a, .contact-links span { display: inline-flex; gap: 8px; align-items: center; }
.hero-contact svg, .contact-links svg { width: 17px; color: var(--color-emerald); }
.hero-card, .info-card, .skill-card, .training-card, .education-card { background: white; padding: 28px; border: 1px solid #e9eef0; border-radius: var(--radius); box-shadow: var(--shadow); }
.hero-card { text-align: center; }
.profile-placeholder { width: 115px; height: 115px; margin: 0 auto 20px; display: grid; place-items: center; border-radius: 50%; background: var(--color-mint); color: var(--color-emerald); font-size: 2rem; font-weight: 800; }
.hero-stat-grid { display: grid; grid-template-columns: repeat(3,1fr); gap: 10px; margin: 25px 0 12px; }
.hero-stat-grid div { display: grid; }
.hero-stat-grid strong { color: var(--color-emerald); font-size: 1.5rem; }
.hero-stat-grid span, .hero-card small { color: var(--color-muted); font-size: .75rem; }
.about-content { max-width: 850px; display: grid; gap: 16px; }
.info-card, .skill-card { box-shadow: none; }
.info-card > svg { color: var(--color-emerald); width: 28px; margin-bottom: 20px; }
.info-card h3, .skill-card h3 { margin-bottom: 12px; }
.tag-list { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 16px; }
.tag-list span { background: var(--color-mint); color: #176c59; border-radius: 6px; padding: 5px 10px; font-size: .75rem; font-weight: 600; }
.timeline { max-width: 850px; margin-left: 12px; padding-left: 30px; border-left: 2px solid #dce9e4; }
.timeline-item { position: relative; padding: 0 0 45px 20px; }
.timeline-item::before { content: ""; position: absolute; left: -38px; top: 5px; width: 14px; height: 14px; background: var(--color-emerald); border: 4px solid var(--color-mint); border-radius: 50%; }
.timeline-date, .education-card > span { color: var(--color-emerald); font-size: .8rem; font-weight: 700; }
.timeline-item h3 { margin: 8px 0; }
.timeline-item h4 { color: var(--color-muted); font-size: .9rem; margin-bottom: 14px; }
.timeline-item p { margin: 10px 0; }
.training-card { max-width: 850px; }
.training-card h3 { margin: 18px 0 12px; }
.training-card ul { margin-top: 14px; color: var(--color-muted); }
.status-label { color: var(--color-emerald); background: var(--color-mint); padding: 6px 10px; border-radius: 6px; font-size: .75rem; font-weight: 700; }
.education-grid { display: grid; grid-template-columns: repeat(2,1fr); gap: 20px; }
.education-card h3 { margin: 12px 0; }
.note { font-size: .82rem; margin-top: 20px; }
.contact-section { background: var(--color-navy); }
.contact-section h2, .contact-section p { color: white; }
.contact-section .eyebrow { color: #8ce0c7; }
.contact-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 50px; align-items: center; }
.contact-links { display: grid; gap: 18px; color: white; }
.site-footer { background: #0b1421; color: white; padding: 25px 0; }
.footer-content { justify-content: space-between; gap: 15px; }
.footer-content p { color: #aab6c3; font-size: .8rem; }
.footer-content a { font-size: .8rem; }
EOF

cat > css/responsive.css <<'EOF'
@media (max-width: 1024px) {
  .nav-menu { gap: 13px; }
  .hero-grid { gap: 35px; }
}
@media (max-width: 650px) {
  .section { padding: 70px 0; }
  .container { width: min(100% - 32px, var(--container-width)); }
  .menu-toggle { display: block; }
  .nav-menu { display: none; position: absolute; top: 78px; left: 0; right: 0; background: white; padding: 24px; box-shadow: var(--shadow); flex-direction: column; align-items: stretch; }
  .nav-menu.is-open { display: flex; }
  .hero-grid, .contact-grid, .education-grid { grid-template-columns: 1fr; }
  .hero-card { max-width: 420px; width: 100%; margin-inline: auto; }
  .three-columns { grid-template-columns: 1fr; }
  .hero-contact { align-items: flex-start; flex-direction: column; }
  .footer-content { align-items: flex-start; flex-direction: column; }
}
EOF

cat > css/main.css <<'EOF'
@import url("./variables.css");
@import url("./reset.css");
@import url("./typography.css");
@import url("./layout.css");
@import url("./components.css");
@import url("./responsive.css");
EOF

cat > css/print.css <<'EOF'
@media print {
  .site-header, .hero-actions, .menu-toggle, .site-footer { display: none !important; }
  .section { padding: 25px 0; break-inside: avoid; }
  body { color: #111; font-size: 10pt; }
  .hero-grid, .contact-grid { grid-template-columns: 1fr; }
  .hero-card, .info-card, .skill-card, .education-card, .training-card { box-shadow: none; }
  a { text-decoration: none; color: inherit; }
}
EOF

echo "✓ CSS files created"

# ------------------------------------------
# JavaScript
# ------------------------------------------

cat > js/main.js <<'EOF'
document.addEventListener("DOMContentLoaded", () => {
  if (window.lucide) {
    window.lucide.createIcons();
  }

  const year = document.getElementById("currentYear");
  if (year) year.textContent = new Date().getFullYear();

  const menuButton = document.querySelector(".menu-toggle");
  const navMenu = document.querySelector(".nav-menu");

  menuButton?.addEventListener("click", () => {
    const isOpen = navMenu.classList.toggle("is-open");
    menuButton.setAttribute("aria-expanded", String(isOpen));
  });

  navMenu?.querySelectorAll("a").forEach(link => {
    link.addEventListener("click", () => {
      navMenu.classList.remove("is-open");
      menuButton?.setAttribute("aria-expanded", "false");
    });
  });

  document.getElementById("downloadResume")?.addEventListener("click", () => {
    window.print();
  });
});
EOF

echo "✓ JavaScript created"

# ------------------------------------------
# Section placeholder files
# ------------------------------------------

for section in header hero about highlights expertise experience training achievements education contact footer; do
  cat > "sections/${section}.html" <<EOF
<!-- ${section} section partial.
     The current website content is maintained in index.html.
     Move markup here only if you add a partial-loading/build process. -->
EOF
done

# ------------------------------------------
# Favicon
# ------------------------------------------

cat > assets/icons/favicon.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
  <rect width="64" height="64" rx="14" fill="#101B2B"/>
  <text x="50%" y="54%" dominant-baseline="middle" text-anchor="middle"
    font-family="Arial" font-size="25" font-weight="bold" fill="#ffffff">NK</text>
</svg>
EOF

# ------------------------------------------
# PWA manifest
# ------------------------------------------

cat > manifest.webmanifest <<'EOF'
{
  "name": "Nasneem Khaleel - QA Engineer",
  "short_name": "Nasneem QA",
  "start_url": "./",
  "display": "standalone",
  "background_color": "#F5F7F8",
  "theme_color": "#101B2B",
  "icons": []
}
EOF

# ------------------------------------------
# SEO and deployment files
# ------------------------------------------

cat > robots.txt <<'EOF'
User-agent: *
Allow: /
Sitemap: https://nasneem-portfolio.vercel.app/sitemap.xml
EOF

cat > sitemap.xml <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://nasneem-portfolio.vercel.app/</loc>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>
EOF

cat > .gitignore <<'EOF'
.DS_Store
Thumbs.db
.vscode/
.idea/
node_modules/
dist/
.env
.env.*
!.env.example
EOF

# ------------------------------------------
# README
# ------------------------------------------

cat > README.md <<'EOF'
# Nasneem Khaleel – Portfolio & Resume

Responsive static portfolio website for Nasneem Khaleel.

## Stack
- HTML5
- CSS3 (custom semantic CSS)
- Vanilla JavaScript
- Lucide icons
- Google Fonts (Inter)

## Features
- Responsive layout
- Sticky navigation
- Mobile navigation
- Professional experience timeline
- Technical expertise cards
- Print / Save as PDF resume
- SEO and Open Graph metadata
- PWA manifest starter

## Run locally

Open `index.html` in a browser or use a local static server.

For example:

```bash
python3 -m http.server 8080
```

Then visit http://localhost:8080.

## Before deployment
1. Your domain is configured as `nasneem-portfolio.vercel.app` in `robots.txt` and `sitemap.xml`. Change if deploying elsewhere.
2. Add an approved profile photo under `assets/images/profile/`.
3. Add a final PDF resume under `assets/documents/` if you want a direct PDF download.
4. Confirm the ELT Bridge-to-Work Program dates before adding it.
5. Review all resume content and contact details.
6. Configure real analytics IDs only if analytics and consent are implemented.

## Deployment
Can be deployed as a static website to GitHub Pages, Netlify or Vercel.

## License
Personal portfolio content. Obtain permission before reusing personal information.
EOF

cat > contextllms.txt <<'EOF'
# Nasneem Khaleel Portfolio

Purpose: Personal portfolio and resume website.

Name: Nasneem Khaleel
Role: QA Engineer – Email Campaigns & IVR Tester
Location: Mississauga, Ontario, Canada

Specialties:
- Cyara IVR and contact-centre testing
- Email campaign QA and Litmus
- Selenium WebDriver with Java
- API and functional testing
- AODA / WCAG accessibility testing
- Jira, Jenkins, Maven and Git

Training projects must be distinguished from paid employment.
Do not invent certifications, qualifications, dates or proficiency scores.
EOF

echo "✓ SEO, PWA, README and project files created"

echo ""
echo "=========================================="
echo " Portfolio setup completed successfully"
echo "=========================================="
echo ""
echo "Created in: $PROJECT_DIR"
echo ""
echo "Next steps:"
echo "1. Review index.html and resume details."
echo "2. Add your profile photo to assets/images/profile/."
echo "3. Add a PDF resume to assets/documents/ if required."
echo "4. Replace `nasneem-portfolio.vercel.app` in robots.txt and sitemap.xml if deploying elsewhere."
echo "5. Confirm the ELT program dates before publishing."
echo ""
echo "Start local preview:"
echo "python3 -m http.server 8080"
echo ""
