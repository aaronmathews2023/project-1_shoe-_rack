(globalThis.webpackChunkverso=globalThis.webpackChunkverso||[]).push([[7891],{78046:(e,i,r)=>{const t=r(67294),a=r(94184),l=r(45697),{connect:n}=r(59800),{useIntl:o}=r(5917),s=r(52257).Z,c=r(98288),d=r(92170),{getVariationNames:p}=r(95545),u=r(22247),{PaymentGateway:g}=r(28576),{maxThresholds:m}=r(28657),{useResizeObserver:y}=r(26447),{useAnalytics:h,analyticsTextConstant:f}=r(25008),{GalleryCarouselContainer:$,GalleryCarouselHeader:w,GalleryCarouselTitle:x,GalleryCarouselTitleText:b,GalleryCarouselHeaderRecirc:R,GalleryCarouselNextWrapper:C,GalleryCarouselPrevWrapper:G,GalleryCarouselNavigation:v,GalleryCarouselCountWrapper:S,GalleryCarouselCount:T,GalleryCarouselContent:E,GalleryCarouselSlider:I,GalleryCarouselSliderWrapper:M,GalleryCarouselSectionTitle:A}=r(47326),{MidRecirc:N,EndRecirc:_,NewsletterRecirc:P}=r(60739),k=r(32168),O=({carouselPlacedIn:e,dangerousNavigationIcon:i,isModalOpen:r,items:l,responsiveCartoonVariation:n,shouldDisableImageClick:d,shouldHoldImageSpace:p,shouldImageLazyLoad:O,shouldUseMediumBreakpoint:H,shouldUseModalStyle:W,showHeadRecirc:B,showPublishedDate:D,title:L,titleLinkURL:q,user:V,variations:{fullBleedSlide:j,mobileSlider:U,useSectionTitle:z}})=>{const{formatMessage:F}=o(),[K,X]=t.useState(0),[Z,J]=t.useState(0),[Q,Y]=t.useState(0),[ee,ie]=t.useState(!1),[re,te]=t.useState(!1),[ae,le]=t.useState(!1),ne=()=>{if(window){const e=window.matchMedia(`(max-width: ${m.lg}px)`);return Boolean(e?.matches)}return!1};y((()=>te(ne())));const oe=t.useRef(),[se,ce]=t.useState({action:new Array(2).fill(!1),slide:new Array(2).fill(null)}),de=l.length-1,pe=Q===de,ue=l.length>0&&l[de].hasEndRecirc&&l[de].recircGalleries[0]&&Boolean(l[de].recircGalleries[0].url)&&Boolean(l[de].recircGalleries[0].dangerousHed),ge=B&&ue&&!pe,me=ge?l[de].recircGalleries[0]:{},ye={carouselPlacedIn:e,currentSlideIndex:Q,getIsSmallDevice:ne,hasHeadRecirc:ge,headRecircGallery:me,isModalOpen:r,slides:l,titleRef:oe},{triggerCartoonInteraction:he,triggerMobileRecircImpression:fe,triggerNewsletterInteraction:$e,triggerRecircInteraction:we}=h(ye);t.useEffect((()=>te(ne())),[]),t.useEffect((()=>{const e={action:new Array(2).fill(!1),slide:new Array(2).fill(null)},i=Q+1,r=Q-1;r>=0&&(e.action[0]=!0,l[r].hidePreview||(e.slide[0]=r)),i<l.length&&(e.action[1]=!0,l[i].hidePreview||(e.slide[1]=i)),ce(e)}),[Q,l]),t.useEffect((()=>{if(!W){const e=document.querySelector('[class^="StackedNavigationTop"]');X(e?.offsetHeight||0)}}),[W]),t.useEffect((()=>{V?.isAuthenticated&&Boolean(V?.email)&&!ae&&le(!0)}),[V?.isAuthenticated,V?.email,ae]);const xe=e=>{e>=0&&e<l.length&&(ie(!0),J(e),he(e))};if(!(Array.isArray(l)&&l.length>0))return null;const be=q?{href:q,target:"_blank"}:{as:"span"};return t.createElement($,{shouldUseModalStyle:W,headerHeight:K,key:ae},!z&&t.createElement(w,{shouldUseModalStyle:W},t.createElement(x,{ref:oe},t.createElement(b,{...be,dangerouslySetInnerHTML:{__html:L}})),ge&&t.createElement(R,{onClick:e=>((e,i)=>{e.preventDefault(),we(f.headRecirc,i),window.open(i.url,"_blank","noopener,noreferrer")})(e,me),href:me.url,dangerouslySetInnerHTML:{__html:`${F(s.nextGallery)}: ${me.source.hed} »`}})),z&&t.createElement(A,{as:k,dangerousHed:L}),t.createElement(M,null,t.createElement(I,{isEndGalleryRecircCardOnMobile:!W,mobileSlider:U},t.createElement(G,{isHidden:!se.action[0],mobileSlider:U},t.createElement(v,{"aria-hidden":!se.action[0],"aria-label":F(s.previous),dangerouslySetInnerHTML:{__html:i},onClick:()=>xe(Q-1),isRotated:!0})),t.createElement(C,{isHidden:!se.action[1],mobileSlider:U},t.createElement(v,{"aria-hidden":!se.action[1],"aria-label":F(s.next),dangerouslySetInnerHTML:{__html:i},onClick:()=>xe(Q+1)})),t.createElement(S,null,t.createElement(T,null,`${Q+1}/${l.length}`)),l.map(((i,r)=>t.createElement(E,{key:r,"data-testid":`GalleryCarouselContent__slide_${r+1}`,className:a(i.className,{"fade-in":!ee&&r===Q,"fade-out":ee&&r===Q,"fade-in-sequence":!ee&&se.slide.includes(r),"fade-out-sequence":ee&&se.slide.includes(r),"has-end-recirc":Boolean(i?.hasEndRecirc),"is-mid-recirc-slide":Boolean(i?.isMidRecirc),"is-ad-slide":Boolean(i?.isAd),"is-newsletter-slide":Boolean(i?.isNewsletter),"is-content-slide":Boolean(i?.isContent),"is-xl-recirc-slide":Boolean(i?.isXLGalleryRecirc),"current-slide":r===Q},!j&&{"prev-slide":r===se.slide[0],"next-slide":r===se.slide[1],"last-slide":r===de}),onAnimationEnd:()=>(e=>{ee&&e===Q&&(Y(Z),ie(!1))})(r),"aria-hidden":r!==Q,fullBleedSlide:j,mobileSlider:U},i?.isNewsletter&&t.createElement(P,{index:r,isSmallDevice:re,newsletter:i.newsletter,onInteractionAnalytics:$e,onMobileImpressionAnalytics:fe,user:V}),i?.isAd&&t.createElement(g,{group:"ads"},t.createElement(u,{position:"mid-gallery"})),i?.isMidRecirc&&t.createElement(N,{index:r,isSmallDevice:re,recircGalleries:i.recircGalleries,onInteractionAnalytics:we,onMobileImpressionAnalytics:fe}),["cartoon","photo"].includes(i?.contentType||"")&&t.createElement(c,{key:i.id,...i.image||i,isLazy:O,responsiveCartoonVariation:n,shouldDisableImageClick:d,shouldHoldImageSpace:p,shouldUseMediumBreakpoint:H,showPublishedDate:D,analyticsData:{cartoonPlacement:e,cartoonPosition:r+1,totalNumberOfCartoons:l.length,galleryTitle:oe.current?.innerText||"",isSmallDevice:re}}),i?.hasEndRecirc&&t.createElement(_,{index:r,isSmallDevice:re,recircGalleries:i.recircGalleries,onInteractionAnalytics:we,onMobileImpressionAnalytics:fe,shouldUseModalStyle:W})))))))};O.propTypes={carouselPlacedIn:l.oneOf(["gallery","modal","bundle"]),dangerousNavigationIcon:l.string,isModalOpen:l.bool,items:l.array.isRequired,responsiveCartoonVariation:l.oneOf(p(d)),shouldDisableImageClick:l.bool,shouldHoldImageSpace:l.bool,shouldImageLazyLoad:l.bool,shouldUseMediumBreakpoint:l.bool,shouldUseModalStyle:l.bool,showHeadRecirc:l.bool,showPublishedDate:l.bool,title:l.string,titleLinkURL:l.string,user:l.shape({isAuthenticated:l.bool.isRequired,email:l.string}),variations:l.shape({fullBleedSlide:l.boolean,mobileSlider:l.boolean,useSectionTitle:l.boolean})},O.defaultProps={carouselPlacedIn:"modal",dangerousNavigationIcon:'<svg focusable="false" viewBox="0 0 32 32" width="32" height="32" xmlns="http://www.w3.org/2000/svg" > <path d="M22.33 15.5l-6.924-6.925.707-.707L24.245 16l-8.132 8.132-.707-.707 6.925-6.925H8v-1z" fillRule="nonzero"/> </svg>',responsiveCartoonVariation:"SliderCartoon",shouldDisableImageClick:!0,shouldHoldImageSpace:!1,shouldImageLazyLoad:!0,shouldUseMediumBreakpoint:!0,shouldUseModalStyle:!1,showHeadRecirc:!0,showPublishedDate:!1,title:"",titleLinkURL:"",variations:{fullBleedSlide:!1,useSectionTitle:!1,mobileSlider:!1}},e.exports=n((e=>({isModalOpen:e.isModalOpen||!1,user:e.user})))(O)},60739:(e,i,r)=>{const t=r(67294),a=r(45697),l=r(11482),{EndOfPageRecirc:n}=l,o=r(43625),s=r(92727),{analyticsTextConstant:c}=r(25008),{GalleryCarouselNewsletterWrapper:d,GalleryCarouselMidRecircWrapper:p,GalleryCarouselEndRecircWrapper:u}=r(47326),g=(e,i,r)=>e?{as:s,onIntersectionViewport:i,analyticsData:r}:{},m=({index:e,isSmallDevice:i,isTextFieldAlwaysStacked:r,newsletter:a,newsletterType:l,onInteractionAnalytics:n,onMobileImpressionAnalytics:s,user:p})=>{const u=g(i,s,{index:e,placement:c.newsletter,newsletter:a});return t.createElement(d,{...u},t.createElement(o,{newsletterType:l,isTextFieldAlwaysStacked:r,enableSlimUnitToggle:Boolean(p?.isAuthenticated&&p?.email),userEmail:p?.email,...a||{},onSuccessHandler:()=>n(a),patternType:"utility"}))};m.propTypes={index:a.number.isRequired,isSmallDevice:a.bool,isTextFieldAlwaysStacked:a.bool,newsletter:a.object.isRequired,newsletterType:a.string,onInteractionAnalytics:a.func,onMobileImpressionAnalytics:a.func,user:a.shape({isAuthenticated:a.bool.isRequired,email:a.string})},m.defaultProps={isSmallDevice:!1,isTextFieldAlwaysStacked:!0,newsletterType:"slim-newsletter",onInteractionAnalytics:()=>{},onMobileImpressionAnalytics:()=>{}};const y=({index:e,isSmallDevice:i,recircGalleries:r,onInteractionAnalytics:a,onMobileImpressionAnalytics:n})=>{const o=g(i,n,{index:e,placement:c.midRecirc,recircGalleries:r});return t.createElement(p,{...o},t.createElement(l,{items:r,recircInteractionAnalytics:i=>a(c.midRecirc,i,e)}))};y.propTypes={index:a.number.isRequired,isSmallDevice:a.bool,onInteractionAnalytics:a.func,onMobileImpressionAnalytics:a.func,recircGalleries:a.array.isRequired},y.defaultProps={isSmallDevice:!1,onInteractionAnalytics:()=>{},onMobileImpressionAnalytics:()=>{}};const h=({index:e,isSmallDevice:i,recircGalleries:r,onInteractionAnalytics:a,onMobileImpressionAnalytics:l,shouldUseModalStyle:o})=>{const s=g(i,l,{index:e,placement:c.endRecirc,recircGalleries:r});return t.createElement(u,{...s},t.createElement(n,{items:r,showCropViewOnMobile:o,recircInteractionAnalytics:i=>a(c.endRecirc,i,e)}))};h.propTypes={index:a.number.isRequired,isSmallDevice:a.bool,onInteractionAnalytics:a.func,onMobileImpressionAnalytics:a.func,recircGalleries:a.array.isRequired,shouldUseModalStyle:a.bool},h.defaultProps={isSmallDevice:!1,onInteractionAnalytics:()=>{},onMobileImpressionAnalytics:()=>{},shouldUseModalStyle:!1},e.exports={MidRecirc:y,EndRecirc:h,NewsletterRecirc:m}},7891:(e,i,r)=>{const{asConfiguredComponent:t}=r(36380),a=r(59101);e.exports=t(a,"GalleryCarousel")},47326:(e,i,r)=>{const{default:t,css:a,keyframes:l}=r(71893),{minScreen:n,maxScreen:o,calculateSpacing:s,getColorStyles:c}=r(79720),{maxThresholds:d,minThresholds:p}=r(28657),{BaseText:u,BaseWrap:g,BaseInput:m,BaseLink:y}=r(74327),{ResponsiveImageContainer:h,ResponsiveImagePicture:f}=r(7230),{SpanWrapper:$}=r(89676),{ResponsiveCartoonWrapper:w,ResponsiveCartoonCredit:x,ResponsiveCartoonCaption:b,ResponsiveCartoonCTAWrapper:R}=r(94007),{GalleryRecircGridWrapper:C,GalleryRecircViewGalleryCTA:G}=r(21123),{AdWrapper:v}=r(66562),{NewsletterSlimLoggedInWrapper:S,NewsletterSlimLoggedInDisclaimer:T}=r(25505),{NewsletterSubscribeFormWrapper:E,NewsletterSubscribeFormDisclaimer:I}=r(42793),{BREAKPOINTS:M}=r(85326),A=l`
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
`,N=l`
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
`,_=l`
  from {
    opacity: 0;
  }

  to {
    opacity: .2;
  }
`,P=l`
  from {
    opacity: .2;
  }

  to {
    opacity: 0;
  }
`,k=t(g).withConfig({displayName:"GalleryCarouselContainer"})`
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;

  ${({shouldUseModalStyle:e,headerHeight:i})=>!e&&a`
      ${n(`${d.lg+1}px`)} {
        margin-top: ${s(2)};
        min-height: calc(100vh - ${i}px);
      }
    `}
`,O=t(g).withConfig({displayName:"GalleryCarouselHeader"})`
  display: flex;
  position: relative;
  align-items: center;
  justify-content: center;
  margin: 0;
  padding: ${s(2.5)} 0;
  text-align: center;

  ${o(`${d.lg}px`)} {
    ${({shouldUseModalStyle:e})=>e?a`
            margin-bottom: ${s(3)};
            padding: 0;
            min-height: ${s(10)};
          `:a`
            padding: ${s(5)} 0;
          `}
  }
`,H=t.div.withConfig({displayName:"GalleryCarouselSectionTitle"})`
  margin-bottom: ${s(2)};
`,W=t(u).withConfig({displayName:"GalleryCarouselTitle"})`
  span {
    cursor: unset;

    :hover {
      text-decoration: none;
    }
  }
  ${o(`${d.lg}px`)} {
    width: ${s(24.75)};
  }
`;W.defaultProps={as:"h1",typeIdentity:"typography.definitions.globalEditorial.context-primary"};const B=t(y).withConfig({displayName:"GalleryCarouselTitleText"})``;B.defaultProps={as:"a",hasUnderline:!1,typeIdentity:"typography.definitions.globalEditorial.context-primary"};const D=t(u).withConfig({displayName:"GalleryCarouselHeaderRecirc"})`
  position: absolute;
  right: ${s(8)};
  text-decoration: none;

  :hover {
    text-decoration: underline;
    ${({theme:e})=>c(e,"color","colors.interactive.base.dark")};
  }

  ${o(`${d.lg}px`)} {
    display: none;
  }
`;D.defaultProps={as:"a",colorToken:"colors.interactive.base.brand-primary",typeIdentity:"typography.definitions.foundation.link-primary"};const L=a`
  display: flex;
  grid-row: 1;
  align-self: flex-start;
  height: ${s(64)};

  ${({isHidden:e})=>e&&a`
      visibility: hidden;
    `}

  ${({mobileSlider:e})=>!e&&a`
      ${o(`${d.lg}px`)} {
        display: none;
      }
    `}
`,q=t(g).withConfig({displayName:"GalleryCarouselNextWrapper"})`
  ${L};
  grid-column: 11/12;
  justify-content: start;
`,V=t(g).withConfig({displayName:"GalleryCarouselPrevWrapper"})`
  ${L};
  grid-column: 2/3;
  justify-content: end;
`,j=t.button.withConfig({displayName:"GalleryCarouselNavigation"})`
  display: flex;
  align-items: center;
  justify-content: center;
  transform: translateX(0);
  transition: transform 0.3s ease;
  background: transparent;
  min-width: ${s(7.5)};

  svg {
    path {
      ${c("fill","colors.interactive.base.black")};
    }
  }

  @media (hover: hover) and (pointer: fine) {
    &:hover {
      transform: translateX(${s(1)});
    }
  }

  ${({isRotated:e})=>e&&a`
      svg {
        transform: rotate(180deg);
      }

      @media (hover: hover) and (pointer: fine) {
        &:hover {
          transform: translateX(${s(-1)});
        }
      }
    `}
`,U=t(g).withConfig({displayName:"GalleryCarouselCountWrapper"})`
  display: flex;
  grid-column: 10;
  grid-row: 1;
  align-items: center;
  justify-content: center;
  border: 1px solid;
  border-radius: ${s(10)};
  width: ${s(6)};
  height: ${s(4)};
  ${({theme:e})=>c(e,"border-color","colors.interactive.base.light")};

  ${o(`${d.lg}px`)} {
    display: none;
  }
`,z=t(u).withConfig({displayName:"GalleryCarouselCount"})`
  text-align: center;
  line-break: normal;
`;z.defaultProps={as:"p",colorToken:"colors.interactive.base.dark",typeIdentity:"typography.definitions.globalEditorial.numerical-small"};const F=t.div.withConfig({displayName:"GalleryCarouselContent"})`
  display: none;
  position: relative;
  flex-direction: row;
  align-items: start;
  justify-content: center;
  cursor: auto;
  width: 100%;
  min-height: ${s(64)};

  ${v} {
    margin: auto;
  }

  ${w} {
    border: none;
    padding: 0;
    justify-items: unset;
    max-width: ${s(70)};

    .responsive-cartoon__caption,
    .responsive-cartoon__credit {
      overflow: hidden;
    }

    ${f} {
      cursor: zoom-in;
      text-align: center;
    }

    ${h} {
      width: auto;
      max-width: 100%;
      height: auto;
      max-height: ${s(40.5)};
    }

    ${f}, ${b}, ${x} {
      cursor: auto;
      max-width: unset;
    }
  }

  ${o(`${d.lg}px`)} {
    ${({mobileSlider:e})=>!e&&a`
        display: flex;
        flex-direction: column;
        align-items: center;
        min-height: ${s(31.25)};

        ${w} {
          ${h} {
            width: ${s(40.5)};
            height: auto;
            max-height: none;
          }
        }
      `}
  }
`,K=a`
  display: flex;
  grid-row: 1;
  align-items: center;
  overflow: hidden;

  ${w} {
    ${f} {
      height: 100%;
    }
  }

  ${$} {
    position: absolute;
    min-width: ${s(100)};
  }

  ${R} {
    display: none;
  }
`,X=t(g).withConfig({displayName:"GalleryCarouselSlider"})`
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  margin: 0 auto;
  cursor: auto;
  width: 100%;
  max-width: none;
  gap: 0;

  ${({mobileSlider:e})=>{const i=a`
      height: ${s(64)};

      .fade-in {
        animation: ${A} ease-in-out 300ms forwards;
      }

      .fade-out {
        animation: ${N} ease-in-out 300ms forwards;
      }

      .fade-in-sequence {
        animation: ${_} ease-in-out 300ms forwards;
      }

      .fade-out-sequence {
        animation: ${P} ease-in-out 300ms forwards;
      }

      .current-slide {
        display: flex;
        grid-column: 4/10;
        grid-row: 1;

        ${$} {
          align-self: center;
        }
      }

      .prev-slide {
        ${K};
        grid-column: 1/2;

        ${w} {
          margin-right: 0;
          ${f} {
            text-align: right;
          }
        }

        ${$} {
          right: 0;
        }
      }

      .next-slide {
        ${K};
        grid-column: 12/-1;

        ${w} {
          margin-left: 0;
          ${f} {
            text-align: left;
          }
        }

        ${$} {
          left: 0;
        }
      }

      .has-end-recirc {
        ${C} {
          display: none;
        }
      }

      .has-end-recirc.current-slide {
        position: unset;

        ${C} {
          display: grid;
          position: relative;
          right: 0;
          padding-top: ${s(7)};
          width: auto;
        }
      }
    `,r=a`
      display: flex;
      flex-direction: column;
      align-items: center;
      margin: 0;
      padding: 0 ${s(3)};
      gap: 0;

      ${F} {
        border-bottom: 1px solid;
        padding-top: ${s(7)};
        padding-bottom: ${s(7)};

        ${({theme:e})=>c(e,"border-color","colors.interactive.base.light")};

        ${w} {
          border: none;
          padding: 0;
        }
      }

      .last-slide {
        border-bottom: none;
      }

      .has-end-recirc {
        padding-bottom: 0;

        ${G} {
          grid-column: 1 / 8;
          grid-row: 1;
          text-align: center;
        }

        ${({isEndGalleryRecircCardOnMobile:e})=>e&&`\n        ${C} {\n          padding-top: ${s(2)};\n          padding-bottom: ${s(7)};\n        }\n      `}
      }

      .is-newsletter-slide {
        min-height: auto;
      }
    `;return e?a`
        ${i};
        height: auto;
        ${o(`${d.lg}px`)} {
          ${q}, ${V} {
            flex-direction: column;
            justify-content: end;
            z-index: 1;
            height: 100%;

            button {
              padding: 0;
            }
          }
          grid-template-rows: min-content auto;
          grid-row-gap: ${s(1)};
          ${q}, ${V}, .current-slide {
            grid-row: 2;
          }
          ${U} {
            display: flex;
            grid-column: 12;
            justify-self: end;
          }

          ${q} {
            grid-column: -2/-1;

            button {
              justify-content: end;
            }
          }
          ${V} {
            grid-column: 1/2;

            button {
              justify-content: start;
            }
          }

          .current-slide {
            grid-column: 1/-1;
          }
        }
        ${w} {
          ${b}, ${x} {
            padding-bottom: 0;
          }
          ${x} {
            padding-top: ${s(1)};
          }
        }
      `:a`
      ${n(`${p.xl}px`)} {
        ${i}
      }

      ${o(`${d.lg}px`)} {
        ${r}
      }
    `}}
`,Z=t(g).withConfig({displayName:"GalleryCarouselSliderWrapper"})`
  display: flex;
  flex-grow: 1;
  align-items: center;
  justify-content: center;
`,J=t(g).withConfig({displayName:"GalleryCarouselNewsletterWrapper"})`
  margin: auto;
  width: 100%;
  max-width: ${s(40.875)};

  ${S}, ${E} {
    margin: 0;
  }

  ${S} {
    ${T} p {
      margin-bottom: 0;
    }
  }

  ${E} {
    ${m} {
      padding: ${s(1)} ${s(1.5)};
    }

    ${I} p {
      margin-bottom: 0;
    }
  }

  ${o(`${d.lg}px`)} {
    max-width: unset;
  }
`;J.defaultProps={as:"div"};const Q=t.div.withConfig({displayName:"GalleryCarouselMidRecircWrapper"})`
  ${o(`${d.lg}px`)} {
    width: 100%;
  }

  margin: auto;
`;Q.defaultProps={as:"div"};const Y=t.div.withConfig({displayName:"GalleryCarouselEndRecircWrapper"})`
  ${n(M.lg)} {
    position: absolute;
    right: 0;
  }

  ${o(`${d.lg}px`)} {
    padding-top: ${s(5)};
    width: 100%;
  }
`;Y.defaultProps={as:"div"},e.exports={GalleryCarouselContainer:k,GalleryCarouselEndRecircWrapper:Y,GalleryCarouselHeader:O,GalleryCarouselTitle:W,GalleryCarouselTitleText:B,GalleryCarouselHeaderRecirc:D,GalleryCarouselNextWrapper:q,GalleryCarouselPrevWrapper:V,GalleryCarouselNavigation:j,GalleryCarouselCountWrapper:U,GalleryCarouselCount:z,GalleryCarouselContent:F,GalleryCarouselSlider:X,GalleryCarouselSliderWrapper:Z,GalleryCarouselNewsletterWrapper:J,GalleryCarouselMidRecircWrapper:Q,GalleryCarouselSectionTitle:H}},52257:(e,i,r)=>{const t=r(5917);i.Z=(0,t.defineMessages)({next:{id:"GalleryCarousel.Next",defaultMessage:"Next",description:"Next icon title"},previous:{id:"GalleryCarousel.Previous",defaultMessage:"Previous",description:"Previous icon title"},nextGallery:{id:"GalleryCarousel.NextGallery",defaultMessage:"Next gallery",description:"Next gallery link prefix"}})},25008:(e,i,r)=>{const t=r(67294),a=r(78718),l=r(45697),{googleAnalytics:n}=r(28601),o={newsletter:"newsletter",headRecirc:"toprightlink",midRecirc:"mid content",endRecirc:"end content",backToArticle:"back to article"},s=({carouselPlacedIn:e,currentSlideIndex:i,getIsSmallDevice:r,hasHeadRecirc:l,headRecircGallery:s,isModalOpen:c,slides:d,titleRef:p})=>{const[u,g]=t.useReducer(((e,i)=>Array.isArray(i)?(i.forEach((i=>e.add(i))),e):e.add(i)),new Set),m=(e=null)=>`${(e??i)+1}/${d.length}`,y=(r=[])=>{const t={cartoon_placement:e,gallery_title:p?.current?.innerText||"",cartoon_id:d[i]?.id||"",cartoon_numbering:m()};return a(t,r)},h=(e,i=[],r={})=>{n.emitGoogleTrackingEvent(e,{...y(i),...r})},f=(e,i=[],r=null)=>{h("cartoon-impression-recirculation",["cartoon_placement","gallery_title"],{content_recirculation_placement:e,cartoon_numbering:m(r),gallery_id:i.map((e=>e.id)).join(" | ")})},$=(e,i=null)=>{h("cartoon-impression-newsletter",["cartoon_placement","gallery_title"],{cartoon_newsletter_id:e?.newsletterId,cartoon_numbering:m(i)})};return t.useEffect((()=>{l&&f(o.headRecirc,[s])}),[]),t.useEffect((()=>{c||"modal"!==e||h("cartoon-interaction",["cartoon_placement","gallery_title","cartoon_id"],{cartoon_interaction:o.backToArticle})}),[c]),t.useEffect((()=>{const e=r(),{recircGalleries:t,newsletter:a}=d[i],l=Boolean(d[i]?.isMidRecirc),n=Boolean(d[i]?.hasEndRecirc),s=Boolean(d[i]?.isNewsletter),c=Boolean(d[i]?.isContent),p=u.has(i),m=[];e||(p||(l&&(m.push(i),f(o.midRecirc,t)),s&&(m.push(i),$(a)),c&&(m.push(i),h("cartoon-impression",["cartoon_placement","gallery_title","cartoon_id","cartoon_numbering"]))),n&&!u.has(o.endRecirc)&&(m.push(o.endRecirc),f(o.endRecirc,t)),m.length&&g(m))}),[i]),{extractAnalyticsData:y,triggerCartoonInteraction:e=>{h("cartoon-interaction",["cartoon_placement","gallery_title","cartoon_id"],{cartoon_interaction:e>i?"next":"previous"})},triggerMobileRecircImpression:(e,r,t={})=>{const a=[o.midRecirc,o.endRecirc,o.newsletter],l=u.has(i),{index:n=null,recircGalleries:s,placement:c,newsletter:d}=t;e&&!l&&a.includes(c)&&(c===o.newsletter?(g(n),$(d,n)):c===o.midRecirc?(g(n),f(o.midRecirc,s,n)):(g(o.endRecirc),f(c,s,n)),r())},triggerNewsletterInteraction:e=>{h("cartoon-interaction-newsletter",["cartoon_placement","gallery_title","cartoon_id"],{content_newsletter_placement:o.midRecirc,content_newsletter_title:e?.dangerousHed||""})},triggerRecircInteraction:(e,i={},r=null)=>{h("cartoon-interaction-recirculation",["cartoon_placement","gallery_title","cartoon_id"],{content_recirculation_placement:e,content_recirculation_title:i?.dangerousHed||"",cartoon_numbering:m(r)})}}};s.propTypes={carouselPlacedIn:l.oneOf(["gallery","modal"]).isRequired,currentSlideIndex:l.number.isRequired,getIsSmallDevice:l.func.isRequired,hasHeadRecirc:l.bool.isRequired,headRecircData:l.object.isRequired,isModalOpen:l.bool.isRequired,slides:l.array.isRequired,titleRef:l.oneOfType([l.func,l.shape({current:l.any})]).isRequired},e.exports={useAnalytics:s,analyticsTextConstant:o}},59101:(e,i,r)=>{const{asVariation:t}=r(95545),a=r(78046);a.MagazineCartoons=t(a,"magazineCartoons",{fullBleedSlide:!0,mobileSlider:!0,useSectionTitle:!0},{shouldUseModalStyle:!0}),e.exports=a},62171:(e,i,r)=>{const t=r(45697),a=r(67294),{useIntl:l}=r(5917),n=r(63030),{GalleryRecircGridWrapper:o,GalleryRecircContentWrapper:s,GalleryRecircContent:c,GalleryMidRecircHeading:d,GalleryRecircTitle:p,GalleryRecircImage:u,GalleryEndRecircHeading:g,GalleryRecircTextWrapper:m,GalleryRecircViewGalleryCTA:y}=r(21123),h=r(93788).Z,f=({isEndOfPageRecirc:e,items:i,showCropViewOnMobile:r,recircInteractionAnalytics:t})=>{const{formatMessage:n}=l();if(!i.length)return null;const f=n(e?h.viewNextGalleryCTAText:h.viewGalleryCTAText);return a.createElement(o,{isEndOfPageRecirc:e},!e&&a.createElement(d,null,n(h.midGalleryRecircHeading)),i.map(((i,l)=>a.createElement(s,{isEndOfPageRecirc:e,key:i.id||l},a.createElement(c,{href:i.url,isEndOfPageRecirc:e,showCropViewOnMobile:r,"data-testid":"GalleryRecircContent",onClick:e=>((e,i)=>{e.preventDefault(),t&&t(i),window.open(i.url,"_blank","noopener,noreferrer")})(e,i)},a.createElement(m,{isEndOfPageRecirc:e},e&&a.createElement(g,{"data-testid":"GalleryEndRecircHeading"},n(h.keepOnLaughingText)),a.createElement(p,{"data-testid":"GalleryRecircTitle",isEndOfPageRecirc:e,dangerouslySetInnerHTML:{__html:i.source.hed}}),a.createElement(y,{"data-testid":"GalleryRecircViewGalleryCTA",dangerouslySetInnerHTML:{__html:f}})),a.createElement(u,{isEndOfPageRecirc:e,"data-testid":"GalleryRecircImage",...i.items[0]}),e&&a.createElement(g,{"data-testid":"GalleryEndRecircHeading"},n(h.keepOnLaughingText)))))))};f.propTypes={isEndOfPageRecirc:t.bool,items:t.arrayOf(t.shape({dangerousHed:t.string,url:t.string,items:t.arrayOf(t.shape({altText:t.string,dangerousCaption:t.string,dangerousCredit:t.string,isDesktopPortrait:t.bool,segmentedSources:n.propTypes.segmentedSources,sources:n.propTypes.sources,links:t.arrayOf(t.shape({behavior:t.string,label:t.string.isRequired,url:t.string,network:t.string})),tagCloud:t.shape({tags:t.arrayOf(t.shape({tag:t.string.isRequired,url:t.string})),sectionHeader:t.string})}))}).isRequired).isRequired,recircInteractionAnalytics:t.func,showCropViewOnMobile:t.bool},f.defaultProps={isEndOfPageRecirc:!1,showCropViewOnMobile:!1},f.displayName="GalleryRecircCards",e.exports=f},11482:(e,i,r)=>{e.exports=r(38224)},21123:(e,i,r)=>{Object.defineProperty(i,"__esModule",{value:!0}),i.GalleryRecircViewGalleryCTA=i.GalleryRecircTextWrapper=i.GalleryRecircTitle=i.GalleryRecircImage=i.GalleryEndRecircHeading=i.GalleryMidRecircHeading=i.GalleryRecircGridWrapper=i.GalleryRecircContent=i.GalleryRecircContentWrapper=void 0;const{css:t,default:a}=r(71893),l=r(63030),{calculateSpacing:n,getColorToken:o,minMaxScreen:s,maxScreen:c,minScreen:d}=r(79720),{maxThresholds:p}=r(28657),{BaseWrap:u,BaseText:g}=r(74327),{BREAKPOINTS:m}=r(85326),y=a.div.withConfig({displayName:"GalleryRecircGridWrapper"})`
  display: grid;
  grid-template-rows: repeat(3, auto);
  grid-row-gap: ${n(2)};
  margin: auto;
  max-width: ${n(54)};
  height: auto;

  ${c(`${p.lg}px`)} {
    max-width: unset;
  }

  ${({isEndOfPageRecirc:e})=>e&&t`
      grid-template-rows: repeat(1, 1fr);
      grid-row-gap: 0;
      justify-content: end;
      max-width: unset;

      ${c(`${p.lg}px`)} {
        grid-template-columns: repeat(1, 1fr);
      }
    `}
`;i.GalleryRecircGridWrapper=y;const h=a.div.withConfig({displayName:"GalleryRecircContentWrapper"})`
  ${({isEndOfPageRecirc:e})=>e&&t`
      display: flex;
      justify-self: center;

      ${c(`${p.lg}px`)} {
        width: 100%;
      }

      ${d(`${p.lg+1}px`)} {
        transition: width 0.3s ease;
        border: 1px solid
          ${o("colors.consumption.body.standard.divider")};
        border-right: none;
        border-radius: ${n(2)};
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
        width: ${n(29)};

        &:hover {
          width: ${n(33)};
        }
      }
    `}
`;i.GalleryRecircContentWrapper=h;const f=a(g).withConfig({displayName:"GalleryRecircTitle"})`
  padding-right: ${n(2)};

  ${({isEndOfPageRecirc:e})=>e&&t`
      margin-bottom: ${n(1)};

      ${c(`${p.lg}px`)} {
        grid-column: 1/8;
        grid-row: 2;
        padding-right: 0;
        text-align: center;
      }
    `}
`;i.GalleryRecircTitle=f,f.defaultProps={as:"h3",colorToken:"colors.consumption.body.standard.subhed",typeIdentity:"typography.definitions.globalEditorial.context-primary"};const $=a(g).withConfig({displayName:"GalleryRecircViewGalleryCTA"})`
  :hover {
    text-decoration: underline;
  }
`;i.GalleryRecircViewGalleryCTA=$,$.defaultProps={as:"span",colorToken:"colors.interactive.base.brand-primary",typeIdentity:"typography.definitions.foundation.link-primary"};const w=a(u).withConfig({displayName:"GalleryRecircTextWrapper"})`
  display: grid;
  grid-column: 1/9;
  grid-row: 1/-1;
  flex-direction: column;
  align-items: start;
  gap: ${n(1)};

  ${({isEndOfPageRecirc:e})=>e&&t`
      gap: 0;
      display: flex;
      grid-column: 1/-1;
      grid-row: 3;
      justify-content: center;

      ${c(`${p.lg}px`)} {
        grid-column: 1/8;
        grid-row: 2;
        align-items: center;
      }

      ${s(m.md,`${p.lg}px`)} {
        align-items: start;
        width: 100%;
      }
    `}
`;i.GalleryRecircTextWrapper=w;const x=a(l).withConfig({displayName:"GalleryRecircImage"})`
  display: grid;
  grid-column: 9/-1;
  grid-row: 1/3;
  justify-content: flex-end;
  margin: auto;

  img {
    max-width: ${n(15.5)};
    overflow: hidden;

    ${c(`${p.lg}px`)} {
      max-width: ${n(11.25)};
    }
  }

  ${({isEndOfPageRecirc:e})=>e&&t`
      grid-column: 1/-1;
      grid-row: 2;
      justify-content: start;
      margin-bottom: ${n(2)};

      img {
        max-width: ${n(21)};
      }

      ${c(`${p.lg}px`)} {
        display: grid;
        grid-column: 8/-1;
        grid-row: 1/-1;
        justify-content: end;
        margin: auto;
        margin-left: ${n(1)};
        overflow: hidden;
        justify-items: center;

        img {
          max-width: ${n(15.5)};
        }
      }
    `}
`;i.GalleryRecircImage=x;const b=a(g).withConfig({displayName:"GalleryEndRecircHeading"})`
  grid-column: 1/-1;
  grid-row: 1;
  padding-bottom: ${n(2)};

  ${c(`${p.lg}px`)} {
    padding-bottom: ${n(1)};
  }

  ${s(m.md,`${p.lg}px`)} {
    width: 100%;
  }
`;i.GalleryEndRecircHeading=b,b.defaultProps={as:"h4",colorToken:"colors.consumption.body.standard.display-texture",typeIdentity:"typography.definitions.globalEditorial.context-secondary"};const R=a(g).withConfig({displayName:"GalleryMidRecircHeading"})`
  grid-column: 1/-1;
  grid-row: 1;
  text-align: center;

  ${c(`${p.lg}px`)} {
    padding: 0 ${n(6)};
  }
`;i.GalleryMidRecircHeading=R,R.defaultProps={as:"h4",colorToken:"colors.consumption.body.standard.display-texture",typeIdentity:"typography.definitions.globalEditorial.context-secondary"};const C=`\n  ${d(`${p.lg+1}px`)} {\n    border: none;\n\n    & > ${w} > ${b} {\n      display: none;\n    }\n  }\n`,G=t`
  ${c(`${p.lg}px`)} {
    grid-template-rows: repeat(3, auto);
    padding-right: ${n(2)};
    padding-left: ${n(2)};
    width: 100%;
    max-width: 100%;
    justify-items: center;

    & > ${b} {
      display: none;
    }

    ${({showCropViewOnMobile:e})=>!e&&"\n        grid-template-rows: repeat(3, auto);\n      "};

    ${({showCropViewOnMobile:e})=>e&&t`
        border-right: 1px solid
          ${o("colors.consumption.body.standard.divider")};
        border-bottom: none;
        border-top-right-radius: ${n(2)};
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
      `}
  }
`,v=t`
  grid-gap: 0;
  grid-template-rows: repeat(4, auto);
  padding: ${n(3)} ${n(4)};
  max-width: ${n(29)};
  height: auto;

  ${C}

  ${G}
`,S=a(u).withConfig({displayName:"GalleryRecircContent"})`
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  grid-template-rows: repeat(2, 1fr);
  grid-row-gap: ${n(1)};
  align-items: center;
  border: 1px solid ${o("colors.consumption.body.standard.divider")};
  border-radius: ${n(2)};
  cursor: pointer;
  padding: ${n(2)} ${n(3)};
  text-decoration: none;

  ${({isEndOfPageRecirc:e})=>e&&v}
`;i.GalleryRecircContent=S,S.defaultProps={as:"a"}},93788:(e,i,r)=>{const t=r(5917);i.Z=(0,t.defineMessages)({viewGalleryCTAText:{id:"GalleryRecircCards.ViewGalleryCTAText",defaultMessage:"View gallery »",description:"View gallery button text in End Of Page Recirculation."},viewNextGalleryCTAText:{id:"GalleryRecircCards.viewNextGalleryCTAText",defaultMessage:"View next gallery »",description:"View next gallery button text in End Of Page Recirculation."},keepOnLaughingText:{id:"GalleryRecircCards.keepOnLaughingText",defaultMessage:"Keep on laughing",description:"Keep on laughing text in End Of Page Recirculation."},midGalleryRecircHeading:{id:"GalleryRecircCards.midGalleryRecircHeading",defaultMessage:"Want more laughs? Try another cartoon gallery.",description:"Want more laughs? Try another cartoon gallery text for mid gallery recirc"}})},38224:(e,i,r)=>{const{asVariation:t}=r(95545),a=r(62171);a.EndOfPageRecirc=t(a,"EndOfPageRecirc",{},{isEndOfPageRecirc:!0}),e.exports=a}}]);