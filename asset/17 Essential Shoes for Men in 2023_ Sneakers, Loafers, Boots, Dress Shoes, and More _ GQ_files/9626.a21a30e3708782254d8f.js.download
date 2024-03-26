(globalThis.webpackChunkverso=globalThis.webpackChunkverso||[]).push([[9626],{42820:(e,n,t)=>{const{asConfiguredComponent:o}=t(36380),{asThemedComponent:i}=t(3517),r=t(36125);e.exports=i(o(r,"ContentHeader"))},96921:(e,n,t)=>{const o=t(45697),i=t(67294),{connect:r}=t(59800),{useIntl:a}=t(5917),s=t(36990).Z,d=t(13366).default,l=t(81768),p=t(98288),{googleAnalytics:c}=t(28601),{asConfiguredComponent:g}=t(36380),{doCloseModal:y}=t(47057),{trackComponent:u}=t(40199),{SignInModalBaseWrapper:b,SignInModalCloseButton:h,SignInModalButtons:m,SignInModalDek:f,SignInModalHed:S,SignInModalEmail:B,SignInModalSignInSection:v,SignInModalSpotIllustration:C,SignInModalSignInLink:x,SignInModalHedSpanTag:I}=t(31047),M=({analyticsType:e,authSource:n,brandIdentityAssets:t,className:o,closeButtonCallback:r,dangerousDek:g,dangerousHed:M,dangerousHedSpanTag:P,hasLargeMargins:A,hasRoundedCornersButtons:k,isVisible:w,redirectURL:H,source:$,type:_})=>{i.useEffect((()=>{u("SignInModal")}),[]);const L=n=>c.emitGoogleTrackingEvent(n,{signInModalType:e});w&&L("signin-modal-impression");let N=`${d.oidcAuth}?redirectURL=${encodeURIComponent(H)}&skipAccountLink=true&authSource=${n}`;$&&(N=`${N}&source=${$}`);const T=t.signInModalAsset[_]||t.signInModalAsset.default,{formatMessage:E}=a();return i.createElement(b,{className:o,hasLargeMargins:A,closeTimeoutMS:400,isOpen:w},i.createElement(h,{isIconButton:!0,ariaLabel:E(s.closeButtonAriaLabel),label:E(s.closeButtonLabel),onClickHandler:()=>{y(),L("signin-modal-close"),r&&r()},role:"button",ButtonIcon:l}),i.createElement(S,null,M||E(s.hed),i.createElement(I,null,P||E(s.hedSpanTag))),i.createElement(C,null,i.createElement(p,{...T})),i.createElement(f,{dangerouslySetInnerHTML:{__html:g}}),i.createElement(m,{hasRoundedCornersButtons:k},i.createElement(B,{label:E(s.oidcSignUpButtonLabel),href:N,inputKind:"link",rel:"link",iconPosition:"before",onClickHandler:()=>L("signin-modal-oidc-sign-in-click"),"data-testid":"SignInModalEmail"})),i.createElement(v,null,E(s.oidcSignInText)," ",i.createElement(x,{href:N,onClick:()=>L("signin-modal-oidc-sign-in-click")},E(s.oidcSignInLinkText)),"voting"===_&&i.createElement("div",null,"  »")))};M.displayName="SignInModal",M.defaultProps={authSource:"sign-in-modal",hasLargeMargins:!1,redirectURL:"/",type:"default"},M.propTypes={analyticsType:o.string.isRequired,authSource:o.string,brandIdentityAssets:o.shape({signInModalAsset:o.shape({default:o.object,crosswords:o.object,voting:o.object})}).isRequired,className:o.string,closeButtonCallback:o.func,dangerousDek:o.string,dangerousHed:o.string,dangerousHedSpanTag:o.string,hasLargeMargins:o.bool,hasRoundedCornersButtons:o.bool,isVisible:o.bool,redirectURL:o.string,source:o.string,type:o.oneOf(["default","crosswords","voting"])};const P=g(M,"SignInModal");e.exports=r((e=>{const{signInModalConfig:n,brandIdentityAssets:t}=e;return{brandIdentityAssets:t,...n}}))(P)},9855:(e,n,t)=>{e.exports=t(96921)},31047:(e,n,t)=>{const o=t(67294),i=t(83253),r=t(45697),{default:a,css:s}=t(71893),{BaseText:d,BaseLink:l}=t(74327),{calculateSpacing:p}=t(79720),{BREAKPOINTS:c,ZINDEX_MAP:g}=t(85326),y=t(7279),{getColorToken:u,getTypographyStyles:b}=t(79720),{ResponsiveImagePicture:h}=t(7230),{ButtonWrapper:m}=t(41909),f=a(d).withConfig({displayName:"SignInModalHed"})`
  text-align: center;
`;f.defaultProps={as:"div",colorToken:"colors.discover.body.white.heading",topSpacing:1,typeIdentity:"typography.definitions.consumptionEditorial.display-small"};const S=a.span.withConfig({displayName:"SignInModalHedSpanTag"})`
  display: block;
`,B=a.p.withConfig({displayName:"SignInModalDek"})`
  ${b("typography.definitions.consumptionEditorial.body-core")}
  text-align: center;
  color: ${u("colors.discover.body.white.description")};
  @media (max-width: ${c.md}) {
    margin-bottom: ${p(3)};
  }
`,v=a(d).withConfig({displayName:"SignInModalSpotIllustration"})`
  margin: ${p(1.5)} auto;
  text-align: center;

  ${h} {
    width: 200px;
    height: 170px;
  }
`;v.defaultProps={as:"div",typeIdentity:"typography.definitions.consumptionEditorial.body-core"};const C=a(y.Primary).withConfig({displayName:"SignInModalButtonPrimary"})`
  margin-bottom: ${p(1)};
  width: 100%;
`,x=a(y.Primary).withConfig({displayName:"SignInModalButtonPrimaryOutlined"})`
  width: 100%;
`,I=a(y.Utility).withConfig({displayName:"SignInModalCloseButton"})`
  position: absolute;
  top: ${p(1)};
  right: ${p(1)};
  padding: 0;
  fill: ${u("colors.discovery.body.light.context-tertiary")};

  &,
  &:focus,
  &:hover {
    border: 0;
    background-color: transparent;
  }
`,M=a(y.Utility).withConfig({displayName:"SignInModalEmail"})`
  margin-top: 0;
  padding: 0;
`,P=a.div.withConfig({displayName:"SignInModalButtons"})`
  display: flex;
  justify-content: center;
  margin: auto;
  padding-bottom: ${p(2)};
  width: 100%;

  ${M} {
    padding: 0;
    width: 100%;
  }

  ${({hasRoundedCornersButtons:e})=>e&&`\n    ${m} {\n      border-radius: 4px;\n    }\n  `}
`,A=s`
  &&& {
    padding: ${p(8)} ${p(5)};
    min-height: ${p(62)};
  }
  ${v} {
    margin: ${p(1.5)} auto;

    ${h} {
      width: 175px;
      height: 175px;
    }
  }

  ${B} {
    margin-bottom: ${p(2)};
  }

  ${P} {
    margin-bottom: ${p(4)};

    @media (max-width: ${c.md}) {
      padding-bottom: 0;
    }
  }
`;function k({className:e,...n}){const t=`${e}__content`,r=`${e}__overlay`;return o.createElement(i,{portalClassName:e,className:t,overlayClassName:r,...n})}k.propTypes={className:r.string};const w=a(k).withConfig({displayName:"SignInModalBaseWrapper"})`
  &__overlay {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: ${g.interstitialLayer};

    background-color: rgba(
      ${u("colors.background.black",{rgbOnly:!0})},
      0
    );

    &.ReactModal__Overlay--after-open {
      transition: background-color 750ms;
      opacity: 1;
      background-color: rgba(
        ${u("colors.background.black",{rgbOnly:!0})},
        0.4
      );
    }

    &.ReactModal__Overlay--after-close {
      transition: background-color 750ms;
      background-color: rgba(
        ${u("colors.background.black",{rgbOnly:!0})},
        0
      );
    }
  }

  &__content {
    position: relative;
    top: 50%;
    left: 50%;
    transform: translateY(-50%) translateX(-50%);
    background-color: ${u("colors.background.white")};
    padding: ${p(5)};
    width: ${p(60)};
    max-height: calc(100% - ${p(1,"px")});
    overflow-y: auto;

    @media (max-width: ${c.md}) {
      transform: translateY(-50%)
        translateX(calc(-50% - ${p(2,"px")}));

      margin: 0 ${p(2,"px")};
      padding: ${p(4)} ${p(5)}
        ${p(4)} ${p(5)};
      width: auto;
      min-width: ${p(38)};
      max-width: ${p(60)};
    }

    ${C}
    ${x}
    ${({hasLargeMargins:e})=>!0===e&&A}
  }
`,H=a(d).withConfig({displayName:"SignInModalSignInSection"})`
  display: flex;
  justify-content: center;
  width: 100%;
`;H.defaultProps={as:"div",colorToken:"colors.discovery.body.light.context-tertiary",typeIdentity:"typography.definitions.utility.assistive-text"};const $=a(l).withConfig({displayName:"SignInModalSignInLink"})`
  && {
    z-index: ${g.interstitialLayer};
    margin-left: 5px;
    text-decoration: underline;
  }
`;$.defaultProps={colorToken:"colors.interactive.base.black",typeToken:"typography.definitions.utility.assistive-text"},e.exports={SignInModalBaseWrapper:w,SignInModalCloseButton:I,SignInModalButtons:P,SignInModalDek:B,SignInModalEmail:M,SignInModalHed:f,SignInModalSignInSection:H,SignInModalSignInLink:$,SignInModalSpotIllustration:v,SignInModalHedSpanTag:S}},36990:(e,n,t)=>{const o=t(5917);n.Z=(0,o.defineMessages)({oidcSignUpButtonLabel:{id:"SignInModal.OidcSignUpButtonLabel",defaultMessage:"Create account",description:"SignInModal component OIDC SignUp button label"},closeButtonLabel:{id:"SignInModal.CloseButtonLabel",defaultMessage:"Close Sign In Modal",description:"SignInModal component close button label"},closeButtonAriaLabel:{id:"SignInModal.CloseButtonAriaLabel",defaultMessage:"Close Sign In Modal",description:"SignInModal component close button aria label"},hed:{id:"SignInModal.Hed",defaultMessage:"Save stories ",description:"SignInModal component hed text",isConfigurable:!0},hedSpanTag:{id:"SignInModal.HedSpanTag",defaultMessage:"with an account",description:"SignInModal component hed spanTag text",isConfigurable:!0},oidcSignInText:{id:"SignInModal.OidcSignInText",defaultMessage:"Already have an account?",description:"SignInModal component OIDC SignIn Text"},oidcSignInLinkText:{id:"SignInModal.OidcSignInLinkText",defaultMessage:"Sign in",description:"SignInModal component OIDC SignIn Link Text"}})},96705:(e,n,t)=>{const o=t(94184),i=t(45697),r=t(67294),{useIntl:a}=t(5917),s=t(10229).Z,{trackComponent:d}=t(40199),{SponsoredContentHeaderWrapper:l,SponsoredContentHeaderExternalLink:p,SponsoredContentHeaderInfoBox:c,SponsoredContentHeaderBylineText:g,SponsoredContentHeaderResponsiveAsset:y,SponsoredContentHeaderSponsorName:u}=t(57561),{getBylineText:b,getLogoRatio:h,getSponsoredHeaderDisplayOptions:m,getValidBylineOption:f}=t(931),S=({brandName:e,bylineOption:n,bylineVariant:t,campaignUrl:i,className:S,sponsorLogo:B,sponsorName:v})=>{r.useEffect((()=>{d("SponsoredContentHeader")}),[]);const C=a(),x=f(n),{isBrandedLegacy:I,shouldDisplayLogo:M}=m({bylineOption:x,bylineVariant:t,hasLogo:!!B}),P=b({intl:C,bylineOption:x,brandName:e,sponsorName:v}),A=h({sponsorLogo:B});return r.createElement(l,{isBrandedLegacy:I,className:o(S,x.replace("_","-")),"data-testid":"SponsoredContentHeaderWrapper"},r.createElement(p,{additionalRelVals:["sponsored"],href:i||void 0,attributes:{"aria-label":C.formatMessage(s.sponsoredLinkCTA,{sponsorName:v})}},r.createElement(c,{isBrandedLegacy:I},r.createElement(g,{isBrandedLegacy:I,"data-testid":"SponsoredContentHeaderBylineText"},P),M?r.createElement(y,{altText:B.altText,constrainLogoByWidth:A>1,isBrandedLegacy:I,sources:B.sources}):r.createElement(u,{isBrandedLegacy:I},v))))};S.propTypes={brandName:i.string.isRequired,bylineOption:i.string.isRequired,bylineVariant:i.string.isRequired,campaignUrl:i.string.isRequired,className:i.string,sponsorLogo:i.any,sponsorName:i.string.isRequired},S.displayName="SponsoredContentHeader",e.exports=S},61784:(e,n,t)=>{const{asConfiguredComponent:o}=t(36380);e.exports=o(t(96705),"SponsoredContentHeader")},57561:(e,n,t)=>{const o=t(71893).default,{BaseText:i}=t(74327),{calculateSpacing:r,getColorStyles:a,getTypographyStyles:s}=t(79720),d=t(99956),l=t(56851),p=o.div.withConfig({displayName:"SponsoredContentHeaderWrapper"})`
  display: flex;
  justify-content: center;
  ${({theme:e})=>a(e,"background-color","colors.discovery.body.light.background")};
  padding: ${r(2)};
  width: 100%;
  min-height: 80px;

  ${({isBrandedLegacy:e})=>e?`\n    grid-column: 1 / -1;\n    padding: unset;\n    height: 60px;\n    min-height: unset;\n\n    &.light-theme {\n      ${({theme:e})=>a(e,"background-color","colors.background.light")}\n    }\n  `:""}
`,c=o(l).withConfig({displayName:"SponsoredContentHeaderExternalLink"})`
  text-decoration: none;
`,g=o.div.withConfig({displayName:"SponsoredContentHeaderInfoBox"})`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;

  ${({isBrandedLegacy:e})=>e?"& { flex-direction: unset; }":""}
`,y=o(i).withConfig({displayName:"SponsoredContentHeaderBylineText"})`
  ${({theme:e,isBrandedLegacy:n})=>n?`\n      ${s(e,"typography.definitions.globalEditorial.context-primary")};\n      display: flex;\n      flex-direction: row;\n      align-items: center;\n      justify-content: flex-end;\n      padding-right: ${r(2)};\n      height: 100%;\n\n      &.light-theme {\n        ${a(e,"color","colors.discovery.body.light.heading")}\n      }\n    }\n  `:""}
`;y.defaultProps={as:"div",colorToken:"colors.consumption.lead.standard.syndication",typeIdentity:"typography.definitions.globalEditorial.syndication"};const u=o(d).withConfig({displayName:"SponsoredContentHeaderResponsiveAsset"})`
  &.responsive-asset {
    display: flex;
    align-items: center;
    margin-top: ${r(1)};
    overflow: visible;

    ${({theme:e,isBrandedLegacy:n})=>n?`\n      justify-content: flex-start;\n      margin-top: unset;\n      padding-left: ${r(2)};\n      border-left: 1px solid;\n      ${a(e,"border-color","colors.discovery.body.light.divider")};\n    `:""}
  }

  &.responsive-image {
    height: 60px;

    img {
      height: 100%;
    }

    ${({constrainLogoByWidth:e})=>e?"{\n      width: 60px;\n      height: unset;\n\n      img {\n        height: unset;\n      }\n    }":""}
  }
`,b=o(i).withConfig({displayName:"SponsoredContentHeaderSponsorName"})`
  display: flex;
  align-items: center;
  margin-top: ${r(.5)};

  ${({isBrandedLegacy:e,theme:n})=>e?`\n    justify-content: flex-start;\n    margin-top: unset;\n    padding-left: ${r(.5)};\n\n    &.light-theme {\n      ${a(n,"color","colors.discovery.body.light.syndication")};\n    }\n  `:""}
`;b.defaultProps={as:"div",colorToken:"colors.consumption.lead.standard.syndication",typeIdentity:"typography.definitions.consumptionEditorial.description-feature"},e.exports={SponsoredContentHeaderWrapper:p,SponsoredContentHeaderExternalLink:c,SponsoredContentHeaderInfoBox:g,SponsoredContentHeaderBylineText:y,SponsoredContentHeaderResponsiveAsset:u,SponsoredContentHeaderSponsorName:b}},10229:(e,n,t)=>{const o=t(5917);n.Z=(0,o.defineMessages)({bylineBrandXAdvertiser:{id:"SponsoredContentHeader.BylineBrandXAdvertiser",defaultMessage:"{brandName} X",description:"Byline text when it's a brand and an advertiser"},bylineBrandPresentsAdvertiser:{id:"SponsoredContentHeader.BylineBrandPresentsAdvertiser",defaultMessage:"{brandName} Presents",description:"Byline text when it's a brand presenting an advertiser"},bylineBrandedContent:{id:"SponsoredContentHeader.BylineBrandedContent",defaultMessage:"Branded Content By",description:"Byline text for branded content"},bylineCreated:{id:"SponsoredContentHeader.BylineCreated",defaultMessage:"Created By {brandName} For",description:"Byline text for created by brand"},bylinePaidPost:{id:"SponsoredContentHeader.BylinePaidPost",defaultMessage:"PAID POST",description:"Byline text for a paid post"},bylinePaidPostByAdvertiser:{id:"SponsoredContentHeader.BylinePaidPostByAdvertiser",defaultMessage:"Paid Post by {sponsorName}, Brought to you By Business Reporter",description:"Byline text by advertiser for a paid post"},bylineProduced:{id:"SponsoredContentHeader.BylineProduced",defaultMessage:"Produced By",description:"Byline text for produced by"},bylineProducedByAdvertiser:{id:"SponsoredContentHeader.BylineProducedByAdvertiser",defaultMessage:"Produced By",description:"Byline text for produced by advertiser"},bylinePresentedByAdvertiser:{id:"SponsoredContentHeader.BylinePresentedByAdvertiser",defaultMessage:"Presented By",description:"Byline text for presented by advertiser"},bylineProducedByBrand:{id:"SponsoredContentHeader.BylineProducedByBrand",defaultMessage:"Produced By {brandName} With",description:"Byline text for produced by brand"},bylineSponsored:{id:"SponsoredContentHeader.BylineSponsored",defaultMessage:"Sponsored content",description:"Byline text for sponsored content"},bylineSponsoredContent:{id:"SponsoredContentHeader.BylineSponsoredContent",defaultMessage:"Sponsored Content By",description:"Byline text for sponsored content with a sponsor name"},bylineInCollaboration:{id:"SponsoredContentHeader.BylineInCollaboration",defaultMessage:"In Collaboration With",description:"Byline text for in collaboration with"},bylineSponsoredBy:{id:"SponsoredContentHeader.BylineSponsoredBy",defaultMessage:"Sponsored By",description:"Byline text for sponsored by"},bylineInPartnership:{id:"SponsoredContentHeader.BylineInPartnership",defaultMessage:"In Partnership With",description:"Byline text for in partnership with"},bylineAdvertising:{id:"SponsoredContentHeader.BylineAdvertising",defaultMessage:"Advertising",description:"Byline text for advertising"},bylinePromotedByAdvertiser:{id:"SponsoredContentHeader.BylinePromotedByAdvertiser",defaultMessage:"Promoted by",description:"Byline text for promoted by advertiser"},bylinePromotion:{id:"SponsoredContentHeader.BylinePromotion",defaultMessage:"Promotion",description:"Byline text for promotion"},bylineAdvertisementFeatureWith:{id:"SponsoredContentHeader.BylineAdvertisementFeatureWith",defaultMessage:"Advertisement Feature With",description:"Byline text for advertisement feature with"},bylineOriginalContentBy:{id:"SponsoredContentHeader.BylineOriginalContentBy",defaultMessage:"Original Content By",description:"Byline text for Original Content By"},sponsoredLinkCTA:{id:"SponsoredContentHeader.SponsoredLinkCTA",defaultMessage:"Click to go to {sponsorName}'s website",description:"Call to action for sponsored link"},bylineAdvertisementByAdvertiser:{id:"SponsoredContentHeader.bylineAdvertisementByAdvertiser",defaultMessage:"Advertisement By",description:"Byline text for advertisement by advertiser"},bylineAd:{id:"SponsoredContentHeader.bylineAd",defaultMessage:"Ad",description:"Byline text for ad"},bylineSponsoredByAdvertiser:{id:"SponsoredContentHeader.bylineSponsoredByAdvertiser",defaultMessage:"Sponsored By",description:"Byline text for sponsored by advertiser"},bylineInPartnershipWithAdvertiser:{id:"SponsoredContentHeader.bylineInPartnershipWithAdvertiser",defaultMessage:"In Partnership With",description:"Byline text for in partnership with advertiser"},bylinePaidPartnershipWithAdvertiser:{id:"SponsoredContentHeader.bylinePaidPartnershipWithAdvertiser",defaultMessage:"Paid Partnership With",description:"Byline text for paid partnership with advertiser"},bylineAffiliatePartner:{id:"SponsoredContentHeader.bylineAffiliatePartner",defaultMessage:"Affiliate Partner",description:"Byline text for affiliate partner"},bylinePaidPromotionByAdvertiser:{id:"SponsoredContentHeader.bylinePaidPromotionByAdvertiser",defaultMessage:"Paid Promotion By",description:"Byline text for paid promotion by advertiser"},bylineSpecialFeature:{id:"SponsoredContentHeader.bylineSpecialFeature",defaultMessage:"Special Feature",description:"Byline text for special feature"}})},931:(e,n,t)=>{const o=t(10229).Z,i="produced_by_advertiser",r={brand_x_advertiser:o.bylineBrandXAdvertiser,brand_presents_advertiser:o.bylineBrandPresentsAdvertiser,branded_content:o.bylineBrandedContent,created:o.bylineCreated,original_content_by:o.bylineOriginalContentBy,paid_post:o.bylinePaidPost,paid_post_by_advertiser_brought_to_you_by_business_reporter:o.bylinePaidPostByAdvertiser,produced:o.bylineProduced,produced_by_advertiser:o.bylineProducedByAdvertiser,presented_by_advertiser:o.bylinePresentedByAdvertiser,produced_by_brand:o.bylineProducedByBrand,sponsored:o.bylineSponsored,sponsored_content:o.bylineSponsoredContent,in_collaboration:o.bylineInCollaboration,sponsored_by:o.bylineSponsoredBy,in_partnership:o.bylineInPartnership,advertisement_feature_with:o.bylineAdvertisementFeatureWith,advertisement_by_advertiser:o.bylineAdvertisementByAdvertiser,ad:o.bylineAd,sponsored_by_advertiser:o.bylineSponsoredByAdvertiser,in_partnership_with_advertiser:o.bylineInPartnershipWithAdvertiser,paid_partnership_with_advertiser:o.bylinePaidPartnershipWithAdvertiser,affiliate_partner:o.bylineAffiliatePartner,paid_promotion_by_advertiser:o.bylinePaidPromotionByAdvertiser,special_feature:o.bylineSpecialFeature,advertising:o.bylineAdvertising,promoted_by_advertiser:o.bylinePromotedByAdvertiser,promotion:o.bylinePromotion};function a(e){return Object.prototype.hasOwnProperty.call(r,e)?e:i}e.exports={BYLINE_TEMPLATES:r,getBylineText:function({intl:e,bylineOption:n=i,brandName:t,sponsorName:o}){return e.formatMessage(r[n],{brandName:t,sponsorName:o})},getLogoRatio:function({sponsorLogo:e}){return(e?.sources?.sm?.height||0)/(e?.sources?.sm?.width||1)},getSponsoredHeaderDisplayOptions:function({bylineOption:e,bylineVariant:n,hasLogo:t}){const o=a(e),i="sponsored"===o||"produced"===o;return{isBrandedLegacy:i,shouldDisplayLogo:t&&("logo"===n||i)}},getValidBylineOption:a}},13366:(e,n)=>{Object.defineProperty(n,"__esModule",{value:!0}),n.proxyApiRoutes=void 0,n.default=Object.freeze({oidcAuth:"/auth/initiate",oidcAuthSessionEnd:"/auth/session/end",oidcAccountSignOut:"/auth/end",oidcExchange:"/auth/exchange",oidcForgotPassword:"/auth/forgot",oidcLanding:"/auth/complete",oidcMagicLink:"/auth/request-link",oidcRefresh:"/auth/refresh",oidcRefreshRedirect:"/auth/refresh-redirect",oauth:{jwks:"/.well-known/jwks",oidcConfig:"/.well-known/openid-configuration",authorizationGrant:"/api/utility/oauth/authorization",tokenExchange:"/api/utility/oauth/token"}}),n.proxyApiRoutes=Object.freeze({authenticate:"/v2/authenticate",googleAuthenticate:"/v2/sso/google",marketingPermissions:"/v2/marketing-permissions",newsletterSubscriptions:"/v2/newsletter-subscriptions",requestPasswordReset:"/v2/reset-password-token",resetPassword:"/v2/users/reset-password",requestSignInHelp:"/v2/magic-link/send",sailthruNewsletterSubscriptions:"/v2/newsletter/sailthru",swgAuthenticate:"/v2/swg/authenticate",swgSubscribe:"/v2/swg/subscription",userDetails:"/v2/users",userLookup:"/v2/users/lookup"})},29750:e=>{e.exports=function(e,n,t){return e==e&&(void 0!==t&&(e=e<=t?e:t),void 0!==n&&(e=e>=n?e:n)),e}},74691:(e,n,t)=>{var o=t(29750),i=t(14841);e.exports=function(e,n,t){return void 0===t&&(t=n,n=void 0),void 0!==t&&(t=(t=i(t))==t?t:0),void 0!==n&&(n=(n=i(n))==n?n:0),o(i(e),n,t)}}}]);