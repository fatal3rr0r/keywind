<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>${(email_subject!"Notification")?html}</title>

  <style>
    /* Reset basique */
    body, table, td, p, a {
      -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
      mso-line-height-rule: exactly;
    }
    body {
      margin: 0;
      padding: 0;
      width: 100% !important;
      height: 100% !important;
      background-color: #0b0c10;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    }
    img {
      border: 0;
      outline: none;
      text-decoration: none;
      display: block;
      max-width: 100%;
    }
    table {
      border-collapse: collapse;
      mso-table-lspace: 0;
      mso-table-rspace: 0;
    }
    a {
      color: #3b82f6;
      text-decoration: none;
    }

    /* Container */
    .wrapper {
      width: 100%;
      table-layout: fixed;
      background-color: #0b0c10;
      padding: 20px 0;
    }
    .main {
      width: 100%;
      max-width: 600px;
      margin: 0 auto;
      background-color: #020617;
      border-radius: 12px;
      overflow: hidden;
      border: 1px solid #1f2933;
    }

    /* Header */
    .header {
      padding: 20px 24px;
      background: radial-gradient(circle at top left, #1e293b, #020617);
      border-bottom: 1px solid #111827;
    }
    .logo-text {
      font-size: 18px;
      font-weight: 700;
      color: #f9fafb;
      letter-spacing: 0.06em;
      text-transform: uppercase;
    }
    .header-subtitle {
      font-size: 12px;
      color: #9ca3af;
      margin-top: 4px;
    }

    /* Body */
    .content {
      padding: 24px;
    }
    .eyebrow {
      font-size: 12px;
      text-transform: uppercase;
      letter-spacing: 0.12em;
      color: #6b7280;
      margin-bottom: 6px;
    }
    .title {
      font-size: 22px;
      line-height: 1.3;
      color: #f9fafb;
      font-weight: 700;
      margin-bottom: 10px;
    }
    .subtitle {
      font-size: 14px;
      line-height: 1.6;
      color: #9ca3af;
      margin-bottom: 18px;
    }
    .text {
      font-size: 14px;
      line-height: 1.7;
      color: #e5e7eb;
      margin-bottom: 16px;
    }
    .meta-box {
      border-radius: 10px;
      border: 1px solid #111827;
      background: #020617;
      padding: 12px 14px;
      margin-bottom: 20px;
    }
    .meta-row {
      font-size: 13px;
      color: #d1d5db;
      padding: 4px 0;
    }
    .meta-label {
      font-weight: 600;
      color: #9ca3af;
      padding-right: 6px;
    }

    /* CTA */
    .btn-wrapper {
      margin: 24px 0 8px 0;
    }
    .btn {
      display: inline-block;
      padding: 11px 22px;
      border-radius: .25rem;
      font-size: 14px;
      font-weight: 600;
      text-align: center;
      background: #ffb900;
      color: #020617 !important;
      text-decoration: none;
      border: 0;
    }
    .btn-secondary {
      display: inline-block;
      margin-top: 8px;
      font-size: 12px;
      color: #9ca3af;
    }

    /* Badge / Tag */
    .tag {
      display: inline-block;
      padding: 3px 8px;
      border-radius: 999px;
      border: 1px solid #374151;
      font-size: 11px;
      color: #9ca3af;
      margin-bottom: 10px;
    }

    /* Footer */
    .footer {
      padding: 16px 24px 22px 24px;
      border-top: 1px solid #111827;
      background-color: #020617;
    }
    .footer-text {
      font-size: 11px;
      line-height: 1.6;
      color: #6b7280;
    }
    .footer-links a {
      font-size: 11px;
      color: #9ca3af;
      margin-right: 8px;
    }

    /* Responsif */
    @media only screen and (max-width: 600px) {
      .main {
        border-radius: 0;
      }
      .content, .header, .footer {
        padding-left: 16px !important;
        padding-right: 16px !important;
      }
      .title {
        font-size: 20px !important;
      }
      .subtitle, .text {
        font-size: 14px !important;
      }
      .btn {
        width: 100% !important;
      }
      .btn-wrapper {
        text-align: center !important;
      }
      .mobile-center {
        text-align: center !important;
      }
    }
  </style>
</head>
<body>
  <#assign defaultUserName = user_name!"pilote">
  <#assign eyebrowText = eyebrow!("Bonjour " + defaultUserName)>

  <table role="presentation" class="wrapper" width="100%" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center">
        <table role="presentation" class="main" cellpadding="0" cellspacing="0">
          <tr>
            <td class="header">
              <table role="presentation" width="100%">
                <tr>
                  <td class="mobile-center" align="left">
                    <span class="logo-text">${(app_name!"Valpine")?html}</span>
                    <div class="header-subtitle">
                      ${(app_tagline!"Simracing & performances")?html}
                    </div>
                  </td>
                  <td align="right" class="mobile-center" style="font-size: 11px; color: #9ca3af;">
                    ${(email_type!"Transactionnel")?html}
                  </td>
                </tr>
              </table>
            </td>
          </tr>

          <tr>
            <td class="content">
              <div class="eyebrow">
                ${eyebrowText?html}
              </div>

              <div class="title">
                ${(title!"Bienvenue sur Valpine")?html}
              </div>

              <div class="subtitle">
                ${(subtitle!"Tu viens de franchir une nouvelle étape dans ton aventure simracing.")?html}
              </div>

              <div class="tag">
                ${(context_tag!"Nouveau badge débloqué")?html}
              </div>

              <p class="text">
                ${(body_intro!"Merci d’avoir rejoint la communauté. Depuis ton espace, tu peux suivre tes résultats, rejoindre une équipe, et comparer tes performances avec les autres pilotes.")?html}
              </p>

              <table role="presentation" width="100%" class="meta-box">
                <tr>
                  <td class="meta-row">
                    <span class="meta-label">Type :</span>
                    <span>${(meta_type!"Course classement")?html}</span>
                  </td>
                </tr>
                <tr>
                  <td class="meta-row">
                    <span class="meta-label">Circuit :</span>
                    <span>${(meta_track!"Spa-Francorchamps")?html}</span>
                  </td>
                </tr>
                <tr>
                  <td class="meta-row">
                    <span class="meta-label">Résultat :</span>
                    <span>${(meta_result!"P3 / Split 1")?html}</span>
                  </td>
                </tr>
                <tr>
                  <td class="meta-row">
                    <span class="meta-label">Date :</span>
                    <span>${(meta_date!"22 novembre 2025")?html}</span>
                  </td>
                </tr>
              </table>

              <p class="text">
                ${(body_details!"Clique sur le bouton ci-dessous pour voir le détail de tes résultats, analyser tes tours et partager ta performance avec ton équipe.")?html}
              </p>

              <#assign ctaHref = cta_url!"https://valpine.fr">
              <div class="btn-wrapper" style="text-align:left; text-align: center;">
                <a href="${ctaHref?html}" class="btn" target="_blank" rel="noopener">
                  ${(cta_label!"Voir mes résultats")?html}
                </a>
                <div class="btn-secondary">
                  ${(cta_secondary_text!"Si le bouton ne fonctionne pas, copie/colle ce lien dans ton navigateur :")?html}<br />
                  <a href="${ctaHref?html}" target="_blank" rel="noopener">
                    ${ctaHref?html}
                  </a>
                </div>
              </div>

              <p class="text" style="margin-top: 20px;">
                ${(extra_text!"Si tu n’es pas à l’origine de cette action, tu peux ignorer cet email ou contacter le support.")?html}
              </p>
            </td>
          </tr>

          <tr>
            <td class="footer">
              <div class="footer-text">
                Cet email t’a été envoyé par ${(app_name!"Valpine")?html} car ton adresse est associée à un compte actif
                (ex : inscription, demande de rejoindre une équipe, notification de course, badge, etc.).
              </div>
              <div class="footer-text footer-links" style="margin-top: 8px;">
                <a href="${(notifications_url!"https://valpine.fr/account/notifications")?html}" target="_blank" rel="noopener">
                  Gérer mes notifications
                </a>
                |
                <a href="${(privacy_url!"https://valpine.fr/privacy")?html}" target="_blank" rel="noopener">
                  Politique de confidentialité
                </a>
              </div>
              <#assign yearValue = current_year!(.now?string("yyyy"))>
              <div class="footer-text" style="margin-top: 8px;">
                © ${yearValue?html} ${(app_name!"Valpine")?html} – Tous droits réservés.
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>
