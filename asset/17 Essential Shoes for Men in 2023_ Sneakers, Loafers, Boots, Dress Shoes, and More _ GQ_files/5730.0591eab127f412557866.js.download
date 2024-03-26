(globalThis.webpackChunkverso=globalThis.webpackChunkverso||[]).push([[5730],{2542:(e,o,t)=>{const n=t(45697),l=t(67294),{useEffect:i,useRef:r,useState:a}=t(67294),{trackComponent:s}=t(40199),{asThemedComponent:c}=t(3517),d=t(81768),{trackSearchFilterEvent:h}=t(68612),{ToggleButton:g}=t(27e3),{componentTracking:u}=t(28601),p=({children:e,chipShouldGetUncheckedIn:o,fullPageTheme:t,isAnchorUrl:n,isChecked:c,onChange:p,redirectUrl:b,role:m,sectionTitle:f,shouldDefaultChecked:w,shouldDisplaySingleChip:y,shouldUrlRedirect:k,shouldEnableBundleComponentAnalytics:$,shouldTrackSnowplowEvent:T,totalCount:C,index:v})=>{i((()=>{s("ToggleChip")}),[]);const{current:x}=r(void 0!==c),[S,E]=a(w),L=x?c:S,[P,A]=a(L);let O={};return $&&(O=u.addDataSectionTitleAttribute($,"filterable toggle",v)),l.createElement(g,{...O,as:b?"a":"button",href:b||void 0,role:m||"switch","aria-checked":y?P:L,onClick:t=>(t=>{let l,i;if(y?A((e=>(i=!e,!e))):l=!L,x||E(l),T&&h({type:"select",label:f,subject:"filter_summary_list",platform:"verso",results_content:[{result_type:"recipe",no_of_results_returned:C}],items:[{content_title:e,content_id:null,content_type:null,content_url:null}],index:v,criteria:{filter:[{label:null,name:e}]}}),p){const e=new CustomEvent("change",{detail:{checked:i||l}});p(e)}if(o&&setTimeout((()=>E(!1)),1e3*o),n){const o=`#${e.toString().toLowerCase()}`;window.history.replaceState(void 0,void 0,o)}k||t.preventDefault()})(t),fullPageTheme:t},y&&P&&l.createElement(d,null),e)};p.propTypes={analyticsDataAttribute:n.object,children:n.node.isRequired,chipShouldGetUncheckedIn:n.number,fullPageTheme:n.oneOf(["standard","inverted"]),index:n.number,isAnchorUrl:n.bool,isChecked:n.bool,onChange:n.func,redirectUrl:n.string,role:n.string,sectionTitle:n.string,shouldDefaultChecked:n.bool,shouldDisplaySingleChip:n.bool,shouldEnableBundleComponentAnalytics:n.bool,shouldTrackSnowplowEvent:n.bool,shouldUrlRedirect:n.bool,totalCount:n.number},p.defaultProps={isAnchorUrl:!1,isChecked:void 0,onChange:()=>{},shouldDefaultChecked:!1,shouldDisplaySingleChip:!1,shouldEnableBundleComponentAnalytics:!1,shouldUrlRedirect:!0},e.exports=c(p)},67924:(e,o,t)=>{const{asConfiguredComponent:n}=t(36380),l=t(2542);e.exports=n(l,"ToggleChip")},27e3:(e,o,t)=>{const n=t(71893).default,{calculateSpacing:l,getColorStyles:i,getColorToken:r,getTypographyStyles:a}=t(79720),s=n.button.withConfig({displayName:"ToggleButton"})`
  display: inline-block;
  border-radius: ${l(3)};
  cursor: pointer;
  padding: ${l(1)} ${l(3)};
  text-decoration: none;
  white-space: nowrap;

  .icon {
    ${({theme:e})=>i(e,"color","colors.interactive.base.black")};
    fill: ${r("colors.interactive.base.white")};
    margin-left: ${l(-2)};
    width: ${l(4)};
    height: ${l(2)};
    vertical-align: middle;

    &:hover {
      fill: ${r("colors.interactive.base.black")};
    }
  }

  ${({theme:e})=>a(e,"typography.definitions.globalEditorial.tags")};

  &[aria-checked='false'] {
    /* TODO support rgba in getColorStyles  */
    transition: background-color 0.25s, color 0.25s;
    background-color: rgba(
      ${r("colors.interactive.base.black",{rgbOnly:!0})},
      0.1
    );
    ${({theme:e})=>i(e,"color","colors.interactive.base.black")};
  }

  &[aria-checked='true'] {
    transition: background-color 0.25s, color 0.25s;
    text-decoration: none;
    ${({theme:e})=>i(e,"background-color","colors.interactive.base.black")};
    ${({theme:e})=>i(e,"color","colors.interactive.base.white")};

    .icon {
      fill: ${r("colors.interactive.base.black")};
    }
  }

  &:hover,
  &:focus {
    outline: 0;
    /* TODO support this in getColorStyles  */
    box-shadow: 0 0 0 1px ${r("colors.interactive.base.black")}
      inset;
    text-decoration: none;

    .icon {
      fill: ${r("colors.interactive.base.black")};
    }
  }

  ${({fullPageTheme:e,theme:o})=>"inverted"===e?`\n\n      border: 1px solid;\n      ${i(o,"border-color","colors.discovery.body.white.border")};\n\n      &[aria-checked='false'] {\n        &:hover{\n          ${i(o,"background-color","colors.interactive.base.white")};\n          ${i(o,"color","colors.interactive.base.black")};\n        }\n        ${i(o,"background-color","colors.interactive.base.black")};\n        ${i(o,"color","colors.interactive.base.white")};\n      }\n\n      &[aria-checked='true'] {\n        ${i(o,"background-color","colors.interactive.base.white")};\n        ${i(o,"color","colors.interactive.base.black")};\n      }\n\n      &:hover,\n      &:focus {\n        box-shadow: none;\n      }\n    `:""}
`;e.exports={ToggleButton:s}},85187:(e,o,t)=>{const n=t(45697),l=t(67294),{ToggleChipListWrapper:i,LabelText:r,ListWrapper:a,ListItemWrapper:s,HelperText:c}=t(10719),{trackComponent:d}=t(40199),{asThemedComponent:h}=t(3517),g=({label:e,children:o,contentAlign:t,fullPageTheme:n,hasNoHorizontalScroll:h,isReadViewShopViewEnabled:g,hasIncreasedBottomMargin:u,hasLargeLabel:p,hasSpacing:b,hasToggleGridColor:m,helper:f,hideGradientOnMobileView:w,shouldEnableSnowPlowTracking:y,shouldReduceTopPadding:k,layout:$})=>(l.useEffect((()=>{d("ToggleChipList")}),[]),l.createElement(i,{contentAlign:t,hasToggleGridColor:m,hideGradientOnMobileView:w},e&&l.createElement(r,{fullPageTheme:n,hasIncreasedBottomMargin:u,hasLargeLabel:p},e),l.createElement(a,{contentAlign:t,layout:$,isReadViewShopViewEnabled:g,hasNoHorizontalScroll:h,hasToggleGridColor:m,shouldReduceTopPadding:k,className:"list-wrapper"},l.Children.map(o,((e,o)=>e?l.createElement(s,{contentAlign:t,key:o,layout:$,hasSpacing:b,shouldEnableSnowPlowTracking:y,className:"list-item-wrapper"},e):null))),f&&l.createElement(c,null,f)));g.propTypes={children:n.array.isRequired,contentAlign:n.oneOf(["left","center","right"]),fullPageTheme:n.oneOf(["standard","inverted"]),hasIncreasedBottomMargin:n.bool,hasLargeLabel:n.bool,hasNoHorizontalScroll:n.bool,hasSpacing:n.bool,hasToggleGridColor:n.bool,helper:n.string,hideGradientOnMobileView:n.bool,isReadViewShopViewEnabled:n.bool,label:n.string,layout:n.oneOf(["wrap","nowrap"]),shouldEnableSnowPlowTracking:n.bool,shouldReduceTopPadding:n.bool},g.defaultProps={contentAlign:"left",hasIncreasedBottomMargin:!1,hasLargeLabel:!1,hasNoHorizontalScroll:!1,hasSpacing:!1,hideGradientOnMobileView:!1,layout:"wrap",shouldReduceTopPadding:!1},e.exports=h(g)},41334:(e,o,t)=>{const{asConfiguredComponent:n}=t(36380),l=t(85187);e.exports=n(l,"ToggleChipList")},10719:(e,o,t)=>{const n=t(71893).default,{BaseText:l}=t(74327),{calculateSpacing:i,getColorStyles:r,getColorToken:a}=t(79720),{resolveMenuKey:s}=t(37332),{BREAKPOINTS:c}=t(85326),d=n.div.withConfig({displayName:"ToggleChipListWrapper"})`
  ${({hideGradientOnMobileView:e,theme:o})=>!e&&`\n    @media (max-width: ${c.md}) {\n       &::after {\n        background: linear-gradient(90deg, rgba(${a(o,s(o,"colors.discovery.body.white.background"),{rgbOnly:!0})}, 0) 0%, rgba(${a(o,s(o,"colors.discovery.body.white.background"),{rgbOnly:!0})}, 1) 75%);\n        width: ${i(7)};\n        content: '';\n        position: absolute;\n        height: 8%;\n        margin-top: ${i(1.25,"px")};\n        right: 0;\n        padding-right: ${i(1)};\n       }\n    }\n  `}
  ${({hasToggleGridColor:e,theme:o})=>e&&`\n  ${r(o,"background-color","colors.background.light")};\n  border-bottom:${i(4)} solid ;\n  ${r(o,"border-color","colors.background.light")};\n  `}
  display: flex;
  flex-direction: column;
  ${({contentAlign:e})=>"left"===e?"align-items: flex-start":"center"===e?"align-items: center":"right"===e&&"align-items: flex-end"}
`,h=n(l).withConfig({displayName:"LabelText"})`
  margin: 0 0 ${i(1)};

  ${({hasIncreasedBottomMargin:e})=>e&&` \n    margin: 0 0 ${i(2)};\n  `}

  ${({hasLargeLabel:e})=>e&&" \n    font-size: 1rem;\n    letter-spacing: 1px;\n  "}

  ${({fullPageTheme:e,theme:o})=>"inverted"===e?r(o,"color","colors.interactive.base.white"):""}
`;h.defaultProps={as:"div",colorToken:"colors.interactive.base.black",typeIdentity:"typography.definitions.utility.label"};const g=n.div.withConfig({displayName:"ListWrapper"})`
  display: flex;
  flex-direction: row;
  padding: ${i(2,"px")} ${i(3)};
  ${({shouldReduceTopPadding:e})=>e&&`padding-top: ${i(1)};`}
  width: 100%;
  gap: ${i(1.5)};

  ${({hasNoHorizontalScroll:e})=>e&&" &::-webkit-scrollbar \n    {\n      display: none;\n    }"}

  ${({layout:e})=>"wrap"===e?"flex-wrap: wrap;":"overflow-x: auto;"}
  
  ${({contentAlign:e,layout:o})=>{if("nowrap"===o)return"";switch(e){case"left":return"justify-content: flex-start;";case"center":return"justify-content: center;";case"right":return"justify-content: flex-end;";default:return""}}}
  
  ${({hasToggleGridColor:e})=>e&&`--grid-margin: ${i(3)};`}
  ${({isReadViewShopViewEnabled:e})=>e&&`\n        padding:${i(.5)};\n         gap: ${i(.5)};\n        `}
`,u=n.div.withConfig({displayName:"ListItemWrapper"})`
  ${({contentAlign:e,layout:o,hasSpacing:t})=>{if("wrap"===o)return"";let n=e;switch(t&&(n="centerWithPadding"),n){case"center":return"\n        &:first-child {\n          margin-left: auto;\n        }\n\n        &:last-child {\n          margin-right: auto;\n        }\n      ";case"right":return"\n        &:first-child {\n          margin-left: auto;\n        }\n      ";case"centerWithPadding":return`\n        @media (min-width: ${c.md}) {\n          &:first-child {\n            margin-left: auto;\n          }\n\n          &:last-child {\n            margin-right: auto;\n          }\n        }\n\n        @media (min-width: ${c.sm}) and (max-width: ${c.md}) {\n          &:first-child {\n            margin-left: 1.5rem;\n          }\n  \n          &:last-child {\n            margin-right: 1.5rem;\n          }\n        }          \n        `;default:return""}}}
`,p=n(l).withConfig({displayName:"HelperText"})`
  margin: ${i(1)} 0 0;
`;p.defaultProps={as:"div",colorToken:"colors.interactive.base.dark",typeIdentity:"typography.definitions.utility.assistive-text"},e.exports={ToggleChipListWrapper:d,LabelText:h,ListWrapper:g,ListItemWrapper:u,HelperText:p}}}]);