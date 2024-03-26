(globalThis.webpackChunkverso=globalThis.webpackChunkverso||[]).push([[5029],{90464:(e,t,a)=>{const o=a(67294),n=a(45697),{useIntl:i}=a(5917),{trackComponent:r}=a(40199),{HiddenCheckbox:l,Overlay:s,Title:d,Text:c,Logo:m,DefaultLogo:p,AgeGateButton:u}=a(35229),{AGE_GATE_ACCEPT:g,AGE_GATE_COOKIE_KEY:h}=a(22830),{hasContentWarnings:y,acceptAgeGatePrompt:b}=a(95833),{getCookie:C}=a(66071),f=a(83506).Z,S=({hed:e,dek:t,acceptLabel:a,declineLabel:n,logo:S,content:A,cookieExpirationInDays:E,brandContentWarnings:T})=>{o.useEffect((()=>{r("AgeGate")}),[]);const{useState:k,useEffect:w}=o,{formatMessage:$}=i(),[B,x]=k(!1);if(w((()=>{const e=!(C(h)===g)&&y({content:A,brandContentWarnings:T});x(e)}),[A,T]),!B)return null;const L=t??$(f.ageGateDekText);return o.createElement(o.Fragment,null,o.createElement(l,{id:"age-gate-check"}),o.createElement(s,{id:"age-gate-overlay",role:"dialog","aria-labelledby":"age-gate-title","aria-describedby":"age-gate-description"},S?o.createElement(m,{src:S,alt:e}):o.createElement(p,null),o.createElement(d,{as:"h2",id:"age-gate-title"},e??$(f.ageGateHedText)),L&&o.createElement(c,{id:"age-gate-description"},L),o.createElement("label",{htmlFor:"age-gate-check",key:"age-gate-label-accept"},o.createElement(u,{inputKind:"link",onClickHandler:()=>((e,t)=>{e(!1),b(t)})(x,E),key:"age-gate-button-accept",dataAttrs:{"data-test-id":"age-gate-button-accept"},label:a||$(f.ageGateAcceptLabel)})),o.createElement(u,{href:"/",inputKind:"link",key:"age-gate-button-decline",dataAttrs:{"data-test-id":"age-gate-button-decline"},label:n||$(f.ageGateDeclineLabel)})))};S.displayName="AgeGate",S.propTypes={acceptLabel:n.string,brandContentWarnings:n.array,content:n.object.isRequired,cookieExpirationInDays:n.number,declineLabel:n.string,dek:n.string,hed:n.string,logo:n.string},S.defaultProps={brandContentWarnings:["sexual_content","drug_content","death_content","alcohol_content"]},e.exports=S},22830:(e,t)=>{Object.defineProperty(t,"__esModule",{value:!0}),t.AGE_GATE_COOKIE_EXPIRATION_IN_DAYS=t.AGE_GATE_COOKIE_KEY=t.AGE_GATE_ACCEPT=void 0,t.AGE_GATE_ACCEPT="accept",t.AGE_GATE_COOKIE_KEY="ageGate",t.AGE_GATE_COOKIE_EXPIRATION_IN_DAYS=28},38134:(e,t,a)=>{const{asConfiguredComponent:o}=a(36380),n=a(90464);e.exports=o(n,"AgeGate")},35229:function(e,t,a){var o=this&&this.__importDefault||function(e){return e&&e.__esModule?e:{default:e}};Object.defineProperty(t,"__esModule",{value:!0}),t.AgeGateButton=t.Text=t.Title=t.Logo=t.DefaultLogo=t.Overlay=t.HiddenCheckbox=void 0;const n=o(a(71893)),i=a(28657),r=a(79720),l=o(a(18322)),s=a(74327),d=o(a(7279));t.HiddenCheckbox=n.default.input.withConfig({displayName:"AgeGateCheckbox"})``,t.HiddenCheckbox.defaultProps={hidden:!0,type:"checkbox"},t.Overlay=n.default.div.withConfig({displayName:"AgeGateOverlay"})`
  display: flex;
  position: fixed;
  top: 0;
  left: 0;
  flex-direction: column;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
  z-index: 10000;
  background: ${(0,r.getColorToken)("colors.consumption.lead.inverted.background")};
  padding: 0 1rem;
  width: 100%;
  height: 100%;
  text-align: center;

  ${t.HiddenCheckbox}:checked ~ & {
    display: none;
  }

  @media (min-width: ${i.minThresholds.lg}px) {
    padding: 0 10rem;
  }

  @media (min-width: ${i.minThresholds.xl}px) {
    padding: 0 20rem;
  }
`,t.DefaultLogo=(0,n.default)(l.default.AgeGate).withConfig({displayName:"AgeGateDefaultLogo"})`
  transform: scale(1.135);
  margin: 0 0 ${(0,r.calculateSpacing)(3)};
  fill: ${({theme:e})=>(0,r.getColorToken)(e,"colors.consumption.lead.inverted.heading")};
  width: 96px;
  height: 96px;

  path:first-of-type {
    fill: ${({theme:e})=>(0,r.getColorToken)(e,"colors.consumption.lead.inverted.accent")};
  }
`,t.Logo=n.default.img.withConfig({displayName:"AgeGateLogo"})`
  margin: 0 0 ${(0,r.calculateSpacing)(3)};
  width: 96px;
  height: 96px;
`,t.Title=(0,n.default)(s.BaseText).withConfig({displayName:"AgeGateTitle"})`
  margin: 0 0 ${(0,r.calculateSpacing)(2)};

  & + label,
  & + button {
    margin-top: ${(0,r.calculateSpacing)(2)};
  }
`,t.Title.defaultProps={colorToken:"colors.consumption.lead.inverted.heading",typeIdentity:"typography.definitions.consumptionEditorial.hed-bulletin"},t.Text=(0,n.default)(s.BaseText).withConfig({displayName:"AgeGateText"})`
  margin: 0 0 ${(0,r.calculateSpacing)(4)};
`,t.Text.defaultProps={colorToken:"colors.consumption.lead.inverted.heading",typeIdentity:"typography.definitions.consumptionEditorial.description-core"},t.AgeGateButton=(0,n.default)(d.default.Primary).withConfig({as:"a",displayName:"AgeGateButton"})`
  margin: 0 0 ${(0,r.calculateSpacing)(2)};
`},83506:(e,t,a)=>{const o=a(5917);t.Z=(0,o.defineMessages)({ageGateHedText:{id:"AgeGate.HedText",defaultMessage:"Are you 18 or over?",description:"Age Gate title"},ageGateDekText:{id:"AgeGate.DekText",defaultMessage:"This material is intended for people over the age of 18",description:"Age Gate description"},ageGateAcceptLabel:{id:"AgeGate.AcceptLabel",defaultMessage:"I am 18+",description:"Age Gate accept button label"},ageGateDeclineLabel:{id:"AgeGate.DeclineLabel",defaultMessage:"I'm under 18",description:"Age Gate decline button label"}})},95833:(e,t,a)=>{Object.defineProperty(t,"__esModule",{value:!0}),t.acceptAgeGatePrompt=t.hasContentWarnings=void 0;const o=a(22830),{createCookie:n}=a(66071);t.hasContentWarnings=({content:e,brandContentWarnings:t}={})=>{const{contentWarnings:a}=e||{},o=t?.some((e=>a?.some((t=>t.slug===e))));return Boolean(o)},t.acceptAgeGatePrompt=e=>{document.cookie=n(o.AGE_GATE_COOKIE_KEY,o.AGE_GATE_ACCEPT,{expirationInMs:864e5*(e||o.AGE_GATE_COOKIE_EXPIRATION_IN_DAYS),path:"/"})}},32554:(e,t,a)=>{const o=a(94184),n=a(45697),i=a(67294),{useIntl:r}=a(5917),l=a(87962),{storyVideoPosition:s}=a(26544),d=a(83647),c=a(84076),m=a(98288),p=a(13134),{transformLegacySources:u}=a(8998),g=a(19206).Z,{ContentHeaderLeadAsset:h,ContentHeaderResponsiveAsset:y,ContentHeaderLeadAssetContent:b,ContentHeaderLeadAssetCaption:C,ContentHeaderLeadAssetContentMedia:f,ContentHeaderLedeLightboxButton:S,ContentHeaderLeadRailAnchor:A,ContentHeaderLeadContentFullWidth:E,ContentHeaderLeadContentCaptionCredit:T,ContentHeaderLeadAssetAwards:k}=a(6845),{useState:w,Fragment:$}=i,B="portrait",x=({awards:e,className:t,captionWidth:a,containerTheme:n,lede:m,mediaWidth:x,shouldRenderRailAnchor:L,showFullWidthLeadImage:I,socialIcons:v,hasLightboxButton:_,hasStaticPositionedAward:R,hasInvertedLedeBackground:N,hideLedeCaption:G,shouldAlignCenterWhenNoCaption:P})=>{const[H,W]=w((e=>{const t=e?.masterAspectRatio?.split(":");return e?.restrictCropping&&2===t?.length&&Number(t[0])/Number(t[1])<=1?B:"landscape"})(m)),{formatMessage:O}=r(),D=({width:e,height:t})=>{e/t<=1&&W(B)},M=u(m),K="cnevideo"===m.modelName,V="gallery"===m.modelName,F="clip"===m.modelName;let q=null;K&&m.cneVideoOverrides&&Object.keys(m.cneVideoOverrides).length&&(q={...m.cneVideoOverrides});const j=!G&&(m.caption&&m.caption.trim()||m.credit&&m.credit.trim()),Y=P&&(!m.caption||""===m.caption),Z=i.createElement(C,{dangerousCaptionText:m.caption,dangerousCredit:m.credit,mediaWidth:x,isLedeTextCenterForMobile:Y}),U=q?{shouldAutoplay:Boolean(!q.disableAutoplay),shouldMute:Boolean(q.muted),shouldPlayContinuously:Boolean(q.continuousPlay),isStickyType:Boolean(q.sticky),shouldDisableAds:Boolean(q.disableAds),shouldLoopVideo:Boolean(q.loopVideo)}:{shouldAutoplay:!0};return i.createElement($,null,i.createElement(h,{className:o("lead-asset",t),mediaWidth:x,containerTheme:n,ledeContentType:m.contentType,ledeAssetOrientation:H,hasInvertedLedeBackground:N,"data-testid":"ContentHeaderLeadAsset"},i.createElement(b,null,i.createElement(f,{ledeContentType:m.contentType,showFullWidthLeadImage:I,mediaWidth:x,className:`lead-asset__content__${m.contentType}`},!K&&!V&&!F&&i.createElement($,null,e&&!R&&i.createElement(k,{awards:e,hasStaticPositionedAward:R}),i.createElement(y,{...M,onAssetLoaded:D,shouldRestrictCropping:m?.restrictCropping,masterAspectRatio:m?.masterAspectRatio,shouldHoldImageSpace:!0,mediaWidth:x,"data-testid":"assetMedia"})),K&&m.scriptEmbedUrl&&i.createElement(l,{...U,scriptUrl:m.scriptEmbedUrl,shouldHaveTeaser:!0,videoEmbedPosition:s}),V&&i.createElement(d,{...m,showNoAdsFromParent:!0}),v&&i.createElement(p.Overlay,{links:v.links}),F&&i.createElement(y,{...M,onAssetLoaded:D,shouldRestrictCropping:m?.restrictCropping,masterAspectRatio:m?.masterAspectRatio,shouldHoldImageSpace:!0,mediaWidth:x,"data-testid":"assetMedia"}),_&&i.createElement(S,{onClickHandler:()=>{document.querySelector(".responsive-image--expandable").click()},ButtonIcon:()=>i.createElement(c,null),hasEnableIcon:!0,btnStyle:"text",iconPosition:"before",inputKind:"button",isStaticText:!0,label:O(g.showAllPhotos),shouldRenderCaption:j}),j&&"fullbleed"!==a&&Z,e&&R&&i.createElement(k,{awards:e,hasStaticPositionedAward:R}))),L&&i.createElement(A,{"data-testid":"ContentHeaderLeadRailAnchor"})),j&&"fullbleed"===a&&i.createElement(E,null,i.createElement(T,null,Z)))};x.propTypes={awards:n.array,captionWidth:n.oneOf(["standard","fullbleed"]),className:n.string,containerTheme:n.oneOf(["standard","inverted","special"]),hasInvertedLedeBackground:n.bool,hasLightboxButton:n.bool,hasStaticPositionedAward:n.bool,hideLedeCaption:n.bool,lede:n.oneOfType([n.shape(m.propTypes),n.shape(l.propTypes)]).isRequired,mediaWidth:n.oneOf(["small","smallrule","grid","fullbleed"]),shouldAlignCenterWhenNoCaption:n.bool,shouldRenderRailAnchor:n.bool,showFullWidthLeadImage:n.bool,socialIcons:n.shape(p.propTypes)},x.defaultProps={captionWidth:"standard",hasStaticPositionedAward:!1,hideLedeCaption:!1,shouldAlignCenterWhenNoCaption:!1},e.exports=x,e.exports.transformLegacySources=u},19206:(e,t,a)=>{const o=a(5917);t.Z=(0,o.defineMessages)({showAllPhotos:{id:"ContentHeader.ShowAllPhotos",defaultMessage:"Show all Photos",description:"Call to action to view entire photo gallery"},readReviews:{id:"ContentHeader.ReadReviews",defaultMessage:"Read Reviews",description:"Call to action to read reviews"}})},41761:(e,t,a)=>{const o=a(45697),n=a(67294),i=a(90204),{PaywallInlineBarrierWrapper:r}=a(67541),{trackComponent:l}=a(40199),s=function(e){n.useEffect((()=>{l("PaywallInlineBarrier")}),[]);const{position:t,className:a}=e;return n.createElement(r,{className:a,"data-testid":"PaywallInlineBarrierWrapper"},n.createElement(i,{position:t,aria:{"aria-live":"polite"}}))};s.propTypes={className:o.string,position:o.string},s.defaultProps={position:"paywall-inline-barrier"},e.exports=s},99520:(e,t,a)=>{e.exports=a(41761)},67541:(e,t,a)=>{const{default:o}=a(71893),n=o.aside.withConfig({displayName:"PaywallInlineBarrierWrapper"})`
  width: auto;
  height: auto;

  @media print {
    display: none;
  }
`;e.exports={PaywallInlineBarrierWrapper:n}},46990:(e,t,a)=>{const o=a(45697),n=a(67294),{useIntl:i}=a(5917),r=a(7279),l=a(44031),s=a(22444).Z,{componentTracking:d}=a(28601),{useOnAdFilled:c}=a(84540),{asConfiguredComponent:m}=a(36380),{trackComponent:p}=a(40199),{SummaryCollectionSplitColumnsWrapper:u,SummaryCollectionSplitColumnsItems:g,SummaryCollectionSplitColumnsRecsWrapper:h,SummaryCollectionSplitColumnsItem:y}=a(79663),b=({className:e,dangerousHed:t,guideItem:a,hasBackgroundColor:o,hasBorderItem:l,hasExtraRubricSpace:m,hasLessBottomSpace:b,hasTighterBylineSpacing:C,itemHedTag:f,location:S,recommendedItems:A,recommendedItemCount:E,shouldHideDangerousDek:T,shouldAppendReadMoreLinkForDek:k,shouldHideBylines:w,shouldEnableBundleComponentAnalytics:$,summaryItemRubricVariation:B,trackingNamespace:x})=>{n.useEffect((()=>{p("SummaryCollectionSplitColumns")}),[]);const{formatMessage:L}=i(),{items:I,recommendedType:v,recommendedClickout:_}=A,R=f||(t?"h3":"h2"),[N]=c("trending-ad");return n.createElement(u,{className:e,"data-testid":"SummaryCollectionSplitColumnsWrapper",hasBackgroundColor:o},n.createElement(g,{"data-testid":"SummaryCollectionSplitColumnsItems",showTrendingAd:N},n.createElement(h,null,n.createElement("p",null,L(s.recommendedTitle,{recommendedType:v})),I.slice(0,E).map(((e,t)=>{const a=d.addDataSectionTitleAttribute($,x?.item,t);return n.createElement(n.Fragment,{key:t},n.createElement(y,{...e,analyticsDataAttribute:a,variation:"TextBelowImageLeftHasRuleWithDek",hasBorder:l,hedTag:R,key:t,rubricVariation:B,"data-testid":"SummaryCollectionSplitColumnsItem",shouldHideDangerousDek:T,shouldAppendReadMoreLinkForDek:k,shouldHideBylines:w,hasLessBottomSpace:b,hasExtraRubricSpace:m}))})),_&&n.createElement(r.Utility,{label:L(s.viewAllButton,{location:S,recommendedType:v}),inputKind:"link",href:_})),n.createElement(y,{...a[0],image:a[0].lede,dangerousHed:S?L(s.guideItemHed,{location:S}):t,variation:"TextBelowImageLeftHedAndDek",hasBorder:l,hedTag:R,rubricVariation:B,"data-testid":"SummaryCollectionSplitColumnsItem",shouldHideBylines:w,hasTighterBylineSpacing:C,hasLessBottomSpace:b,hasExtraRubricSpace:m})))};b.propTypes={className:o.string,dangerousHed:o.string,guideItem:o.arrayOf(o.shape(l.propTypes)).isRequired,hasBackgroundColor:o.bool,hasBorderItem:o.bool,hasExtraRubricSpace:o.bool,hasLessBottomSpace:o.bool,hasTighterBylineSpacing:o.bool,itemHedTag:o.string,location:o.string,recommendedItemCount:o.number,recommendedItems:o.shape({items:o.arrayOf(o.shape(l.propTypes)),recommendedType:o.string,recommendedClickout:o.string}).isRequired,shouldAppendReadMoreLinkForDek:o.bool,shouldEnableBundleComponentAnalytics:o.bool,shouldHideBylines:o.bool,shouldHideDangerousDek:o.bool,summaryItemRubricVariation:o.string,trackingNamespace:o.object},b.defaultProps={hasBackgroundColor:!0,hasBorderItem:!0,hasExtraRubricSpace:!1,hasLessBottomSpace:!1,hasTighterBylineSpacing:!1,recommendedItemCount:2,shouldAppendReadMoreLinkForDek:!0,shouldHideBylines:!0,shouldHideDangerousDek:!1},b.displayName="SummaryCollectionSplitColumns",e.exports=m(b,"SummaryCollectionSplitColumns")},71311:(e,t,a)=>{e.exports=a(41261)},79663:(e,t,a)=>{const o=a(67294),{default:n}=a(71893),{BylineWrapper:i,BylinePreamble:r,BylineName:l,BylineLink:s}=a(72369),d=a(44031),{GridItem:c}=a(14134),m=a(48655),{calculateSpacing:p,getColorToken:u,getColorStyles:g,getTypographyStyles:h,minScreen:y,styledProperty:b}=a(79720),{BREAKPOINTS:C}=a(85326),f=n.div.withConfig({displayName:"SummaryCollectionSplitColumnsWrapper"})`
  margin: ${p(4)} 0;
  background-color: ${({hasBackgroundColor:e})=>e?u("colors.discovery.body.light.background"):"transparent"};
`,S=`\n  &:last-child {\n    padding-bottom: 0;\n    \n    ${y(C.md)}{\n      padding-bottom: ${p(2)};\n    }\n  }\n`,A=n((({columnAmount:e,variation:t,shouldHideDangerousDek:a,hasExtraRubricSpace:n,hasLessBottomSpace:i,hasTighterBylineSpacing:r,...l})=>{const s=d[t];return o.createElement(s,{...l})})).withConfig({displayName:"SummaryCollectionSplitColumnsItem"})`
  ${f} & {
    padding-bottom: ${p(2)};

    ${y(C.md)} {
      border-bottom: 0;
    }

    .summary-item__rubric {
      ${h("typography.definitions.globalEditorial.context-primary")}
      display: block;
      color: ${u("colors.discovery.body.light.context-signature")};

      ${y(C.md)} {
        margin-bottom: ${({hasExtraRubricSpace:e})=>p(e?1:.5)};
      }
    }

    .summary-item__hed-link {
      color: ${u("colors.discovery.body.light.heading")};

      &::after {
        display: none;
      }
    }

    .summary-item__hed {
      ${h("typography.definitions.discovery.hed-bulletin-primary")}
      margin-bottom: 0;
    }

    .summary-item__dek {
      ${h("typography.definitions.discovery.description-page")}
      display: ${({shouldHideDangerousDek:e})=>e?"none":"block"};
      margin: ${p(2)} 0 ${p(1)};
      color: ${u("colors.discovery.body.white.description")};
    }

    .summary-item__content {
      padding-bottom: ${({hasLessBottomSpace:e})=>e?p(0):""};
    }

    .summary-item__byline {
      margin-top: ${({hasTighterBylineSpacing:e})=>p(e?1:2)};

      ${i},
      ${r},
      ${l},
      ${s} {
        ${h("typography.definitions.globalEditorial.accreditation-core")}
        color: ${u("colors.discovery.body.light.accreditation")};
      }

      ${s}:link {
        color: ${u("colors.discovery.body.light.accreditation")};
      }
    }

    .summary-item__metadata-secondary {
      margin: ${p(2)} 0 0 0;
    }

    ${b("hasBorder",!1,S)};
  }
`,E=n(m.ThreeUp).withConfig({displayName:"SummaryCollectionSplitColumnsItems"})`
  ${c} {
    grid-column: 1 / -1;
    margin-top: ${p(2)};
  }
  ${c}:first-of-type {
    margin: ${p(3)} 0;
    ${y(C.md)} {
      grid-column: span 7;
    }
  }
  ${c}:last-of-type {
    ${y(C.md)} {
      grid-column: span 5;
      margin: ${p(3)} 0;
    }
  }
`,T=n("div").withConfig({displayName:"SummaryCollectionSplitColumnsRecsWrapper"})`
  display: grid;
  grid-column-gap: ${p(3)};
  grid-template-columns: repeat(6, 1fr);
  grid-row-gap: ${p(2)};
  height: 100%;

  ${y(C.md)} {
    display: grid;
    grid-template-rows: 5% 75% 20%;
    grid-row-gap: ${p(1)};
    border-right: 1px solid;
    border-color: ${({theme:e})=>g(e,"border-color","colors.consumption.body.standard.divider")};
    padding-right: ${p(3)};
  }

  p {
    grid-column: span 6;
    grid-row: 1 / 1;
    align-self: center;
    margin: 0;
    ${({theme:e})=>h(e,"typography.definitions.foundation.link-primary")}
  }

  .summary-item {
    display: grid;
    grid-column-gap: 1rem;
    grid-column: span 6;
    grid-template-columns: 40% 60%;
    align-items: center;

    ${y(C.sm)} {
      grid-template-columns: 1fr 1fr;
    }

    ${y(C.md)} {
      display: unset;
      grid-column: span 3;
      grid-row: 2 / 2;
    }
  }

  .button {
    grid-column: span 6;
    max-height: ${p(6)};
    ${y(C.md)} {
      grid-column: 2 / span 4;
      grid-row: 3;
    }
    ${y(C.lg)} {
      justify-self: center;
      padding: 0 ${p(6)};
    }
  }
`;e.exports={SummaryCollectionSplitColumnsWrapper:f,SummaryCollectionSplitColumnsItems:E,SummaryCollectionSplitColumnsRecsWrapper:T,SummaryCollectionSplitColumnsItem:A}},22444:(e,t,a)=>{const o=a(5917);t.Z=(0,o.defineMessages)({viewAllButton:{id:"SummaryCollectionSplitColumns.ViewAllButton",defaultMessage:"View All {location} {recommendedType}",description:"button label for view all button"},guideItemHed:{id:"SummaryCollectionSplitColumns.GuideItemHed",defaultMessage:"{location} Travel Guide",description:"dangerousHed for guideItem"},recommendedTitle:{id:"SummaryCollectionSplitColumns.RecommendedTitle",defaultMessage:"Recommended {recommendedType}",description:"recommended title for recircs"}})},41261:(e,t,a)=>{const o=a(46990);e.exports=o},3183:(e,t,a)=>{const{default:o}=a(71893),n=a(46647),{BREAKPOINTS:i,GRID_GAP:r}=a(85326),{applyGridSpacing:l,cssVariablesGrid:s}=a(62470),{calculateSpacing:d,minMaxScreen:c,getDecoration:m,getColorToken:p,minScreen:u}=a(79720),{SummaryListWrapper:g}=a(41849),h=o.div.withConfig({displayName:"SummaryRiverWrapper"})`
  ${s()}

  .summary-item__dek--isCneVideo {
    display: none;
  }

  ${({isFullBleedMobile:e})=>e&&`\n        ${g} {\n            ${c(0,i.md)} {\n              padding: 0;\n            }\n        }\n    `};
  ${({gridColSpanValue:e,showRecircMostPopularInAsideWithRail:t})=>e>=1&&t?`\n           @media (min-width: calc(${i.lg} - 1px)) {\n                .summary-list  .grid-layout__content {\n                  grid-column: span ${e};\n                }\n              }\n            `:""}

  ${({topSpacingInRem:e})=>e?`\n        ${u(i.md)} {\n          margin-top: ${d(e)};\n        }\n      `:""}
`,y=o(n).withConfig({displayName:"SummaryRiverAd"})`
  margin-bottom: ${d(4)};
`,b=o.div.withConfig({displayName:"SummaryRiverTitleWrapper"})`
  ${l("padding")}
  ${({hasScrollOffset:e})=>e?`scroll-margin-top: ${d(8)};`:""}

  margin-bottom: ${d(4)};

  ${({hasExtraTitlePadding:e})=>e?`\n      @media (min-width: ${i.xxl}) {\n        padding-left: calc(2.5 * var(--grid-margin));\n        padding-right: calc(2.5 * var(--grid-margin));\n      }\n      `:""}

  ${({hasDividerAbove:e})=>e?"":`margin-top: ${d(2)};`}
`,C=o.section.withConfig({displayName:"SummaryRiverSection"})``,f=o.div.withConfig({displayName:"SummaryRiverList"})`
  ${({hasRule:e,theme:t,shouldFetchBITokens:a})=>e?`\n        &::before {\n          border-top: 1px solid ${p(t,"colors.discovery.body.white.divider")};\n          content: '';\n          grid-column: 1/-1;\n          margin-bottom: ${d(5-r.md)};\n          ${a?`border-top : ${m(t,"dividerWidth")} solid \n                                  ${p(t,"colors.discovery.body.white.border")};`:""}\n        }\n      `:""}
`;e.exports={SummaryRiverList:f,SummaryRiverWrapper:h,SummaryRiverAd:y,SummaryRiverSection:C,SummaryRiverTitleWrapper:b}},56267:(e,t,a)=>{const o=a(67294),{useState:n}=a(67294),i=a(45697),r=a(22247),{PaymentGateway:l}=a(28576),{asConfiguredComponent:s}=a(36380),{StickyMidContentAdWrapper:d}=a(66562),c=a(76644),m={"300x250":500,"320x100":500,"300x50":500,"320x50":500},p=e=>{const{isNoAds:t,isStickyEnabled:a}={...e},[i,s]=n(),c=a&&i&&2===i.length?`${i[0]}x${i[1]}`:"0x0";return t?null:o.createElement(d,{height:m[c]||null,className:"ad-stickymidcontent"},o.createElement(l,{group:"ads"},o.createElement(r,{position:"mid-content",handleAdSizeChange:e=>{s(e)},shouldDisplayLabel:!0,...e})))};p.propTypes={isNoAds:i.bool,isStickyEnabled:i.bool},p.defaultProps={isStickyEnabled:!1},p.displayName="StickyMidContent",e.exports=c(s(p,"StickyMidContent"),{keysToPluck:["isNoAds"]})},20906:(e,t,a)=>{const o=a(67294),n=a(45697),{trackComponent:i}=a(40199),r=({accountId:e})=>(o.useEffect((()=>{i("BeopScript")}),[]),o.createElement(o.Fragment,null,o.createElement("script",{id:"beop-script",className:"optanon-category-C0004",type:"text/plain",dangerouslySetInnerHTML:{__html:`window.beOpAsyncInit = function () {\n                      window.BeOpSDK.init({\n                        account: '${e}'\n                      });\n                      window.BeOpSDK.watch();\n                  };`}}),o.createElement("script",{id:"beop-sdk",async:!0,src:"https://widget.beop.io/sdk.js"})));r.propTypes={accountId:n.string.isRequired},e.exports=r},22665:(e,t,a)=>{const o=a(20906);e.exports={BeopScript:o}},88928:(e,t,a)=>{const o=a(45697),n=a(67294),i=a(51452),r=a(26669),{trackComponent:l}=a(40199),s=e=>{n.useEffect((()=>{l("PaywallCollaborator")}),[]);const{component:t,name:a,paywall:o,...s}=e,d=i[o.strategy],c=o.strategy&&d,m=d&&d.names.includes(a);return c&&m?n.createElement(t,{...r.execute(d,e)}):n.createElement(t,{...s})};s.propTypes={component:o.func.isRequired,name:o.string.isRequired,payment:o.object.isRequired,paywall:o.object.isRequired},e.exports=s},13131:(e,t,a)=>{const o=a(59242),n=a(88928),i=a(44070),r=a(34697),{connectDomain:l}=a(92078),{withIncognitoDetection:s}=a(28685),d=l("user"),c=l("paywall"),m=o([d,l("payment"),c,s]);e.exports={PaywallCollaborator:m(n),withArticleTruncation:i,withGalleryTruncation:r}},44070:(e,t,a)=>{const o=a(45697),n=a(67294);e.exports=(e,t)=>{const a=e.displayName||e.name,i=e=>"object"==typeof e&&"p"===e[0],r=(e,t)=>e.filter(((a,o)=>((e,t)=>e.slice(0,t).filter(i).length)(e,o)<t)),l=a=>{const{[t]:o,shouldTruncate:i,paywall:{gateway:l={},paragraphLimit:s}={}}=a,d=o&&(l.shouldTruncate||i)&&(l.paragraphLimit>=0||s>=0);return n.createElement(e,{...a,[t]:d?r(o,l.paragraphLimit||s):o})};return l.propTypes={[t]:o.array.isRequired,paywall:o.shape({gateway:o.shape({paragraphLimit:o.number,shouldTruncate:o.bool}),paragraphLimit:o.number}),shouldTruncate:o.bool},l.displayName=`withArticleTruncation(${a})`,l}},34697:(e,t,a)=>{const o=a(45697),n=a(67294);e.exports=(e,t)=>{const a=e.displayName||e.name,i=(e,t)=>e.map((a=>a.filter((a=>((e,t)=>e.flat().indexOf(t))(e,a)<t)))).filter(((e,t)=>e.length>0||0===t)),r=a=>{const{[t]:o,shouldTruncate:r,paywall:{gateway:l={},gallerySlideLimit:s}={}}=a,d=o&&(l.shouldTruncate||r)&&(l.gallerySlideLimit>=0||s>=0);return n.createElement(e,{...a,[t]:d?i(o,l.gallerySlideLimit||s):o})};return r.propTypes={[t]:o.array.isRequired,paywall:o.shape({gateway:o.shape({gallerySlideLimit:o.number,shouldTruncate:o.bool}),gallerySlideLimit:o.number}).isRequired,shouldTruncate:o.bool},r.displayName=`withGalleryTruncation(${a})`,r}},44122:(e,t,a)=>{const o=a(67294),n=a(45697),i=a(59185),{ActionBarWrapperContent:r,ActionBarWrapperComponent:l}=a(84945),{getVariationNames:s}=a(95545),{sizesFullName:d}=a(28657),c=({actionBarLargeScreenVariation:e,actionBarMobileScreenVariation:t,className:a,isActionBarStickyLargeScreen:n,actionBarButtons:s,articleLength:c,showActionBar:m})=>{if(!s||!s?.length||!m)return null;const p=e?i[e]:i,u=t?i[t]:i;return e||t?o.createElement(r,{className:a,isActionBarStickyLargeScreen:n,actionBarHeight:c},o.createElement(l,null,o.createElement(p,{minScreenThreshold:d.xLarge,actionButtons:s,className:"large-screen"}),o.createElement(u,{maxScreenThreshold:d.large,actionButtons:s,className:"mobile"}))):o.createElement(r,{className:a,isActionBarStickyLargeScreen:n,actionBarHeight:c},o.createElement(l,null,o.createElement(i,{actionButtons:s,className:"default"})))};c.propTypes={actionBarButtons:n.arrayOf(n.oneOf(["audio","bookmark"])).isRequired,actionBarLargeScreenVariation:n.oneOf(s(i)),actionBarMobileScreenVariation:n.oneOf(s(i)),articleLength:n.number,className:n.string,isActionBarStickyLargeScreen:n.bool,showActionBar:n.bool},c.defaultProps={isActionBarStickyLargeScreen:!1,showActionBar:!1},e.exports=c},74914:(e,t,a)=>{const o=a(44122);e.exports=o},84945:(e,t,a)=>{const{default:o,css:n}=a(71893),{calculateSpacing:i,minScreen:r}=a(79720),{BREAKPOINTS:l}=a(85326),{applyGridSpacing:s}=a(62470),d=o.div.withConfig({displayName:"ActionBarWrapperComponent"})``,c=o.div.withConfig({displayName:"ActionBarWrapperContent"})`
  display: flex;
  justify-content: center;
  padding-bottom: ${i(4)};
  ${({isActionBarStickyLargeScreen:e,actionBarHeight:t})=>e&&n`
      ${r(l.lg)} {
        position: absolute;
        left: ${i(4)};
        z-index: 80;
        padding: 0;
        width: fit-content;
        height: ${t?`${t}px`:"100%"};
        ${s("padding")}
        ${d} {
          position: sticky;
          top: 50%;
          transition: all 300ms ease-in-out;
          margin-top: ${i(7.25,"px")};
          height: fit-content;
          ${s("padding")}
        }
      }
    `}
`;e.exports={ActionBarWrapperContent:c,ActionBarWrapperComponent:d}}}]);